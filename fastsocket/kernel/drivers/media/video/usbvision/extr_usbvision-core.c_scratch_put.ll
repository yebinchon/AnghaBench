; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_scratch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_scratch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i64 }

@scratch_buf_size = common dso_local global i32 0, align 4
@DBG_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"len=%d, new write_ptr=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8*, i32)* @scratch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scratch_put(%struct.usb_usbvision* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_usbvision*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %9 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @scratch_buf_size, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %17 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @memcpy(i64 %23, i8* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %29 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %73

32:                                               ; preds = %3
  %33 = load i32, i32* @scratch_buf_size, align 4
  %34 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %35 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %39 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %42 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @memcpy(i64 %45, i8* %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %54 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %72

55:                                               ; preds = %32
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @memcpy(i64 %58, i8* %62, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %71 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %55, %52
  br label %73

73:                                               ; preds = %72, %15
  %74 = load i32, i32* @DBG_SCRATCH, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %77 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PDEBUG(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
