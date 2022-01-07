; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_getparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_getparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"pid=%d\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@R600_SCRATCH_REG_OFFSET = common dso_local global i32 0, align 4
@RADEON_SCRATCH_REG_OFFSET = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_CARD_PCIE = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_CARD_AGP = common dso_local global i32 0, align 4
@RADEON_CARD_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid parameter %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"copy_to_user\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @radeon_cp_getparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cp_getparam(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load i32, i32* @DRM_CURRENTPID, align 4
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %132 [
    i32 140, label %21
    i32 135, label %25
    i32 136, label %33
    i32 137, label %36
    i32 138, label %44
    i32 141, label %57
    i32 132, label %61
    i32 129, label %67
    i32 139, label %71
    i32 130, label %75
    i32 143, label %96
    i32 128, label %118
    i32 142, label %121
    i32 134, label %124
    i32 133, label %128
  ]

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  br label %139

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = call i32 @GET_SCRATCH(%struct.TYPE_9__* %31, i32 0)
  store i32 %32, i32* %10, align 4
  br label %139

33:                                               ; preds = %3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = call i32 @GET_SCRATCH(%struct.TYPE_9__* %34, i32 1)
  store i32 %35, i32* %10, align 4
  br label %139

36:                                               ; preds = %3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = call i32 @GET_SCRATCH(%struct.TYPE_9__* %42, i32 2)
  store i32 %43, i32* %10, align 4
  br label %139

44:                                               ; preds = %3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @CHIP_R600, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = call i32 @drm_dev_to_irq(%struct.drm_device* %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %52
  br label %139

57:                                               ; preds = %3
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  br label %139

61:                                               ; preds = %3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %139

67:                                               ; preds = %3
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  br label %139

71:                                               ; preds = %3
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %10, align 4
  br label %139

75:                                               ; preds = %3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %150

83:                                               ; preds = %75
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @CHIP_R600, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @R600_SCRATCH_REG_OFFSET, align 4
  store i32 %92, i32* %10, align 4
  br label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @RADEON_SCRATCH_REG_OFFSET, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %91
  br label %139

96:                                               ; preds = %3
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RADEON_IS_PCIE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @RADEON_CARD_PCIE, align 4
  store i32 %104, i32* %10, align 4
  br label %117

105:                                              ; preds = %96
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RADEON_IS_AGP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @RADEON_CARD_AGP, align 4
  store i32 %113, i32* %10, align 4
  br label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @RADEON_CARD_PCI, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %114, %112
  br label %117

117:                                              ; preds = %116, %103
  br label %139

118:                                              ; preds = %3
  %119 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %120 = call i32 @radeon_vblank_crtc_get(%struct.drm_device* %119)
  store i32 %120, i32* %10, align 4
  br label %139

121:                                              ; preds = %3
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = call i32 @radeon_read_fb_location(%struct.TYPE_9__* %122)
  store i32 %123, i32* %10, align 4
  br label %139

124:                                              ; preds = %3
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  br label %139

128:                                              ; preds = %3
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %10, align 4
  br label %139

132:                                              ; preds = %3
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %150

139:                                              ; preds = %128, %124, %121, %118, %117, %95, %71, %67, %61, %57, %56, %36, %33, %25, %21
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @DRM_COPY_TO_USER(i32 %142, i32* %10, i32 4)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @EFAULT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %150

149:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %145, %132, %80
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @GET_SCRATCH(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @drm_dev_to_irq(%struct.drm_device*) #1

declare dso_local i32 @radeon_vblank_crtc_get(%struct.drm_device*) #1

declare dso_local i32 @radeon_read_fb_location(%struct.TYPE_9__*) #1

declare dso_local i64 @DRM_COPY_TO_USER(i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
