; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_ctl_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_ctl_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, %struct.sk_buff*, %struct.wimax_dev }
%struct.sk_buff = type { i32 }
%struct.wimax_dev = type { i32 }
%struct.device = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Huh? reply to command with no waiters\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Huh? waiter for command reply cancelled\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"CMD/GET/SET ack: cannot allocate SKB\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, i8*, i64)* @i2400m_rx_ctl_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_rx_ctl_ack(%struct.i2400m* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.wimax_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %12 = call %struct.device* @i2400m_dev(%struct.i2400m* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 3
  store %struct.wimax_dev* %14, %struct.wimax_dev** %8, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %16 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %20 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %19, i32 0, i32 2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %22 = load i32, i32* @EINPROGRESS, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sk_buff* @ERR_PTR(i32 %23)
  %25 = icmp ne %struct.sk_buff* %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %79

29:                                               ; preds = %3
  %30 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %31 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %30, i32 0, i32 0
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.wimax_dev*, %struct.wimax_dev** %8, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.sk_buff* @wimax_msg_alloc(%struct.wimax_dev* %34, i32* null, i8* %35, i64 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %10, align 8
  %39 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %40 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %44 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %43, i32 0, i32 2
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  %46 = load i32, i32* @EINPROGRESS, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.sk_buff* @ERR_PTR(i32 %47)
  %49 = icmp ne %struct.sk_buff* %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = call i32 @d_printf(i32 1, %struct.device* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %76

53:                                               ; preds = %29
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = icmp eq %struct.sk_buff* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.sk_buff* @ERR_PTR(i32 %60)
  %62 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %63 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %62, i32 0, i32 2
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %67 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %66, i32 0, i32 2
  store %struct.sk_buff* %65, %struct.sk_buff** %67, align 8
  br label %68

68:                                               ; preds = %64, %56
  %69 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %70 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %69, i32 0, i32 0
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %74 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %73, i32 0, i32 1
  %75 = call i32 @complete(i32* %74)
  br label %84

76:                                               ; preds = %50
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %76, %26
  %80 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %81 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %80, i32 0, i32 0
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %68
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sk_buff* @wimax_msg_alloc(%struct.wimax_dev*, i32*, i8*, i64, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
