; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_irq_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32*, i32, i64* }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RADEON_SW_INT_TEST = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@RADEON_CRTC_VBLANK_STAT = common dso_local global i32 0, align 4
@RADEON_CRTC2_VBLANK_STAT = common dso_local global i32 0, align 4
@RADEON_FP_DETECT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"HPD1\0A\00", align 1
@RADEON_FP2_DETECT_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"HPD2\0A\00", align 1
@RADEON_AIC_CNTL = common dso_local global i32 0, align 4
@RS400_MSI_REARM = common dso_local global i32 0, align 4
@RADEON_MSI_REARM_EN = common dso_local global i32 0, align 4
@RV370_MSI_REARM_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_irq_process(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @r100_irq_ack(%struct.radeon_device* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %2, align 4
  br label %161

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %2, align 4
  br label %161

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %121, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %124

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @RADEON_SW_INT_TEST, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %32 = call i32 @radeon_fence_process(%struct.radeon_device* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RADEON_CRTC_VBLANK_STAT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @drm_handle_vblank(i32 %49, i32 0)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = call i32 @wake_up(i32* %56)
  br label %58

58:                                               ; preds = %46, %38
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i64 @atomic_read(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %33
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @RADEON_CRTC2_VBLANK_STAT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @drm_handle_vblank(i32 %86, i32 1)
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = call i32 @wake_up(i32* %93)
  br label %95

95:                                               ; preds = %83, %75
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = call i64 @atomic_read(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %104, i32 1)
  br label %106

106:                                              ; preds = %103, %95
  br label %107

107:                                              ; preds = %106, %70
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @RADEON_FP_DETECT_STAT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  store i32 1, i32* %6, align 4
  %113 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @RADEON_FP2_DETECT_STAT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  store i32 1, i32* %6, align 4
  %120 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = call i32 @r100_irq_ack(%struct.radeon_device* %122)
  store i32 %123, i32* %4, align 4
  br label %21

124:                                              ; preds = %21
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 2
  %130 = call i32 @schedule_work(i32* %129)
  br label %131

131:                                              ; preds = %127, %124
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %131
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %154 [
    i32 129, label %140
    i32 128, label %140
  ]

140:                                              ; preds = %136, %136
  %141 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %142 = call i32 @RREG32(i32 %141)
  %143 = load i32, i32* @RS400_MSI_REARM, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @WREG32(i32 %146, i32 %147)
  %149 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @RS400_MSI_REARM, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @WREG32(i32 %149, i32 %152)
  br label %158

154:                                              ; preds = %136
  %155 = load i32, i32* @RADEON_MSI_REARM_EN, align 4
  %156 = load i32, i32* @RV370_MSI_REARM_EN, align 4
  %157 = call i32 @WREG32(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %140
  br label %159

159:                                              ; preds = %158, %131
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %18, %11
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @r100_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_process(%struct.radeon_device*, i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
