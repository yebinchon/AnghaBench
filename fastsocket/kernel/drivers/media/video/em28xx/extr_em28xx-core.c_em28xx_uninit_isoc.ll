; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_uninit_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_uninit_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.urb**, %struct.urb** }
%struct.urb = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"em28xx: called em28xx_uninit_isoc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_uninit_isoc(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %5 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %83, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %9
  %17 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load %struct.urb**, %struct.urb*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.urb*, %struct.urb** %20, i64 %22
  %24 = load %struct.urb*, %struct.urb** %23, align 8
  store %struct.urb* %24, %struct.urb** %3, align 8
  %25 = load %struct.urb*, %struct.urb** %3, align 8
  %26 = icmp ne %struct.urb* %25, null
  br i1 %26, label %27, label %75

27:                                               ; preds = %16
  %28 = call i32 (...) @irqs_disabled()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.urb*, %struct.urb** %3, align 8
  %32 = call i32 @usb_kill_urb(%struct.urb* %31)
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.urb*, %struct.urb** %3, align 8
  %35 = call i32 @usb_unlink_urb(%struct.urb* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load %struct.urb**, %struct.urb*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.urb*, %struct.urb** %40, i64 %42
  %44 = load %struct.urb*, %struct.urb** %43, align 8
  %45 = icmp ne %struct.urb* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %36
  %47 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.urb*, %struct.urb** %3, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load %struct.urb**, %struct.urb*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.urb*, %struct.urb** %56, i64 %58
  %60 = load %struct.urb*, %struct.urb** %59, align 8
  %61 = load %struct.urb*, %struct.urb** %3, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_buffer_free(i32 %49, i32 %52, %struct.urb* %60, i32 %63)
  br label %65

65:                                               ; preds = %46, %36
  %66 = load %struct.urb*, %struct.urb** %3, align 8
  %67 = call i32 @usb_free_urb(%struct.urb* %66)
  %68 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load %struct.urb**, %struct.urb*** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.urb*, %struct.urb** %71, i64 %73
  store %struct.urb* null, %struct.urb** %74, align 8
  br label %75

75:                                               ; preds = %65, %16
  %76 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %77 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load %struct.urb**, %struct.urb*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.urb*, %struct.urb** %79, i64 %81
  store %struct.urb* null, %struct.urb** %82, align 8
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %9

86:                                               ; preds = %9
  %87 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %88 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load %struct.urb**, %struct.urb*** %89, align 8
  %91 = call i32 @kfree(%struct.urb** %90)
  %92 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %93 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load %struct.urb**, %struct.urb*** %94, align 8
  %96 = call i32 @kfree(%struct.urb** %95)
  %97 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %98 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store %struct.urb** null, %struct.urb*** %99, align 8
  %100 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %101 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %102, align 8
  %103 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %104 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %107 = call i32 @em28xx_capture_start(%struct.em28xx* %106, i32 0)
  ret void
}

declare dso_local i32 @em28xx_isocdbg(i8*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @usb_buffer_free(i32, i32, %struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @em28xx_capture_start(%struct.em28xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
