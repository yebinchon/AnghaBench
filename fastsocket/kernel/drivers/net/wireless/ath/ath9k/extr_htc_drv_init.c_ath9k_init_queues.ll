; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32*, i32, i32, i32 }
%struct.ath_common = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Unable to setup BEACON xmit queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to setup CAB xmit queue\0A\00", align 1
@IEEE80211_AC_BE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for BE traffic\0A\00", align 1
@IEEE80211_AC_BK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for BK traffic\0A\00", align 1
@IEEE80211_AC_VI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for VI traffic\0A\00", align 1
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for VO traffic\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*)* @ath9k_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_queues(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  %6 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(i32 %8)
  store %struct.ath_common* %9, %struct.ath_common** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 -1, i32* %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath9k_hw_beaconq_setup(i32 %30)
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %40 = call i32 @ath_err(%struct.ath_common* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %86

41:                                               ; preds = %27
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %43 = call i32 @ath9k_htc_cabq_setup(%struct.ath9k_htc_priv* %42)
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %52 = call i32 @ath_err(%struct.ath_common* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %86

53:                                               ; preds = %41
  %54 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %55 = load i32, i32* @IEEE80211_AC_BE, align 4
  %56 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %60 = call i32 @ath_err(%struct.ath_common* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %86

61:                                               ; preds = %53
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %63 = load i32, i32* @IEEE80211_AC_BK, align 4
  %64 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %68 = call i32 @ath_err(%struct.ath_common* %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %86

69:                                               ; preds = %61
  %70 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %71 = load i32, i32* @IEEE80211_AC_VI, align 4
  %72 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %76 = call i32 @ath_err(%struct.ath_common* %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %86

77:                                               ; preds = %69
  %78 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %79 = load i32, i32* @IEEE80211_AC_VO, align 4
  %80 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %84 = call i32 @ath_err(%struct.ath_common* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %86

85:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %89

86:                                               ; preds = %82, %74, %66, %58, %50, %38
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ath9k_hw_beaconq_setup(i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_htc_cabq_setup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
