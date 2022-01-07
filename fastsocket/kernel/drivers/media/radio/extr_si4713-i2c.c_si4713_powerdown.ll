; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_powerdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@SI4713_PWDN_NRESP = common dso_local global i32 0, align 4
@SI4713_CMD_POWER_DOWN = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Power down response: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Device in reset mode\0A\00", align 1
@POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*)* @si4713_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_powerdown(%struct.si4713_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  %8 = load i32, i32* @SI4713_PWDN_NRESP, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %13 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %19 = load i32, i32* @SI4713_CMD_POWER_DOWN, align 4
  %20 = call i32 @ARRAY_SIZE(i32* %11)
  %21 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %22 = call i32 @si4713_send_command(%struct.si4713_device* %18, i32 %19, i32* null, i32 0, i32* %11, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @debug, align 4
  %27 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %28 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds i32, i32* %11, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %26, i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @debug, align 4
  %33 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %34 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %33, i32 0, i32 2
  %35 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %32, i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %37 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = call i32 %40(i32 0)
  %42 = load i64, i64* @POWER_OFF, align 8
  %43 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %44 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %25, %17
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %16
  %48 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si4713_send_command(%struct.si4713_device*, i32, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
