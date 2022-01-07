; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_set_nf_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_set_nf_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@AR_PHY_CCA_MAX_GOOD_VAL_9285_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MIN_GOOD_VAL_9285_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_NOM_VAL_9285_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MAX_GOOD_VAL_9287_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MIN_GOOD_VAL_9287_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_NOM_VAL_9287_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MAX_GOOD_VAL_9271_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MIN_GOOD_VAL_9271_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_NOM_VAL_9271_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MAX_GOOD_VAL_9280_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MIN_GOOD_VAL_9280_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_NOM_VAL_9280_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MAX_GOOD_VAL_9280_5GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MIN_GOOD_VAL_9280_5GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_NOM_VAL_9280_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9002_hw_set_nf_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_set_nf_limits(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9285(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_9285_2GHZ, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @AR_PHY_CCA_MIN_GOOD_VAL_9285_2GHZ, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @AR_PHY_CCA_NOM_VAL_9285_2GHZ, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  br label %80

19:                                               ; preds = %1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = call i64 @AR_SREV_9287(%struct.ath_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_9287_2GHZ, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @AR_PHY_CCA_MIN_GOOD_VAL_9287_2GHZ, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @AR_PHY_CCA_NOM_VAL_9287_2GHZ, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  br label %79

36:                                               ; preds = %19
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = call i64 @AR_SREV_9271(%struct.ath_hw* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_9271_2GHZ, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @AR_PHY_CCA_MIN_GOOD_VAL_9271_2GHZ, align 4
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @AR_PHY_CCA_NOM_VAL_9271_2GHZ, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %78

53:                                               ; preds = %36
  %54 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_9280_2GHZ, align 4
  %55 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %56 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @AR_PHY_CCA_MIN_GOOD_VAL_9280_2GHZ, align 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @AR_PHY_CCA_NOM_VAL_9280_2GHZ, align 4
  %63 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_9280_5GHZ, align 4
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @AR_PHY_CCA_MIN_GOOD_VAL_9280_5GHZ, align 4
  %71 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @AR_PHY_CCA_NOM_VAL_9280_5GHZ, align 4
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %53, %40
  br label %79

79:                                               ; preds = %78, %23
  br label %80

80:                                               ; preds = %79, %6
  ret void
}

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
