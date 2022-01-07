; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.sh_mobile_ceu_cam* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sh_mobile_ceu_cam = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i64, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Crop %ux%u@%u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"CAMOR 0x%x, CAPWR 0x%x, CFSZR 0x%x, CDWDR 0x%x\0A\00", align 1
@CAMOR = common dso_local global i32 0, align 4
@CAPWR = common dso_local global i32 0, align 4
@CFSZR = common dso_local global i32 0, align 4
@CDWDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_camera_device*, i32, i32)* @sh_mobile_ceu_set_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_ceu_set_rect(%struct.soc_camera_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_camera_host*, align 8
  %8 = alloca %struct.sh_mobile_ceu_cam*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %21 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %23)
  store %struct.soc_camera_host* %24, %struct.soc_camera_host** %7, align 8
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 2
  %27 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %26, align 8
  store %struct.sh_mobile_ceu_cam* %27, %struct.sh_mobile_ceu_cam** %8, align 8
  %28 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %8, align 8
  %29 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %28, i32 0, i32 0
  store %struct.v4l2_rect* %29, %struct.v4l2_rect** %9, align 8
  %30 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %31 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %30, i32 0, i32 0
  %32 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %31, align 8
  store %struct.sh_mobile_ceu_dev* %32, %struct.sh_mobile_ceu_dev** %10, align 8
  %33 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %34 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  %56 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %57 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %3
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %14, align 4
  %64 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %65 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %14, align 4
  %70 = mul i32 %69, 2
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %16, align 4
  %72 = mul i32 %71, 2
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %68, %60
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %13, align 4
  store i32 %74, i32* %12, align 4
  br label %107

75:                                               ; preds = %3
  %76 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %77 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 7
  %82 = ashr i32 %81, 3
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %19, align 4
  %85 = mul i32 %83, %84
  %86 = udiv i32 %85, 2
  store i32 %86, i32* %12, align 4
  %87 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %88 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %19, align 4
  %93 = mul i32 %92, 2
  store i32 %93, i32* %19, align 4
  br label %94

94:                                               ; preds = %91, %75
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %19, align 4
  %99 = mul i32 %97, %98
  %100 = udiv i32 %99, 2
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %19, align 4
  %103 = mul i32 %101, %102
  %104 = udiv i32 %103, 2
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %12, align 4
  %106 = mul i32 %105, 2
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %94, %73
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %15, align 4
  %112 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %113 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load i32, i32* %11, align 4
  %118 = udiv i32 %117, 2
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %15, align 4
  %120 = udiv i32 %119, 2
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %17, align 4
  %122 = udiv i32 %121, 2
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %13, align 4
  %124 = mul i32 %123, 2
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %116, %107
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %17, align 4
  %128 = shl i32 %127, 16
  %129 = or i32 %126, %128
  store i32 %129, i32* %18, align 4
  %130 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %131 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %15, align 4
  %136 = shl i32 %135, 16
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %11, align 4
  %140 = shl i32 %139, 16
  %141 = load i32, i32* %12, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @dev_geo(i32 %133, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %138, i32 %142, i32 %143)
  %145 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %146 = load i32, i32* @CAMOR, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %145, i32 %146, i32 %147)
  %149 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %150 = load i32, i32* @CAPWR, align 4
  %151 = load i32, i32* %15, align 4
  %152 = shl i32 %151, 16
  %153 = load i32, i32* %14, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %149, i32 %150, i32 %154)
  %156 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %157 = load i32, i32* @CFSZR, align 4
  %158 = load i32, i32* %11, align 4
  %159 = shl i32 %158, 16
  %160 = load i32, i32* %12, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %156, i32 %157, i32 %161)
  %163 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %10, align 8
  %164 = load i32, i32* @CDWDR, align 4
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %163, i32 %164, i32 %165)
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_geo(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ceu_write(%struct.sh_mobile_ceu_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
