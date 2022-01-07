; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_shutter_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_shutter_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@GET_STATUS_CTL = common dso_local global i32 0, align 4
@READ_SHUTTER_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_get_shutter_speed(%struct.pwc_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %9 = load i32, i32* @GET_STATUS_CTL, align 4
  %10 = load i32, i32* @READ_SHUTTER_FORMATTER, align 4
  %11 = bitcast [2 x i8]* %6 to i8**
  %12 = call i32 @recv_control_msg(%struct.pwc_device* %8, i32 %9, i32 %10, i8** %11, i32 2)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = add nsw i32 %20, %24
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %28 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @DEVICE_USE_CODEC2(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 0
  store i32 %35, i32* %33, align 4
  br label %44

36:                                               ; preds = %17
  %37 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @DEVICE_USE_CODEC3(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %32
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @recv_control_msg(%struct.pwc_device*, i32, i32, i8**, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC2(i32) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
