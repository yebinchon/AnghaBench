; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_frames_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_frames_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@frame_state_unused = common dso_local global i32 0, align 4
@DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"allocated %d frames (%d bytes per frame)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_frames_alloc(%struct.usb_usbvision* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %7 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %10 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %14 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %13, i32 0, i32 12
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = call i32 @PAGE_ALIGN(i32 %17)
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %23 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %50, %2
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %26 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %31 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %34 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %38 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %40 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @usbvision_rvmalloc(i32 %41)
  %43 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %44 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %43, i32 0, i32 8
  store i64 %42, i64* %44, align 8
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %46 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  br label %55

50:                                               ; preds = %29
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %24

55:                                               ; preds = %49, %24
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 11
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %60 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %59, i32 0, i32 10
  %61 = call i32 @init_waitqueue_head(i32* %60)
  %62 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %63 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %62, i32 0, i32 9
  %64 = call i32 @init_waitqueue_head(i32* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %136, %55
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %68 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %139

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %74 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %73, i32 0, i32 7
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  %80 = load i32, i32* @frame_state_unused, align 4
  %81 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %82 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %81, i32 0, i32 7
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  store i32 %80, i32* %87, align 8
  %88 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %89 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %93 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %90, %96
  %98 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %99 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %98, i32 0, i32 7
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  store i64 %97, i64* %104, align 8
  %105 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %106 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %105, i32 0, i32 5
  store i32 1, i32* %106, align 4
  %107 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %108 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %107, i32 0, i32 6
  store i32 1, i32* %108, align 8
  %109 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %110 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %113 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %112, i32 0, i32 7
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 %111, i32* %118, align 4
  %119 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %120 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %123 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %122, i32 0, i32 7
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 %121, i32* %128, align 8
  %129 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %130 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %129, i32 0, i32 7
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %71
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %65

139:                                              ; preds = %65
  %140 = load i32, i32* @DBG_FUNC, align 4
  %141 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %142 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %145 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @PDEBUG(i32 %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %146)
  %148 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %149 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  ret i32 %150
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i64 @usbvision_rvmalloc(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
