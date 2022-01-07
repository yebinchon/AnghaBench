; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_cmos_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_cmos_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@SENSOR_TYPE_FORMATTER1 = common dso_local global i32 0, align 4
@SENSOR_TYPE_FORMATTER2 = common dso_local global i32 0, align 4
@GET_STATUS_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_get_cmos_sensor(%struct.pwc_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %7, align 4
  %9 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 675
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SENSOR_TYPE_FORMATTER1, align 4
  store i32 %14, i32* %8, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %17 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 730
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %48

21:                                               ; preds = %15
  %22 = load i32, i32* @SENSOR_TYPE_FORMATTER2, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %26 = load i32, i32* @GET_STATUS_CTL, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @recv_control_msg(%struct.pwc_device* %25, i32 %26, i32 %27, i8* %6, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 675
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, 256
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %38
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %31, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @recv_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
