; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_set_firstep_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_set_firstep_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ath5k_ani_set_firstep_level.val = internal constant [3 x i32] [i32 0, i32 4, i32 8], align 4
@.str = private unnamed_addr constant [30 x i8] c"firstep level %d out of range\00", align 1
@AR5K_PHY_SIG = common dso_local global i32 0, align 4
@AR5K_PHY_SIG_FIRSTEP = common dso_local global i32 0, align 4
@ATH5K_DEBUG_ANI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"new level %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ath5k_ani_set_firstep_level.val, i64 0, i64 0))
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %2
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %32

15:                                               ; preds = %7
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = load i32, i32* @AR5K_PHY_SIG, align 4
  %18 = load i32, i32* @AR5K_PHY_SIG_FIRSTEP, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* @ath5k_ani_set_firstep_level.val, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %16, i32 %17, i32 %18, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %29 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %28, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %15, %11
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
