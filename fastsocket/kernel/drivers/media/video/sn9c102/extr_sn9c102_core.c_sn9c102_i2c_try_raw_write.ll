; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_i2c_try_raw_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_i2c_try_raw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.sn9c102_sensor = type { i64, i32, i32 }

@SN9C102_I2C_2WIRES = common dso_local global i64 0, align 8
@SN9C102_I2C_400KHZ = common dso_local global i32 0, align 4
@SN9C102_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"I2C write failed for %s image sensor\00", align 1
@.str.1 = private unnamed_addr constant [120 x i8] c"I2C raw write: %u bytes, data0 = 0x%02X, data1 = 0x%02X, data2 = 0x%02X, data3 = 0x%02X, data4 = 0x%02X, data5 = 0x%02X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %0, %struct.sn9c102_sensor* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.sn9c102_device*, align 8
  %11 = alloca %struct.sn9c102_sensor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.usb_device*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %10, align 8
  store %struct.sn9c102_sensor* %1, %struct.sn9c102_sensor** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load %struct.sn9c102_device*, %struct.sn9c102_device** %10, align 8
  %24 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %23, i32 0, i32 1
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %19, align 8
  %26 = load %struct.sn9c102_device*, %struct.sn9c102_device** %10, align 8
  %27 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %29 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %11, align 8
  %30 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SN9C102_I2C_2WIRES, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 128, i32 0
  %36 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %11, align 8
  %37 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SN9C102_I2C_400KHZ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = or i32 %35, %43
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %45, 1
  %47 = shl i32 %46, 4
  %48 = or i32 %44, %47
  %49 = load i32*, i32** %20, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %20, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %20, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %20, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32*, i32** %20, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32*, i32** %20, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32*, i32** %20, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %20, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  store i32 23, i32* %70, align 4
  %71 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  %72 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  %73 = call i32 @usb_sndctrlpipe(%struct.usb_device* %72, i32 0)
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* @SN9C102_CTRL_TIMEOUT, align 4
  %76 = call i32 @usb_control_msg(%struct.usb_device* %71, i32 %73, i32 8, i32 65, i32 8, i32 0, i32* %74, i32 8, i32 %75)
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %22, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %9
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %21, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %21, align 4
  br label %83

83:                                               ; preds = %79, %9
  %84 = load %struct.sn9c102_device*, %struct.sn9c102_device** %10, align 8
  %85 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %11, align 8
  %86 = call i64 @sn9c102_i2c_wait(%struct.sn9c102_device* %84, %struct.sn9c102_sensor* %85)
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %21, align 4
  %91 = load %struct.sn9c102_device*, %struct.sn9c102_device** %10, align 8
  %92 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %11, align 8
  %93 = call i64 @sn9c102_i2c_detect_write_error(%struct.sn9c102_device* %91, %struct.sn9c102_sensor* %92)
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %83
  %101 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %11, align 8
  %102 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %83
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @PDBGG(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 -1, i32 0
  ret i32 %117
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @sn9c102_i2c_wait(%struct.sn9c102_device*, %struct.sn9c102_sensor*) #1

declare dso_local i64 @sn9c102_i2c_detect_write_error(%struct.sn9c102_device*, %struct.sn9c102_sensor*) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @PDBGG(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
