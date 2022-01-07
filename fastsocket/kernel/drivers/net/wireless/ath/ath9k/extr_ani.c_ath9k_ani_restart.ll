; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_ani_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_ani_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64 }

@AR_PHY_ERR_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_2 = common dso_local global i32 0, align 4
@AR_PHY_ERR_MASK_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_MASK_2 = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_ani_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_ani_restart(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar5416AniState*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call i32 @DO_ANI(%struct.ath_hw* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ar5416AniState* %12, %struct.ar5416AniState** %3, align 8
  %13 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %14 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @AR_PHY_ERR_1, align 4
  %19 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %18, i32 0)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_PHY_ERR_2, align 4
  %22 = call i32 @REG_WRITE(%struct.ath_hw* %20, i32 %21, i32 0)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_PHY_ERR_MASK_1, align 4
  %25 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @AR_PHY_ERR_MASK_2, align 4
  %29 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %30 = call i32 @REG_WRITE(%struct.ath_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = call i32 @ath9k_hw_update_mibstats(%struct.ath_hw* %33, i32* %35)
  %37 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %38 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %40 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @DO_ANI(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_update_mibstats(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
