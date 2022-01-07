; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.sh_mobile_ceu_cam* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*, i64)* }
%struct.sh_mobile_ceu_cam = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_MASK = common dso_local global i64 0, align 8
@CRCNTR = common dso_local global i32 0, align 4
@CRCMPR = common dso_local global i32 0, align 4
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@CAMCR = common dso_local global i32 0, align 4
@CAPCR = common dso_local global i32 0, align 4
@CAIFR = common dso_local global i32 0, align 4
@CFLCR = common dso_local global i32 0, align 4
@CDOCR = common dso_local global i32 0, align 4
@CFWCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"S_FMT successful for %c%c%c%c %ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32)* @sh_mobile_ceu_set_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_set_bus_param(%struct.soc_camera_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sh_mobile_ceu_cam*, align 8
  %14 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %16 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %18)
  store %struct.soc_camera_host* %19, %struct.soc_camera_host** %6, align 8
  %20 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %21 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %20, i32 0, i32 0
  %22 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %21, align 8
  store %struct.sh_mobile_ceu_dev* %22, %struct.sh_mobile_ceu_dev** %7, align 8
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %24 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %23, i32 0, i32 5
  %25 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %24, align 8
  store %struct.sh_mobile_ceu_cam* %25, %struct.sh_mobile_ceu_cam** %13, align 8
  %26 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %27 = call i32 @capture_save_reset(%struct.sh_mobile_ceu_dev* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %29 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64 (%struct.soc_camera_device*)*, i64 (%struct.soc_camera_device*)** %31, align 8
  %33 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %34 = call i64 %32(%struct.soc_camera_device* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %37 = call i32 @make_bus_param(%struct.sh_mobile_ceu_dev* %36)
  %38 = call i64 @soc_camera_bus_param_compatible(i64 %35, i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %211

44:                                               ; preds = %2
  %45 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %46 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %45, i32 0, i32 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32 (%struct.soc_camera_device*, i64)*, i32 (%struct.soc_camera_device*, i64)** %48, align 8
  %50 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 %49(%struct.soc_camera_device* %50, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %211

57:                                               ; preds = %44
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @SOCAM_DATAWIDTH_MASK, align 8
  %60 = and i64 %58, %59
  switch i64 %60, label %67 [
    i64 136, label %61
    i64 137, label %64
  ]

61:                                               ; preds = %57
  %62 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %63 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %70

64:                                               ; preds = %57
  %65 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %66 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %211

70:                                               ; preds = %64, %61
  %71 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %72 = load i32, i32* @CRCNTR, align 4
  %73 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %71, i32 %72, i64 0)
  %74 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %75 = load i32, i32* @CRCMPR, align 4
  %76 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %74, i32 %75, i64 0)
  store i64 16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %77 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %78 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %96 [
    i32 135, label %82
    i32 133, label %82
    i32 134, label %83
    i32 132, label %83
  ]

82:                                               ; preds = %70, %70
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %70, %70, %82
  %84 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %13, align 8
  %85 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %93 [
    i32 131, label %89
    i32 130, label %90
    i32 129, label %91
    i32 128, label %92
  ]

89:                                               ; preds = %83
  store i64 0, i64* %11, align 8
  br label %95

90:                                               ; preds = %83
  store i64 256, i64* %11, align 8
  br label %95

91:                                               ; preds = %83
  store i64 512, i64* %11, align 8
  br label %95

92:                                               ; preds = %83
  store i64 768, i64* %11, align 8
  br label %95

93:                                               ; preds = %83
  %94 = call i32 (...) @BUG()
  br label %95

95:                                               ; preds = %93, %92, %91, %90, %89
  br label %96

96:                                               ; preds = %95, %70
  %97 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %98 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 133
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %105 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %104, i32 0, i32 3
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 132
  br i1 %109, label %110, label %113

110:                                              ; preds = %103, %96
  %111 = load i64, i64* %11, align 8
  %112 = xor i64 %111, 256
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %110, %103
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 2, i32 0
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %11, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %11, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %11, align 8
  %132 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %133 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 4096, i32 0
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %11, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %11, align 8
  %141 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %142 = load i32, i32* @CAMCR, align 4
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %141, i32 %142, i64 %143)
  %145 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %146 = load i32, i32* @CAPCR, align 4
  %147 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %145, i32 %146, i64 3145728)
  %148 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %149 = load i32, i32* @CAIFR, align 4
  %150 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %151 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 257, i32 0
  %156 = sext i32 %155 to i64
  %157 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %148, i32 %149, i64 %156)
  %158 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %159 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %160 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %163 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @sh_mobile_ceu_set_rect(%struct.soc_camera_device* %158, i32 %161, i32 %164)
  %166 = call i32 @mdelay(i32 1)
  %167 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %168 = load i32, i32* @CFLCR, align 4
  %169 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %170 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %167, i32 %168, i64 %171)
  store i64 23, i64* %11, align 8
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %113
  %176 = load i64, i64* %11, align 8
  %177 = and i64 %176, -17
  store i64 %177, i64* %11, align 8
  br label %178

178:                                              ; preds = %175, %113
  %179 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %180 = load i32, i32* @CDOCR, align 4
  %181 = load i64, i64* %11, align 8
  %182 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %179, i32 %180, i64 %181)
  %183 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %184 = load i32, i32* @CFWCR, align 4
  %185 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %183, i32 %184, i64 0)
  %186 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %187 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = and i32 %190, 255
  %192 = load i32, i32* %5, align 4
  %193 = ashr i32 %192, 8
  %194 = and i32 %193, 255
  %195 = load i32, i32* %5, align 4
  %196 = ashr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = load i32, i32* %5, align 4
  %199 = ashr i32 %198, 24
  %200 = and i32 %199, 255
  %201 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %202 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %205 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @dev_dbg(i32 %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %191, i32 %194, i32 %197, i32 %200, i32 %203, i32 %206)
  %208 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @capture_restore(%struct.sh_mobile_ceu_dev* %208, i32 %209)
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %178, %67, %55, %41
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @capture_save_reset(%struct.sh_mobile_ceu_dev*) #1

declare dso_local i64 @soc_camera_bus_param_compatible(i64, i32) #1

declare dso_local i32 @make_bus_param(%struct.sh_mobile_ceu_dev*) #1

declare dso_local i32 @ceu_write(%struct.sh_mobile_ceu_dev*, i32, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sh_mobile_ceu_set_rect(%struct.soc_camera_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @capture_restore(%struct.sh_mobile_ceu_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
