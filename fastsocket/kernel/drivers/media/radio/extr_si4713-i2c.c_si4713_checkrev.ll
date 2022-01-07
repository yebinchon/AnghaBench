; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_checkrev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_checkrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i32 }
%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI4713_GETREV_NRESP = common dso_local global i32 0, align 4
@SI4713_CMD_GET_REV = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@SI4713_PRODUCT_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid product number\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*)* @si4713_checkrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_checkrev(%struct.si4713_device* %0) #0 {
  %2 = alloca %struct.si4713_device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.si4713_device* %0, %struct.si4713_device** %2, align 8
  %7 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %8 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %7, i32 0, i32 1
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load i32, i32* @SI4713_GETREV_NRESP, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %15 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %18 = load i32, i32* @SI4713_CMD_GET_REV, align 4
  %19 = call i32 @ARRAY_SIZE(i64* %13)
  %20 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %21 = call i32 @si4713_send_command(%struct.si4713_device* %17, i32 %18, i32* null, i32 0, i64* %13, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %50

25:                                               ; preds = %1
  %26 = getelementptr inbounds i64, i64* %13, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SI4713_PRODUCT_NUMBER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %32 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %31, i32 0, i32 1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @v4l2_info(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41)
  br label %49

43:                                               ; preds = %25
  %44 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %45 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %44, i32 0, i32 1
  %46 = call i32 @v4l2_err(i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %30
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %52 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_send_command(%struct.si4713_device*, i32, i32*, i32, i64*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
