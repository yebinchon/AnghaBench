; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.hci_uart = type { %struct.bcsp_struct* }
%struct.bcsp_struct = type { i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Could not dequeue pkt because alloc_skb failed\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@BCSP_TXWINSIZE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@BCSP_ACK_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @bcsp_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bcsp_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.bcsp_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %10 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 0
  %12 = load %struct.bcsp_struct*, %struct.bcsp_struct** %11, align 8
  store %struct.bcsp_struct* %12, %struct.bcsp_struct** %4, align 8
  %13 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %14 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %13, i32 0, i32 4
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.TYPE_3__* @bt_cb(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct* %18, i32* %21, i32 %24, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %2, align 8
  br label %118

36:                                               ; preds = %17
  %37 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %38 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %37, i32 0, i32 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_queue_head(i32* %38, %struct.sk_buff* %39)
  %41 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %45 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %49 = call i32 @spin_lock_irqsave_nested(i32* %46, i64 %47, i32 %48)
  %50 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %51 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BCSP_TXWINSIZE, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %102

56:                                               ; preds = %43
  %57 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %58 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %57, i32 0, i32 2
  %59 = call %struct.sk_buff* @skb_dequeue(i32* %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %6, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %102

61:                                               ; preds = %56
  %62 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call %struct.TYPE_3__* @bt_cb(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct* %62, i32* %65, i32 %68, i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %8, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %61
  %77 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %78 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %77, i32 0, i32 1
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @__skb_queue_tail(%struct.TYPE_4__* %78, %struct.sk_buff* %79)
  %81 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %82 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %81, i32 0, i32 3
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i32, i32* @HZ, align 4
  %85 = sdiv i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = call i32 @mod_timer(i32* %82, i64 %87)
  %89 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %90 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %94, %struct.sk_buff** %2, align 8
  br label %118

95:                                               ; preds = %61
  %96 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %97 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %96, i32 0, i32 2
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @skb_queue_head(i32* %97, %struct.sk_buff* %98)
  %100 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %56, %43
  %103 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %104 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %109 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %114 = load i32, i32* @BCSP_ACK_PKT, align 4
  %115 = call %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct* %113, i32* null, i32 0, i32 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %9, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %2, align 8
  br label %118

117:                                              ; preds = %102
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %118

118:                                              ; preds = %117, %112, %76, %32
  %119 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %119
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
