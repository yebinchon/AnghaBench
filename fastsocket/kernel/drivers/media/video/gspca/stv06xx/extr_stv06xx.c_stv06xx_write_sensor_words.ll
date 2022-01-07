; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_sensor_words.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_sensor_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"I2C: Command buffer contains %d entries\00", align 1
@I2C_BUFFER_LENGTH = common dso_local global i32 0, align 4
@I2C_MAX_WORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"I2C: Writing 0x%04x to reg 0x%02x\00", align 1
@I2C_WRITE_CMD = common dso_local global i32 0, align 4
@STV06XX_URB_MSG_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv06xx_write_sensor_words(%struct.sd* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sd*, %struct.sd** %5, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %11, align 8
  %17 = load %struct.sd*, %struct.sd** %5, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32, i32* @D_CONF, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %127, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %128

28:                                               ; preds = %24
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* @I2C_BUFFER_LENGTH, align 4
  %31 = call i32 @memset(i32* %29, i32 0, i32 %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %96, %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @I2C_MAX_WORDS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %101

42:                                               ; preds = %40
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 16, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 16, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32 %73, i32* %80, align 4
  %81 = load i32, i32* @D_CONF, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 2, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %42
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %32

101:                                              ; preds = %40
  %102 = load %struct.sd*, %struct.sd** %5, align 8
  %103 = getelementptr inbounds %struct.sd, %struct.sd* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 32
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 1
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 33
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @I2C_WRITE_CMD, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 34
  store i32 %113, i32* %115, align 4
  %116 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %117 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %118 = call i32 @usb_sndctrlpipe(%struct.usb_device* %117, i32 0)
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* @I2C_BUFFER_LENGTH, align 4
  %121 = load i32, i32* @STV06XX_URB_MSG_TIMEOUT, align 4
  %122 = call i32 @usb_control_msg(%struct.usb_device* %116, i32 %118, i32 4, i32 64, i32 1024, i32 0, i32* %119, i32 %120, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %101
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %131

127:                                              ; preds = %101
  br label %24

128:                                              ; preds = %24
  %129 = load %struct.sd*, %struct.sd** %5, align 8
  %130 = call i32 @stv06xx_write_sensor_finish(%struct.sd* %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @stv06xx_write_sensor_finish(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
