; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_set_default_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_set_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32 }

@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@force_palette = common dso_local global i64 0, align 8
@VIDEO_PALETTE_YUV420 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%dx%d, %s\00", align 1
@v4l1_plist = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @ov51x_set_default_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_set_default_params(%struct.usb_ov511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %74, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @OV511_NUMFRAMES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %77

9:                                                ; preds = %5
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %14 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %12, i32* %19, align 4
  %20 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %21 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %24 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %22, i32* %29, align 8
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %31 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* @force_palette, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %9
  %40 = load i64, i64* @force_palette, align 8
  %41 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %42 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %40, i64* %47, align 8
  br label %57

48:                                               ; preds = %9
  %49 = load i64, i64* @VIDEO_PALETTE_YUV420, align 8
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %51 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %49, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %39
  %58 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %59 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @get_depth(i64 %65)
  %67 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %68 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 8
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %5

77:                                               ; preds = %5
  %78 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %79 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %82 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @v4l1_plist, align 4
  %85 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %86 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @symbolic(i32 %84, i64 %90)
  %92 = call i32 @PDEBUG(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83, i32 %91)
  %93 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %94 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %95 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %98 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %101 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @mode_init_regs(%struct.usb_ov511* %93, i32 %96, i32 %99, i64 %105, i32 0)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %77
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %112

111:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @get_depth(i64) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @symbolic(i32, i64) #1

declare dso_local i64 @mode_init_regs(%struct.usb_ov511*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
