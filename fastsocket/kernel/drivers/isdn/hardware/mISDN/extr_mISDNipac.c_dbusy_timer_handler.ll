; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_dbusy_timer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_dbusy_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@FLG_BUSY_TIMER = common dso_local global i32 0, align 4
@ISAC_RBCH = common dso_local global i32 0, align 4
@ISAC_STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: D-Channel Busy RBCH %02x STAR %02x\0A\00", align 1
@ISAC_RBCH_XAC = common dso_local global i32 0, align 4
@FLG_L1_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: ISAC D-Channel Busy no tx_idx\0A\00", align 1
@ISAC_CMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @dbusy_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbusy_timer_handler(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %6 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %7 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %8 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %6, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %1
  %13 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %14 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @spin_lock_irqsave(i32 %15, i32 %16)
  %18 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %19 = load i32, i32* @ISAC_RBCH, align 4
  %20 = call i32 @ReadISAC(%struct.isac_hw* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %22 = load i32, i32* @ISAC_STAR, align 4
  %23 = call i32 @ReadISAC(%struct.isac_hw* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %25 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ISAC_RBCH_XAC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %12
  %35 = load i32, i32* @FLG_L1_BUSY, align 4
  %36 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %37 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @test_and_set_bit(i32 %35, i32* %38)
  br label %64

40:                                               ; preds = %12
  %41 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %42 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %43 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @test_and_clear_bit(i32 %41, i32* %44)
  %46 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %47 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %53 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %60

55:                                               ; preds = %40
  %56 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %57 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %62 = load i32, i32* @ISAC_CMDR, align 4
  %63 = call i32 @WriteISAC(%struct.isac_hw* %61, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %60, %34
  %65 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %66 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @spin_unlock_irqrestore(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i32) #1

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
