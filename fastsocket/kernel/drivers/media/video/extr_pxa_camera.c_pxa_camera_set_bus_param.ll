; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_set_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_set_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.pxa_cam*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*, i64)* }
%struct.TYPE_5__ = type { i32 }
%struct.pxa_cam = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.soc_camera_host = type { %struct.pxa_camera_dev* }
%struct.pxa_camera_dev = type { i32, i32 }
%struct.soc_mbus_pixelfmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@PXA_CAMERA_HSP = common dso_local global i32 0, align 4
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@PXA_CAMERA_VSP = common dso_local global i32 0, align 4
@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@PXA_CAMERA_PCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32)* @pxa_camera_set_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_set_bus_param(%struct.soc_camera_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.pxa_camera_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.soc_mbus_pixelfmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pxa_cam*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %17)
  store %struct.soc_camera_host* %18, %struct.soc_camera_host** %6, align 8
  %19 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %20 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %19, i32 0, i32 0
  %21 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %20, align 8
  store %struct.pxa_camera_dev* %21, %struct.pxa_camera_dev** %7, align 8
  %22 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %23 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %22, i32 0, i32 2
  %24 = load %struct.pxa_cam*, %struct.pxa_cam** %23, align 8
  store %struct.pxa_cam* %24, %struct.pxa_cam** %13, align 8
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.soc_mbus_pixelfmt* @soc_mbus_get_fmtdesc(i32 %29)
  store %struct.soc_mbus_pixelfmt* %30, %struct.soc_mbus_pixelfmt** %11, align 8
  %31 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %11, align 8
  %32 = icmp ne %struct.soc_mbus_pixelfmt* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %169

36:                                               ; preds = %2
  %37 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %38 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %11, align 8
  %39 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @test_platform_param(%struct.pxa_camera_dev* %37, i32 %40, i64* %8)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %3, align 4
  br label %169

46:                                               ; preds = %36
  %47 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %48 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64 (%struct.soc_camera_device*)*, i64 (%struct.soc_camera_device*)** %50, align 8
  %52 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %53 = call i64 %51(%struct.soc_camera_device* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @soc_camera_bus_param_compatible(i64 %54, i64 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %169

62:                                               ; preds = %46
  %63 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %64 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %62
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %76 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PXA_CAMERA_HSP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %83 = xor i64 %82, -1
  %84 = load i64, i64* %10, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %10, align 8
  br label %91

86:                                               ; preds = %74
  %87 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %88 = xor i64 %87, -1
  %89 = load i64, i64* %10, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %69, %62
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %104 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PXA_CAMERA_VSP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %111 = xor i64 %110, -1
  %112 = load i64, i64* %10, align 8
  %113 = and i64 %112, %111
  store i64 %113, i64* %10, align 8
  br label %119

114:                                              ; preds = %102
  %115 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %116 = xor i64 %115, -1
  %117 = load i64, i64* %10, align 8
  %118 = and i64 %117, %116
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %97, %92
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %120
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %125
  %131 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %132 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @PXA_CAMERA_PCP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %139 = xor i64 %138, -1
  %140 = load i64, i64* %10, align 8
  %141 = and i64 %140, %139
  store i64 %141, i64* %10, align 8
  br label %147

142:                                              ; preds = %130
  %143 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %144 = xor i64 %143, -1
  %145 = load i64, i64* %10, align 8
  %146 = and i64 %145, %144
  store i64 %146, i64* %10, align 8
  br label %147

147:                                              ; preds = %142, %137
  br label %148

148:                                              ; preds = %147, %125, %120
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.pxa_cam*, %struct.pxa_cam** %13, align 8
  %151 = getelementptr inbounds %struct.pxa_cam, %struct.pxa_cam* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %153 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32 (%struct.soc_camera_device*, i64)*, i32 (%struct.soc_camera_device*, i64)** %155, align 8
  %157 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %158 = load i64, i64* %10, align 8
  %159 = call i32 %156(%struct.soc_camera_device* %157, i64 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %148
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %3, align 4
  br label %169

164:                                              ; preds = %148
  %165 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @pxa_camera_setup_cicr(%struct.soc_camera_device* %165, i64 %166, i32 %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %164, %162, %59, %44, %33
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local %struct.soc_mbus_pixelfmt* @soc_mbus_get_fmtdesc(i32) #1

declare dso_local i32 @test_platform_param(%struct.pxa_camera_dev*, i32, i64*) #1

declare dso_local i64 @soc_camera_bus_param_compatible(i64, i64) #1

declare dso_local i32 @pxa_camera_setup_cicr(%struct.soc_camera_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
