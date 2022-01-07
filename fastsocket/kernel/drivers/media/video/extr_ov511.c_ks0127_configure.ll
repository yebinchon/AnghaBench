; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ks0127_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ks0127_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error detecting sensor type\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Sensor is a KS0127\0A\00", align 1
@SEN_KS0127 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Sensor is a KS0127B Rev. A\0A\00", align 1
@SEN_KS0127B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Error: Sensor is an unsupported KS0122\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"This sensor is not supported yet.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @ks0127_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks0127_configure(%struct.usb_ov511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  %5 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %6 = call i32 @i2c_r(%struct.usb_ov511* %5, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %72

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %17 = call i32 @i2c_r(%struct.usb_ov511* %16, i32 61)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %72

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %28 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %27, i32 0, i32 9
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @SEN_KS0127, align 4
  %33 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %34 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  br label %49

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 15
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %41 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %40, i32 0, i32 9
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @SEN_KS0127B, align 4
  %46 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %47 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %39, %35
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49
  br label %53

51:                                               ; preds = %11
  %52 = call i32 @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %72

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %56 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %55, i32 0, i32 0
  store i32 640, i32* %56, align 8
  %57 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %58 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %57, i32 0, i32 1
  store i32 480, i32* %58, align 4
  %59 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %60 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %59, i32 0, i32 2
  store i32 64, i32* %60, align 8
  %61 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %62 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %61, i32 0, i32 3
  store i32 48, i32* %62, align 4
  %63 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %64 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %63, i32 0, i32 4
  store i32 32768, i32* %64, align 8
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %66 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %65, i32 0, i32 5
  store i32 32768, i32* %66, align 4
  %67 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %68 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %67, i32 0, i32 6
  store i32 32768, i32* %68, align 8
  %69 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %70 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %69, i32 0, i32 7
  store i32 32768, i32* %70, align 4
  %71 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %72

72:                                               ; preds = %54, %51, %20, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @i2c_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
