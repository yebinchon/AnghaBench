; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_all_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_all_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32* }

@ENTIRE_REPORT_SIZE = common dso_local global i32 0, align 4
@ENTIRE_REPORT = common dso_local global i8 0, align 1
@RADIO_REGISTER_NUM = common dso_local global i8 0, align 1
@RADIO_REGISTER_SIZE = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*)* @si470x_get_all_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_get_all_registers(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %7 = load i32, i32* @ENTIRE_REPORT_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i8, i8* @ENTIRE_REPORT, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %11, i8* %12, align 16
  %13 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %14 = trunc i64 %8 to i32
  %15 = call i32 @si470x_get_report(%struct.si470x_device* %13, i8* %10, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  store i8 0, i8* %6, align 1
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @RADIO_REGISTER_NUM, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @RADIO_REGISTER_SIZE, align 1
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %27, %29
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %10, i64 %32
  %34 = call i32 @get_unaligned_be16(i8* %33)
  %35 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %36 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %25
  %42 = load i8, i8* %6, align 1
  %43 = add i8 %42, 1
  store i8 %43, i8* %6, align 1
  br label %19

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %54 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si470x_get_report(%struct.si470x_device*, i8*, i32) #2

declare dso_local i32 @get_unaligned_be16(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
