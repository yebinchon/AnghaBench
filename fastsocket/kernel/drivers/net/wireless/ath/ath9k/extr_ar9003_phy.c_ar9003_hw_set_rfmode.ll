; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_rfmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_rfmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
@AR_PHY_MODE_OFDM = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYN_CCK_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_MODE_QUARTER = common dso_local global i32 0, align 4
@AR_PHY_MODE_HALF = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL_CF_OVERLAP_WINDOW = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_set_rfmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_set_rfmode(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %7 = icmp eq %struct.ath9k_channel* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %11 = call i64 @IS_CHAN_B(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %15 = call i64 @IS_CHAN_G(%struct.ath9k_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @AR_PHY_MODE_OFDM, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %27 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %25, %struct.ath9k_channel* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %31 = load i32, i32* @AR_PHY_MODE_DYN_CCK_DISABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %37 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @AR_PHY_MODE_QUARTER, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %45 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @AR_PHY_MODE_HALF, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @AR_PHY_MODE_QUARTER, align 4
  %54 = load i32, i32* @AR_PHY_MODE_HALF, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %60 = load i32, i32* @AR_PHY_FRAME_CTL, align 4
  %61 = load i32, i32* @AR_PHY_FRAME_CTL_CF_OVERLAP_WINDOW, align 4
  %62 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %59, i32 %60, i32 %61, i32 3)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %65 = load i32, i32* @AR_PHY_MODE, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @REG_WRITE(%struct.ath_hw* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %8
  ret void
}

declare dso_local i64 @IS_CHAN_B(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_G(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
