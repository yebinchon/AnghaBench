; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_uninit_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_uninit_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, %struct.urb**, %struct.urb** }
%struct.urb = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"cx231xx: called cx231xx_uninit_bulk\0A\00", align 1
@Raw_Video = common dso_local global i32 0, align 4
@TS1_serial_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_uninit_bulk(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %5 = call i32 @cx231xx_isocdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %7 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %90, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %10
  %19 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load %struct.urb**, %struct.urb*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.urb*, %struct.urb** %23, i64 %25
  %27 = load %struct.urb*, %struct.urb** %26, align 8
  store %struct.urb* %27, %struct.urb** %3, align 8
  %28 = load %struct.urb*, %struct.urb** %3, align 8
  %29 = icmp ne %struct.urb* %28, null
  br i1 %29, label %30, label %81

30:                                               ; preds = %18
  %31 = call i32 (...) @irqs_disabled()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.urb*, %struct.urb** %3, align 8
  %35 = call i32 @usb_kill_urb(%struct.urb* %34)
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.urb*, %struct.urb** %3, align 8
  %38 = call i32 @usb_unlink_urb(%struct.urb* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %41 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.urb**, %struct.urb*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.urb*, %struct.urb** %44, i64 %46
  %48 = load %struct.urb*, %struct.urb** %47, align 8
  %49 = icmp ne %struct.urb* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %39
  %51 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.urb*, %struct.urb** %3, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %58 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.urb*, %struct.urb** %3, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_buffer_free(i32 %53, i32 %56, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %50, %39
  %71 = load %struct.urb*, %struct.urb** %3, align 8
  %72 = call i32 @usb_free_urb(%struct.urb* %71)
  %73 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %74 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load %struct.urb**, %struct.urb*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.urb*, %struct.urb** %77, i64 %79
  store %struct.urb* null, %struct.urb** %80, align 8
  br label %81

81:                                               ; preds = %70, %18
  %82 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %83 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.urb**, %struct.urb*** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.urb*, %struct.urb** %86, i64 %88
  store %struct.urb* null, %struct.urb** %89, align 8
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %10

93:                                               ; preds = %10
  %94 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load %struct.urb**, %struct.urb*** %97, align 8
  %99 = call i32 @kfree(%struct.urb** %98)
  %100 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %101 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load %struct.urb**, %struct.urb*** %103, align 8
  %105 = call i32 @kfree(%struct.urb** %104)
  %106 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %107 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  store %struct.urb** null, %struct.urb*** %109, align 8
  %110 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %111 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %113, align 8
  %114 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %115 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %119 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %93
  %123 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %124 = load i32, i32* @Raw_Video, align 4
  %125 = call i32 @cx231xx_capture_start(%struct.cx231xx* %123, i32 0, i32 %124)
  br label %130

126:                                              ; preds = %93
  %127 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %128 = load i32, i32* @TS1_serial_mode, align 4
  %129 = call i32 @cx231xx_capture_start(%struct.cx231xx* %127, i32 0, i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  ret void
}

declare dso_local i32 @cx231xx_isocdbg(i8*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
