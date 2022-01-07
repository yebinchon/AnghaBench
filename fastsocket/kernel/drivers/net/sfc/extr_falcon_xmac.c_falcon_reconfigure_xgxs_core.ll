; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_reconfigure_xgxs_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_reconfigure_xgxs_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64 }

@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@LOOPBACK_XAUI = common dso_local global i64 0, align 8
@LOOPBACK_XGMII = common dso_local global i64 0, align 8
@FR_AB_XX_CORE_STAT = common dso_local global i32 0, align 4
@FRF_AB_XX_XGXS_LB_EN = common dso_local global i32 0, align 4
@FRF_AB_XX_XGMII_LB_EN = common dso_local global i32 0, align 4
@FR_AB_XX_SD_CTL = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKA = common dso_local global i32 0, align 4
@FRF_AB_XX_FORCE_SIG = common dso_local global i32 0, align 4
@FFE_AB_XX_FORCE_SIG_ALL_LANES = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKD = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKC = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_reconfigure_xgxs_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_reconfigure_xgxs_core(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LOOPBACK_XGXS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LOOPBACK_XAUI, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LOOPBACK_XGMII, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = call i64 @EFX_WORKAROUND_5147(%struct.efx_nic* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %1
  %33 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %34 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %35 = call i32 @efx_reado(%struct.efx_nic* %33, i32* %3, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @FRF_AB_XX_XGXS_LB_EN, align 4
  %38 = call i32 @EFX_OWORD_FIELD(i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @FRF_AB_XX_XGMII_LB_EN, align 4
  %41 = call i32 @EFX_OWORD_FIELD(i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %43 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %44 = call i32 @efx_reado(%struct.efx_nic* %42, i32* %3, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @FRF_AB_XX_LPBKA, align 4
  %47 = call i32 @EFX_OWORD_FIELD(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51, %32
  %60 = phi i1 [ true, %51 ], [ true, %32 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %66 = call i32 @falcon_reset_xaui(%struct.efx_nic* %65)
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %70 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %71 = call i32 @efx_reado(%struct.efx_nic* %69, i32* %3, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @FRF_AB_XX_FORCE_SIG, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %68
  %80 = load i32, i32* @FFE_AB_XX_FORCE_SIG_ALL_LANES, align 4
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = call i32 @EFX_SET_OWORD_FIELD(i32 %72, i32 %73, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @FRF_AB_XX_XGXS_LB_EN, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @EFX_SET_OWORD_FIELD(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @FRF_AB_XX_XGMII_LB_EN, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @EFX_SET_OWORD_FIELD(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %94 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %95 = call i32 @efx_writeo(%struct.efx_nic* %93, i32* %3, i32 %94)
  %96 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %97 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %98 = call i32 @efx_reado(%struct.efx_nic* %96, i32* %3, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @FRF_AB_XX_LPBKD, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @EFX_SET_OWORD_FIELD(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @FRF_AB_XX_LPBKC, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @EFX_SET_OWORD_FIELD(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @FRF_AB_XX_LPBKB, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @EFX_SET_OWORD_FIELD(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @FRF_AB_XX_LPBKA, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @EFX_SET_OWORD_FIELD(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %116 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %117 = call i32 @efx_writeo(%struct.efx_nic* %115, i32* %3, i32 %116)
  ret void
}

declare dso_local i64 @EFX_WORKAROUND_5147(%struct.efx_nic*) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @falcon_reset_xaui(%struct.efx_nic*) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
