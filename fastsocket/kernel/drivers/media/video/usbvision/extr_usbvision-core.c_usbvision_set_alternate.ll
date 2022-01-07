; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_set_alternate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_set_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i64*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"setting alternate %d with max_packet_size=%u\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot change alternate number to %d (error=%i)\0A\00", align 1
@DBG_ISOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"ISO Packet Length:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_set_alternate(%struct.usb_usbvision* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %11 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %15 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %27 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %30 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %25, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %18
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %39 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %46 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %44
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %55 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %61 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @DBG_FUNC, align 4
  %63 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %64 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %68 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, i64, ...) @PDEBUG(i32 %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %69)
  %71 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %72 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %75 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %78 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = call i32 @usb_set_interface(%struct.TYPE_2__* %73, i32 %76, i64 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %50
  %85 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %86 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %90 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %103

96:                                               ; preds = %50
  br label %97

97:                                               ; preds = %96, %44
  %98 = load i32, i32* @DBG_ISOC, align 4
  %99 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %100 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i32, i8*, i64, ...) @PDEBUG(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %84
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @PDEBUG(i32, i8*, i64, ...) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
