; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_jpeg_codec_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_jpeg_codec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@GPCS_JPEG_RESET = common dso_local global i64 0, align 8
@ZR_GPIO_JPEG_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jpeg_codec_reset(%struct.zoran* %0) #0 {
  %2 = alloca %struct.zoran*, align 8
  store %struct.zoran* %0, %struct.zoran** %2, align 8
  %3 = load %struct.zoran*, %struct.zoran** %2, align 8
  %4 = call i32 @jpeg_codec_sleep(%struct.zoran* %3, i32 0)
  %5 = load %struct.zoran*, %struct.zoran** %2, align 8
  %6 = getelementptr inbounds %struct.zoran, %struct.zoran* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @GPCS_JPEG_RESET, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 255
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.zoran*, %struct.zoran** %2, align 8
  %15 = load %struct.zoran*, %struct.zoran** %2, align 8
  %16 = getelementptr inbounds %struct.zoran, %struct.zoran* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @GPCS_JPEG_RESET, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @post_office_write(%struct.zoran* %14, i32 %21, i32 0, i32 0)
  %23 = call i32 @udelay(i32 2)
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.zoran*, %struct.zoran** %2, align 8
  %26 = load %struct.zoran*, %struct.zoran** %2, align 8
  %27 = getelementptr inbounds %struct.zoran, %struct.zoran* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @ZR_GPIO_JPEG_RESET, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GPIO(%struct.zoran* %25, i32 %32, i32 0)
  %34 = call i32 @udelay(i32 2)
  %35 = load %struct.zoran*, %struct.zoran** %2, align 8
  %36 = load %struct.zoran*, %struct.zoran** %2, align 8
  %37 = getelementptr inbounds %struct.zoran, %struct.zoran* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @ZR_GPIO_JPEG_RESET, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GPIO(%struct.zoran* %35, i32 %42, i32 1)
  %44 = call i32 @udelay(i32 2)
  br label %45

45:                                               ; preds = %24, %13
  ret i32 0
}

declare dso_local i32 @jpeg_codec_sleep(%struct.zoran*, i32) #1

declare dso_local i32 @post_office_write(%struct.zoran*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @GPIO(%struct.zoran*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
