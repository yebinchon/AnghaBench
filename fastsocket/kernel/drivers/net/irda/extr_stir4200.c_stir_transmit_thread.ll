; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_transmit_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_transmit_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stir_cb = type { i32, i64, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"%s: receive usb submit failed\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@CTRL1_RXPWD = common dso_local global i32 0, align 4
@CTRL1_TXPWD = common dso_local global i32 0, align 4
@REG_CTRL1 = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @stir_transmit_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stir_transmit_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stir_cb*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.stir_cb*
  store %struct.stir_cb* %8, %struct.stir_cb** %3, align 8
  %9 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %10 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  br label %12

12:                                               ; preds = %94, %89, %57, %1
  %13 = call i32 (...) @kthread_should_stop()
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %98

16:                                               ; preds = %12
  %17 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %18 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %17, i32 0, i32 3
  %19 = call %struct.sk_buff* @xchg(i32* %18, i32* null)
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @irda_get_next_speed(%struct.sk_buff* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_wake_queue(%struct.net_device* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @stir_send(%struct.stir_cb* %32, %struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @dev_kfree_skb(%struct.sk_buff* %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %42 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %48 = call i64 @fifo_txwait(%struct.stir_cb* %47, i32 -1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @change_speed(%struct.stir_cb* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %46
  br label %98

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %40, %35
  br label %12

58:                                               ; preds = %16
  %59 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %60 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i64 @irda_device_txqueue_empty(%struct.net_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %69 = call i64 @fifo_txwait(%struct.stir_cb* %68, i32 -1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %98

72:                                               ; preds = %67
  %73 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %74 = call i32 @receive_start(%struct.stir_cb* %73)
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = call i64 (...) @net_ratelimit()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %84 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %83, i32 0, i32 2
  %85 = load %struct.net_device*, %struct.net_device** %84, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %80, %77
  %90 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %91 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = call i32 @msleep(i32 10)
  br label %12

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93, %63, %58
  %95 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %96 = call i32 @set_current_state(i32 %95)
  %97 = call i32 (...) @schedule()
  br label %12

98:                                               ; preds = %71, %55, %12
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local %struct.sk_buff* @xchg(i32*, i32*) #1

declare dso_local i32 @irda_get_next_speed(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @stir_send(%struct.stir_cb*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @fifo_txwait(%struct.stir_cb*, i32) #1

declare dso_local i64 @change_speed(%struct.stir_cb*, i32) #1

declare dso_local i64 @irda_device_txqueue_empty(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @receive_start(%struct.stir_cb*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
