; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_retransmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i32 }

@FLG_BUSY_TIMER = common dso_local global i32 0, align 4
@FLG_TX_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: tx_skb exist but not busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: ISAC XDU no TX_BUSY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @isac_retransmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_retransmit(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %3 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %4 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %5 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = call i64 @test_and_clear_bit(i32 %3, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %11 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = call i32 @del_timer(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @FLG_TX_BUSY, align 4
  %16 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %17 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %23 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %26 = call i32 @isac_fill_fifo(%struct.isac_hw* %25)
  br label %62

27:                                               ; preds = %14
  %28 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %29 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %35 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @FLG_TX_BUSY, align 4
  %39 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %40 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @test_and_set_bit(i32 %38, i32* %41)
  %43 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %44 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %47 = call i32 @isac_fill_fifo(%struct.isac_hw* %46)
  br label %61

48:                                               ; preds = %27
  %49 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %50 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %54 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %53, i32 0, i32 0
  %55 = call i64 @get_next_dframe(%struct.TYPE_2__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %59 = call i32 @isac_fill_fifo(%struct.isac_hw* %58)
  br label %60

60:                                               ; preds = %57, %48
  br label %61

61:                                               ; preds = %60, %33
  br label %62

62:                                               ; preds = %61, %21
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @isac_fill_fifo(%struct.isac_hw*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @get_next_dframe(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
