; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_set_noise_immunity_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_set_noise_immunity_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ath5k_ani_set_noise_immunity_level.lo = internal constant [2 x i32] [i32 -64, i32 -70], align 4
@ath5k_ani_set_noise_immunity_level.hi = internal constant [2 x i32] [i32 -14, i32 -12], align 4
@ath5k_ani_set_noise_immunity_level.sz = internal constant [2 x i32] [i32 -55, i32 -62], align 4
@ath5k_ani_set_noise_immunity_level.fr = internal constant [2 x i32] [i32 -78, i32 -80], align 4
@.str = private unnamed_addr constant [37 x i8] c"noise immunity level %d out of range\00", align 1
@AR5K_PHY_DESIRED_SIZE = common dso_local global i32 0, align 4
@AR5K_PHY_DESIRED_SIZE_TOT = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCOARSE = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCOARSE_LO = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCOARSE_HI = common dso_local global i32 0, align 4
@AR5K_PHY_SIG = common dso_local global i32 0, align 4
@AR5K_PHY_SIG_FIRPWR = common dso_local global i32 0, align 4
@ATH5K_DEBUG_ANI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"new level %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ath5k_ani_set_noise_immunity_level.sz, i64 0, i64 0))
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %2
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %56

15:                                               ; preds = %7
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = load i32, i32* @AR5K_PHY_DESIRED_SIZE, align 4
  %18 = load i32, i32* @AR5K_PHY_DESIRED_SIZE_TOT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_noise_immunity_level.sz, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %16, i32 %17, i32 %18, i32 %22)
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %25 = load i32, i32* @AR5K_PHY_AGCCOARSE, align 4
  %26 = load i32, i32* @AR5K_PHY_AGCCOARSE_LO, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_noise_immunity_level.lo, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %24, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %33 = load i32, i32* @AR5K_PHY_AGCCOARSE, align 4
  %34 = load i32, i32* @AR5K_PHY_AGCCOARSE_HI, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_noise_immunity_level.hi, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %32, i32 %33, i32 %34, i32 %38)
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %41 = load i32, i32* @AR5K_PHY_SIG, align 4
  %42 = load i32, i32* @AR5K_PHY_SIG_FIRPWR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_noise_immunity_level.fr, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %40, i32 %41, i32 %42, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %53 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %52, i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
