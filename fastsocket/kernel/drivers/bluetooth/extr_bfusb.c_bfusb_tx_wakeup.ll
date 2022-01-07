; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_tx_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_tx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"bfusb %p\00", align 1
@BFUSB_TX_PROCESS = common dso_local global i32 0, align 4
@BFUSB_TX_WAKEUP = common dso_local global i32 0, align 4
@BFUSB_MAX_BULK_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfusb_data*)* @bfusb_tx_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfusb_tx_wakeup(%struct.bfusb_data* %0) #0 {
  %2 = alloca %struct.bfusb_data*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.bfusb_data* %0, %struct.bfusb_data** %2, align 8
  %4 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %4)
  %6 = load i32, i32* @BFUSB_TX_PROCESS, align 4
  %7 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %8 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %7, i32 0, i32 0
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @BFUSB_TX_WAKEUP, align 4
  %13 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %14 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  br label %58

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* @BFUSB_TX_WAKEUP, align 4
  %19 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %20 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %45, %17
  %23 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %24 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %23, i32 0, i32 2
  %25 = call i64 @atomic_read(i32* %24)
  %26 = load i64, i64* @BFUSB_MAX_BULK_TX, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %30 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %29, i32 0, i32 1
  %31 = call %struct.sk_buff* @skb_dequeue(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %3, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ false, %22 ], [ %32, %28 ]
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i64 @bfusb_send_bulk(%struct.bfusb_data* %36, %struct.sk_buff* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %42 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %41, i32 0, i32 1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i32 @skb_queue_head(i32* %42, %struct.sk_buff* %43)
  br label %46

45:                                               ; preds = %35
  br label %22

46:                                               ; preds = %40, %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @BFUSB_TX_WAKEUP, align 4
  %49 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %50 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %49, i32 0, i32 0
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %17, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @BFUSB_TX_PROCESS, align 4
  %55 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %56 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @bfusb_send_bulk(%struct.bfusb_data*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
