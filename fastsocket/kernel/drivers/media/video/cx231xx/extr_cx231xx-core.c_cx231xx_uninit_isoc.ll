; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_uninit_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_uninit_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.cx231xx_dmaqueue }
%struct.TYPE_3__ = type { i32, i32, %struct.urb**, %struct.urb** }
%struct.urb = type { i32, i32 }
%struct.cx231xx_dmaqueue = type { %struct.urb** }

@.str = private unnamed_addr constant [37 x i8] c"cx231xx: called cx231xx_uninit_isoc\0A\00", align 1
@Raw_Video = common dso_local global i32 0, align 4
@TS1_serial_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_uninit_isoc(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca %struct.cx231xx_dmaqueue*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %6 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %7 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.cx231xx_dmaqueue* %8, %struct.cx231xx_dmaqueue** %3, align 8
  %9 = call i32 @cx231xx_isocdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %94, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %97

22:                                               ; preds = %14
  %23 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load %struct.urb**, %struct.urb*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.urb*, %struct.urb** %27, i64 %29
  %31 = load %struct.urb*, %struct.urb** %30, align 8
  store %struct.urb* %31, %struct.urb** %4, align 8
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = icmp ne %struct.urb* %32, null
  br i1 %33, label %34, label %85

34:                                               ; preds = %22
  %35 = call i32 (...) @irqs_disabled()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.urb*, %struct.urb** %4, align 8
  %39 = call i32 @usb_kill_urb(%struct.urb* %38)
  br label %43

40:                                               ; preds = %34
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = call i32 @usb_unlink_urb(%struct.urb* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load %struct.urb**, %struct.urb*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.urb*, %struct.urb** %48, i64 %50
  %52 = load %struct.urb*, %struct.urb** %51, align 8
  %53 = icmp ne %struct.urb* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %43
  %55 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.urb*, %struct.urb** %4, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load %struct.urb**, %struct.urb*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.urb*, %struct.urb** %65, i64 %67
  %69 = load %struct.urb*, %struct.urb** %68, align 8
  %70 = load %struct.urb*, %struct.urb** %4, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_buffer_free(i32 %57, i32 %60, %struct.urb* %69, i32 %72)
  br label %74

74:                                               ; preds = %54, %43
  %75 = load %struct.urb*, %struct.urb** %4, align 8
  %76 = call i32 @usb_free_urb(%struct.urb* %75)
  %77 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %78 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load %struct.urb**, %struct.urb*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.urb*, %struct.urb** %81, i64 %83
  store %struct.urb* null, %struct.urb** %84, align 8
  br label %85

85:                                               ; preds = %74, %22
  %86 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load %struct.urb**, %struct.urb*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.urb*, %struct.urb** %90, i64 %92
  store %struct.urb* null, %struct.urb** %93, align 8
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %14

97:                                               ; preds = %14
  %98 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load %struct.urb**, %struct.urb*** %101, align 8
  %103 = call i32 @kfree(%struct.urb** %102)
  %104 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %105 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load %struct.urb**, %struct.urb*** %107, align 8
  %109 = call i32 @kfree(%struct.urb** %108)
  %110 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %3, align 8
  %111 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %110, i32 0, i32 0
  %112 = load %struct.urb**, %struct.urb*** %111, align 8
  %113 = call i32 @kfree(%struct.urb** %112)
  %114 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %115 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store %struct.urb** null, %struct.urb*** %117, align 8
  %118 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %119 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %121, align 8
  %122 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %123 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %3, align 8
  %127 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %126, i32 0, i32 0
  store %struct.urb** null, %struct.urb*** %127, align 8
  %128 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %129 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %97
  %133 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %134 = load i32, i32* @Raw_Video, align 4
  %135 = call i32 @cx231xx_capture_start(%struct.cx231xx* %133, i32 0, i32 %134)
  br label %140

136:                                              ; preds = %97
  %137 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %138 = load i32, i32* @TS1_serial_mode, align 4
  %139 = call i32 @cx231xx_capture_start(%struct.cx231xx* %137, i32 0, i32 %138)
  br label %140

140:                                              ; preds = %136, %132
  ret void
}

declare dso_local i32 @cx231xx_isocdbg(i8*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @usb_buffer_free(i32, i32, %struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
