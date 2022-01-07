; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_sensor_set_gains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_sensor_set_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, i32, i32, i32)* @qcm_sensor_set_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_sensor_set_gains(%struct.uvd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uvd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @qcm_hsv2rgb(i32 %13, i32 %14, i32 %15, i32* %10, i32* %11, i32* %12)
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 12
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = ashr i32 %19, 12
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = ashr i32 %21, 12
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @max(i32 8, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @max(i32 8, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @max(i32 8, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, 48
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, 48
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, 48
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.uvd*, %struct.uvd** %5, align 8
  %37 = getelementptr inbounds %struct.uvd, %struct.uvd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @qcm_stv_setb(i32 %38, i32 1289, i32 %39)
  %41 = call i32 @CHECK_RET(i32 %35, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.uvd*, %struct.uvd** %5, align 8
  %44 = getelementptr inbounds %struct.uvd, %struct.uvd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @qcm_stv_setb(i32 %45, i32 1290, i32 %46)
  %48 = call i32 @CHECK_RET(i32 %42, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.uvd*, %struct.uvd** %5, align 8
  %51 = getelementptr inbounds %struct.uvd, %struct.uvd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @qcm_stv_setb(i32 %52, i32 1291, i32 %53)
  %55 = call i32 @CHECK_RET(i32 %49, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.uvd*, %struct.uvd** %5, align 8
  %58 = getelementptr inbounds %struct.uvd, %struct.uvd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @qcm_stv_setb(i32 %59, i32 1292, i32 42)
  %61 = call i32 @CHECK_RET(i32 %56, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.uvd*, %struct.uvd** %5, align 8
  %64 = getelementptr inbounds %struct.uvd, %struct.uvd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @qcm_stv_setb(i32 %65, i32 1293, i32 1)
  %67 = call i32 @CHECK_RET(i32 %62, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.uvd*, %struct.uvd** %5, align 8
  %70 = getelementptr inbounds %struct.uvd, %struct.uvd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @qcm_stv_setb(i32 %71, i32 5183, i32 1)
  %73 = call i32 @CHECK_RET(i32 %68, i32 %72)
  ret i32 0
}

declare dso_local i32 @qcm_hsv2rgb(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @CHECK_RET(i32, i32) #1

declare dso_local i32 @qcm_stv_setb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
