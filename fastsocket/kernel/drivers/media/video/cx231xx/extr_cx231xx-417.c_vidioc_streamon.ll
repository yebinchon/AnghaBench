; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"enter vidioc_streamon()\0A\00", align 1
@INDEX_TS1 = common dso_local global i32 0, align 4
@CX231XX_DIGITAL_MODE = common dso_local global i32 0, align 4
@CX231XX_NUM_PACKETS = common dso_local global i32 0, align 4
@CX231XX_NUM_BUFS = common dso_local global i32 0, align 4
@cx231xx_isoc_copy = common dso_local global i32 0, align 4
@cx231xx_bulk_copy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"exit vidioc_streamon()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %11, align 8
  store %struct.cx231xx_fh* %12, %struct.cx231xx_fh** %7, align 8
  %13 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %14 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %13, i32 0, i32 1
  %15 = load %struct.cx231xx*, %struct.cx231xx** %14, align 8
  store %struct.cx231xx* %15, %struct.cx231xx** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %18 = load i32, i32* @INDEX_TS1, align 4
  %19 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %17, i32 %18, i32 0)
  %20 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %21 = load i32, i32* @CX231XX_DIGITAL_MODE, align 4
  %22 = call i32 @cx231xx_set_mode(%struct.cx231xx* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %29 = load i32, i32* @CX231XX_NUM_PACKETS, align 4
  %30 = load i32, i32* @CX231XX_NUM_BUFS, align 4
  %31 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @cx231xx_isoc_copy, align 4
  %36 = call i32 @cx231xx_init_isoc(%struct.cx231xx* %28, i32 %29, i32 %30, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %39 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @cx231xx_bulk_copy, align 4
  %44 = call i32 @cx231xx_init_bulk(%struct.cx231xx* %38, i32 320, i32 5, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %37, %27
  %46 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %48 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %47, i32 0, i32 0
  %49 = call i32 @videobuf_streamon(i32* %48)
  ret i32 %49
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_init_isoc(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @cx231xx_init_bulk(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @videobuf_streamon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
