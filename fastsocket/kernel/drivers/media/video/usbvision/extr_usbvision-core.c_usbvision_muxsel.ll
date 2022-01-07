; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_muxsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_muxsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_usbvision = type { i32, i64, i32 }

@SAA7115_COMPOSITE0 = common dso_local global i32 0, align 4
@SAA7115_COMPOSITE3 = common dso_local global i32 0, align 4
@__const.usbvision_muxsel.audio = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 0, i32 0], align 16
@usbvision_device_data = common dso_local global %struct.TYPE_2__* null, align 8
@SAA7115_COMPOSITE2 = common dso_local global i32 0, align 4
@switch_svideo_input = common dso_local global i32 0, align 4
@SAA7115_COMPOSITE1 = common dso_local global i32 0, align 4
@SAA7115_SVIDEO1 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_muxsel(%struct.usb_usbvision* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %8 = load i32, i32* @SAA7115_COMPOSITE0, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* @SAA7115_COMPOSITE3, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.usbvision_muxsel.audio to i8*), i64 16, i1 false)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %16 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @RESTRICT_TO_RANGE(i32 %14, i32 0, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %21 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %23 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %24 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %42 [
    i32 128, label %29
    i32 129, label %41
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @SAA7115_COMPOSITE2, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @switch_svideo_input, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @SAA7115_COMPOSITE1, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @SAA7115_SVIDEO1, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %38, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  br label %47

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %2, %41
  %43 = load i32, i32* @SAA7115_COMPOSITE1, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @SAA7115_SVIDEO1, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %45, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %40
  %48 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %49 = load i32, i32* @video, align 4
  %50 = load i32, i32* @s_routing, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @call_all(%struct.usb_usbvision* %48, i32 %49, i32 %50, i32 %54, i32 0, i32 0)
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @usbvision_set_audio(%struct.usb_usbvision* %56, i32 %60)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #2

declare dso_local i32 @call_all(%struct.usb_usbvision*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @usbvision_set_audio(%struct.usb_usbvision*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
