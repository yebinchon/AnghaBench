; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reset_macs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reset_macs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i64 }

@EFX_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FRF_AB_XM_CORE_RST = common dso_local global i32 0, align 4
@FR_AB_XM_GLB_CFG = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"timed out waiting for XMAC core reset\0A\00", align 1
@FR_AB_MAC_CTRL = common dso_local global i32 0, align 4
@FRF_BB_TXFIFO_DRAIN_EN = common dso_local global i32 0, align 4
@FR_AB_GLB_CTL = common dso_local global i32 0, align 4
@FRF_AB_RST_XGTX = common dso_local global i32 0, align 4
@FRF_AB_RST_XGRX = common dso_local global i32 0, align 4
@FRF_AB_RST_EM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Completed MAC reset after %d loops\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MAC reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_reset_macs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_reset_macs(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %8, align 8
  store %struct.falcon_nic_data* %9, %struct.falcon_nic_data** %3, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %11 = call i64 @efx_nic_rev(%struct.efx_nic* %10)
  %12 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FRF_AB_XM_CORE_RST, align 4
  %17 = call i32 @EFX_POPULATE_OWORD_1(i32 %15, i32 %16, i32 1)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = load i32, i32* @FR_AB_XM_GLB_CFG, align 4
  %20 = call i32 @efx_writeo(%struct.efx_nic* %18, i32* %4, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %35, %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 10000
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = load i32, i32* @FR_AB_XM_GLB_CFG, align 4
  %27 = call i32 @efx_reado(%struct.efx_nic* %25, i32* %4, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FRF_AB_XM_CORE_RST, align 4
  %30 = call i64 @EFX_OWORD_FIELD(i32 %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %122

33:                                               ; preds = %24
  %34 = call i32 @udelay(i32 10)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %40 = load i32, i32* @hw, align 4
  %41 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netif_err(%struct.efx_nic* %39, i32 %40, i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %38, %1
  %46 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %47 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %53 = load i32, i32* @FR_AB_MAC_CTRL, align 4
  %54 = call i32 @efx_reado(%struct.efx_nic* %52, i32* %5, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @FRF_BB_TXFIFO_DRAIN_EN, align 4
  %57 = call i32 @EFX_SET_OWORD_FIELD(i32 %55, i32 %56, i32 1)
  %58 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %59 = load i32, i32* @FR_AB_MAC_CTRL, align 4
  %60 = call i32 @efx_writeo(%struct.efx_nic* %58, i32* %5, i32 %59)
  %61 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %62 = load i32, i32* @FR_AB_GLB_CTL, align 4
  %63 = call i32 @efx_reado(%struct.efx_nic* %61, i32* %4, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @FRF_AB_RST_XGTX, align 4
  %66 = call i32 @EFX_SET_OWORD_FIELD(i32 %64, i32 %65, i32 1)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @FRF_AB_RST_XGRX, align 4
  %69 = call i32 @EFX_SET_OWORD_FIELD(i32 %67, i32 %68, i32 1)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @FRF_AB_RST_EM, align 4
  %72 = call i32 @EFX_SET_OWORD_FIELD(i32 %70, i32 %71, i32 1)
  %73 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %74 = load i32, i32* @FR_AB_GLB_CTL, align 4
  %75 = call i32 @efx_writeo(%struct.efx_nic* %73, i32* %4, i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %45, %112
  %77 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %78 = load i32, i32* @FR_AB_GLB_CTL, align 4
  %79 = call i32 @efx_reado(%struct.efx_nic* %77, i32* %4, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @FRF_AB_RST_XGTX, align 4
  %82 = call i64 @EFX_OWORD_FIELD(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @FRF_AB_RST_XGRX, align 4
  %87 = call i64 @EFX_OWORD_FIELD(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @FRF_AB_RST_EM, align 4
  %92 = call i64 @EFX_OWORD_FIELD(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %96 = load i32, i32* @hw, align 4
  %97 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %98 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @netif_dbg(%struct.efx_nic* %95, i32 %96, i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %116

102:                                              ; preds = %89, %84, %76
  %103 = load i32, i32* %6, align 4
  %104 = icmp sgt i32 %103, 20
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %107 = load i32, i32* @hw, align 4
  %108 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %109 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @netif_err(%struct.efx_nic* %106, i32 %107, i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %116

112:                                              ; preds = %102
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  %115 = call i32 @udelay(i32 10)
  br label %76

116:                                              ; preds = %105, %94
  %117 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %118 = load i32, i32* @FR_AB_MAC_CTRL, align 4
  %119 = call i32 @efx_writeo(%struct.efx_nic* %117, i32* %5, i32 %118)
  %120 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %121 = call i32 @falcon_setup_xaui(%struct.efx_nic* %120)
  br label %122

122:                                              ; preds = %116, %32
  ret void
}

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @EFX_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @falcon_setup_xaui(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
