; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_scratch_page_versions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_scratch_page_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i8, i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCRATCH_REPORT_SIZE = common dso_local global i32 0, align 4
@SCRATCH_REPORT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [51 x i8] c"si470x_get_scratch: si470x_get_report returned %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*)* @si470x_get_scratch_page_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_get_scratch_page_versions(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %6 = load i32, i32* @SCRATCH_REPORT_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i8, i8* @SCRATCH_REPORT, align 1
  %11 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %10, i8* %11, align 16
  %12 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %13 = trunc i64 %7 to i32
  %14 = call i32 @si470x_get_report(%struct.si470x_device* %12, i8* %9, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %19 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %33

24:                                               ; preds = %1
  %25 = getelementptr inbounds i8, i8* %9, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %28 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %27, i32 0, i32 0
  store i8 %26, i8* %28, align 8
  %29 = getelementptr inbounds i8, i8* %9, i64 2
  %30 = load i8, i8* %29, align 2
  %31 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %32 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %31, i32 0, i32 1
  store i8 %30, i8* %32, align 1
  br label %33

33:                                               ; preds = %24, %17
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si470x_get_report(%struct.si470x_device*, i8*, i32) #2

declare dso_local i32 @dev_warn(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
