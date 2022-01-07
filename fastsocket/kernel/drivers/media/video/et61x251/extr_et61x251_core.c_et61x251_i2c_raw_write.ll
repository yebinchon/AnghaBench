; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_i2c_raw_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_i2c_raw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i32*, %struct.TYPE_2__, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.usb_device = type { i32 }

@ET61X251_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"I2C raw write failed for %s image sensor\00", align 1
@.str.1 = private unnamed_addr constant [170 x i8] c"I2C raw write: %u bytes, address = 0x%02X, data1 = 0x%02X, data2 = 0x%02X, data3 = 0x%02X, data4 = 0x%02X, data5 = 0x%02X, data6 = 0x%02X, data7 = 0x%02X, data8 = 0x%02X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et61x251_i2c_raw_write(%struct.et61x251_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.et61x251_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.usb_device*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.et61x251_device* %0, %struct.et61x251_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %27 = load %struct.et61x251_device*, %struct.et61x251_device** %12, align 8
  %28 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %27, i32 0, i32 2
  %29 = load %struct.usb_device*, %struct.usb_device** %28, align 8
  store %struct.usb_device* %29, %struct.usb_device** %23, align 8
  %30 = load %struct.et61x251_device*, %struct.et61x251_device** %12, align 8
  %31 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %24, align 8
  store i32 0, i32* %25, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32*, i32** %24, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32*, i32** %24, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32*, i32** %24, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32*, i32** %24, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32*, i32** %24, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32*, i32** %24, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %21, align 4
  %52 = load i32*, i32** %24, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %56 = call i32 @usb_sndctrlpipe(%struct.usb_device* %55, i32 0)
  %57 = load i32*, i32** %24, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @ET61X251_CTRL_TIMEOUT, align 4
  %61 = call i32 @usb_control_msg(%struct.usb_device* %54, i32 %56, i32 0, i32 65, i32 0, i32 129, i32* %57, i32 %59, i32 %60)
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %26, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %11
  %65 = load i32, i32* %26, align 4
  %66 = load i32, i32* %25, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %25, align 4
  br label %68

68:                                               ; preds = %64, %11
  %69 = load i32, i32* %22, align 4
  %70 = load i32*, i32** %24, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.et61x251_device*, %struct.et61x251_device** %12, align 8
  %73 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %24, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.et61x251_device*, %struct.et61x251_device** %12, align 8
  %79 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 2
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 %83, 4
  %85 = or i32 %82, %84
  %86 = load i32*, i32** %24, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %89 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %90 = call i32 @usb_sndctrlpipe(%struct.usb_device* %89, i32 0)
  %91 = load i32*, i32** %24, align 8
  %92 = load i32, i32* @ET61X251_CTRL_TIMEOUT, align 4
  %93 = call i32 @usb_control_msg(%struct.usb_device* %88, i32 %90, i32 0, i32 65, i32 0, i32 136, i32* %91, i32 3, i32 %92)
  store i32 %93, i32* %26, align 4
  %94 = load i32, i32* %26, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %68
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %25, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %25, align 4
  br label %100

100:                                              ; preds = %96, %68
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %24, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %105 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %106 = call i32 @usb_sndctrlpipe(%struct.usb_device* %105, i32 0)
  %107 = load i32*, i32** %24, align 8
  %108 = load i32, i32* @ET61X251_CTRL_TIMEOUT, align 4
  %109 = call i32 @usb_control_msg(%struct.usb_device* %104, i32 %106, i32 0, i32 65, i32 0, i32 128, i32* %107, i32 1, i32 %108)
  store i32 %109, i32* %26, align 4
  %110 = load i32, i32* %26, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %25, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %25, align 4
  br label %116

116:                                              ; preds = %112, %100
  %117 = load %struct.et61x251_device*, %struct.et61x251_device** %12, align 8
  %118 = load %struct.et61x251_device*, %struct.et61x251_device** %12, align 8
  %119 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %118, i32 0, i32 1
  %120 = call i64 @et61x251_i2c_wait(%struct.et61x251_device* %117, %struct.TYPE_2__* %119)
  %121 = load i32, i32* %25, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* %25, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load %struct.et61x251_device*, %struct.et61x251_device** %12, align 8
  %129 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %116
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %21, align 4
  %144 = call i32 @PDBGG(i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %25, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 -1, i32 0
  ret i32 %148
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @et61x251_i2c_wait(%struct.et61x251_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @PDBGG(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
