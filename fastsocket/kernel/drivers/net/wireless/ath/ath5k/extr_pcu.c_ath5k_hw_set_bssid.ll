; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }
%struct.ath_common = type { i32, i64 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_BSS_ID0 = common dso_local global i32 0, align 4
@AR5K_BSS_ID1_AID_S = common dso_local global i32 0, align 4
@AR5K_BSS_ID1 = common dso_local global i32 0, align 4
@AR5K_BEACON = common dso_local global i32 0, align 4
@AR5K_BEACON_TIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_bssid(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %6 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AR5K_AR5212, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %14 = call i32 @ath_hw_setbssidmask(%struct.ath_common* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %17 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %18 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @get_unaligned_le32(i64 %19)
  %21 = load i32, i32* @AR5K_BSS_ID0, align 4
  %22 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %16, i32 %20, i32 %21)
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %24 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 4
  %28 = call i32 @get_unaligned_le16(i64 %27)
  %29 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %30 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 16383
  %33 = load i32, i32* @AR5K_BSS_ID1_AID_S, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %28, %34
  %36 = load i32, i32* @AR5K_BSS_ID1, align 4
  %37 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %23, i32 %35, i32 %36)
  %38 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %39 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %15
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %44 = call i32 @ath5k_hw_disable_pspoll(%struct.ath5k_hw* %43)
  br label %60

45:                                               ; preds = %15
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %47 = load i32, i32* @AR5K_BEACON, align 4
  %48 = load i32, i32* @AR5K_BEACON_TIM, align 4
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 4
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i64 [ %53, %51 ], [ 0, %54 ]
  %57 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %46, i32 %47, i32 %48, i64 %56)
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %59 = call i32 @ath5k_hw_enable_pspoll(%struct.ath5k_hw* %58, i32* null, i32 0)
  br label %60

60:                                               ; preds = %55, %42
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @ath_hw_setbssidmask(%struct.ath_common*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @ath5k_hw_disable_pspoll(%struct.ath5k_hw*) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i64) #1

declare dso_local i32 @ath5k_hw_enable_pspoll(%struct.ath5k_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
