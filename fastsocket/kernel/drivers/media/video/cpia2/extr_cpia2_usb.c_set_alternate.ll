; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_set_alternate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_set_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, i32, i32 }

@USBIF_CMDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Changing from alt %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*, i32)* @set_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_alternate(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %9 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %15 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @USBIF_CMDONLY, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %21 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USBIF_CMDONLY, align 4
  %24 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USBIF_CMDONLY, align 4
  %32 = call i32 @usb_set_interface(i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %13
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @USBIF_CMDONLY, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i32, i32* @USBIF_CMDONLY, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %47 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @usb_set_interface(i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %69

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %64 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %67 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %56, %35, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
