; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_scratch_get_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_scratch_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i64, i64, i32*, i32 }
%struct.usbvision_frame_header = type { i64, i64, i32, i32, i32, i64, i64, i64, i64 }

@DBG_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"from read_ptr=%d\00", align 1
@USBVISION_NUM_HEADERMARKER = common dso_local global i32 0, align 4
@USBVISION_HEADER_LENGTH = common dso_local global i32 0, align 4
@USBVISION_MAGIC_1 = common dso_local global i64 0, align 8
@USBVISION_MAGIC_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, %struct.usbvision_frame_header*)* @scratch_get_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scratch_get_header(%struct.usb_usbvision* %0, %struct.usbvision_frame_header* %1) #0 {
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca %struct.usbvision_frame_header*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  store %struct.usbvision_frame_header* %1, %struct.usbvision_frame_header** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @DBG_SCRATCH, align 4
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @PDEBUG(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %87, %2
  %12 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %13 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %16 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %11
  %21 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %22 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %25 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %30 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %32 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* @USBVISION_NUM_HEADERMARKER, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %38 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = urem i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %42 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %43 = bitcast %struct.usbvision_frame_header* %42 to i8*
  %44 = load i32, i32* @USBVISION_HEADER_LENGTH, align 4
  %45 = call i32 @scratch_get(%struct.usb_usbvision* %41, i8* %43, i32 %44)
  %46 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %47 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USBVISION_MAGIC_1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %20
  %52 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %53 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @USBVISION_MAGIC_2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  %58 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %59 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @USBVISION_HEADER_LENGTH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %57
  %64 = load i32, i32* @USBVISION_HEADER_LENGTH, align 4
  store i32 %64, i32* %5, align 4
  %65 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %66 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %69 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %67, %72
  %74 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %75 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %74, i32 0, i32 8
  store i64 %73, i64* %75, align 8
  %76 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %77 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %80 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %78, %83
  %85 = load %struct.usbvision_frame_header*, %struct.usbvision_frame_header** %4, align 8
  %86 = getelementptr inbounds %struct.usbvision_frame_header, %struct.usbvision_frame_header* %85, i32 0, i32 6
  store i64 %84, i64* %86, align 8
  br label %88

87:                                               ; preds = %57, %51, %20
  br label %11

88:                                               ; preds = %63, %11
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @PDEBUG(i32, i8*, i64) #1

declare dso_local i32 @scratch_get(%struct.usb_usbvision*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
