; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_call_lvds_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_call_lvds_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios, i32 }
%struct.nvbios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i64 }
%struct.nouveau_device = type { i32 }

@LVDS_INIT = common dso_local global i32 0, align 4
@LVDS_PANEL_ON = common dso_local global i32 0, align 4
@LVDS_RESET = common dso_local global i32 0, align 4
@LVDS_PANEL_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Calling LVDS script %d:\0A\00", align 1
@NV_PRAMDAC_SEL_CLK = common dso_local global i32 0, align 4
@NV_PBUS_POWERCTRL_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_lvds_script(%struct.drm_device* %0, %struct.dcb_output* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.dcb_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_drm*, align 8
  %13 = alloca %struct.nouveau_device*, align 8
  %14 = alloca %struct.nvbios*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %12, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.nouveau_device* @nv_device(i32 %23)
  store %struct.nouveau_device* %24, %struct.nouveau_device** %13, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  store %struct.nvbios* %26, %struct.nvbios** %14, align 8
  %27 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %28 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %31 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %37 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 1
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %5
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @LVDS_INIT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %45, %5
  store i32 0, i32* %6, align 4
  br label %151

56:                                               ; preds = %51, %48
  %57 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %58 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %64 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  %66 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %67 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @LVDS_INIT, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @call_lvds_script(%struct.drm_device* %66, %struct.dcb_output* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %56
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @LVDS_PANEL_ON, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %78 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %84 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @LVDS_RESET, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @call_lvds_script(%struct.drm_device* %83, %struct.dcb_output* %84, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %76, %72
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @LVDS_RESET, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %95 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %101 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @LVDS_PANEL_OFF, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @call_lvds_script(%struct.drm_device* %100, %struct.dcb_output* %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %93, %89
  %107 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @NV_INFO(%struct.nouveau_drm* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load %struct.nouveau_device*, %struct.nouveau_device** %13, align 8
  %111 = load i32, i32* @NV_PRAMDAC_SEL_CLK, align 4
  %112 = call i32 @nv_rd32(%struct.nouveau_device* %110, i32 %111)
  %113 = and i32 %112, 327680
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %114, 48
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %118 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @call_lvds_manufacturer_script(%struct.drm_device* %117, %struct.dcb_output* %118, i32 %119, i32 %120)
  store i32 %121, i32* %18, align 4
  br label %129

122:                                              ; preds = %106
  %123 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %124 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @run_lvds_table(%struct.drm_device* %123, %struct.dcb_output* %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %122, %116
  %130 = load i32, i32* %10, align 4
  %131 = shl i32 %130, 1
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.nvbios*, %struct.nvbios** %14, align 8
  %135 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %138 = load i32, i32* @NV_PRAMDAC_SEL_CLK, align 4
  %139 = call i32 @NVReadRAMDAC(%struct.drm_device* %137, i32 0, i32 %138)
  %140 = and i32 %139, -327681
  store i32 %140, i32* %17, align 4
  %141 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %142 = load i32, i32* @NV_PRAMDAC_SEL_CLK, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %16, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @NVWriteRAMDAC(%struct.drm_device* %141, i32 0, i32 %142, i32 %145)
  %147 = load %struct.nouveau_device*, %struct.nouveau_device** %13, align 8
  %148 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %149 = call i32 @nv_wr32(%struct.nouveau_device* %147, i32 %148, i32 0)
  %150 = load i32, i32* %18, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %129, %55
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @call_lvds_manufacturer_script(%struct.drm_device*, %struct.dcb_output*, i32, i32) #1

declare dso_local i32 @run_lvds_table(%struct.drm_device*, %struct.dcb_output*, i32, i32, i32) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
