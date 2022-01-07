; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_i2c_try_raw_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_i2c_try_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.sn9c102_sensor = type { i64, i32, i32 }

@SN9C102_I2C_2WIRES = common dso_local global i64 0, align 8
@SN9C102_I2C_400KHZ = common dso_local global i32 0, align 4
@SN9C102_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"I2C read: address 0x%02X, first read byte: 0x%02X\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"I2C read failed for %s image sensor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %0, %struct.sn9c102_sensor* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sn9c102_device*, align 8
  %9 = alloca %struct.sn9c102_sensor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %8, align 8
  store %struct.sn9c102_sensor* %1, %struct.sn9c102_sensor** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load %struct.sn9c102_device*, %struct.sn9c102_device** %8, align 8
  %20 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %19, i32 0, i32 1
  %21 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  store %struct.usb_device* %21, %struct.usb_device** %14, align 8
  %22 = load %struct.sn9c102_device*, %struct.sn9c102_device** %8, align 8
  %23 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %26 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SN9C102_I2C_2WIRES, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 128, i32 0
  %32 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %33 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SN9C102_I2C_400KHZ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = or i32 %31, %39
  %41 = or i32 %40, 16
  %42 = load i32*, i32** %15, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  store i32 16, i32* %51, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %54 = call i32 @usb_sndctrlpipe(%struct.usb_device* %53, i32 0)
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* @SN9C102_CTRL_TIMEOUT, align 4
  %57 = call i32 @usb_control_msg(%struct.usb_device* %52, i32 %54, i32 8, i32 65, i32 8, i32 0, i32* %55, i32 8, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %6
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %60, %6
  %65 = load %struct.sn9c102_device*, %struct.sn9c102_device** %8, align 8
  %66 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %67 = call i64 @sn9c102_i2c_wait(%struct.sn9c102_device* %65, %struct.sn9c102_sensor* %66)
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %17, align 4
  %72 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %73 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SN9C102_I2C_2WIRES, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 128, i32 0
  %79 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %80 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SN9C102_I2C_400KHZ, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = or i32 %78, %86
  %88 = load i32, i32* %12, align 4
  %89 = shl i32 %88, 4
  %90 = or i32 %87, %89
  %91 = or i32 %90, 2
  %92 = load i32*, i32** %15, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 7
  store i32 16, i32* %98, align 4
  %99 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %100 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %101 = call i32 @usb_sndctrlpipe(%struct.usb_device* %100, i32 0)
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* @SN9C102_CTRL_TIMEOUT, align 4
  %104 = call i32 @usb_control_msg(%struct.usb_device* %99, i32 %101, i32 8, i32 65, i32 8, i32 0, i32* %102, i32 8, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %64
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %107, %64
  %112 = load %struct.sn9c102_device*, %struct.sn9c102_device** %8, align 8
  %113 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %114 = call i64 @sn9c102_i2c_wait(%struct.sn9c102_device* %112, %struct.sn9c102_sensor* %113)
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %17, align 4
  %119 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %120 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %121 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %120, i32 0)
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* @SN9C102_CTRL_TIMEOUT, align 4
  %124 = call i32 @usb_control_msg(%struct.usb_device* %119, i32 %121, i32 0, i32 193, i32 10, i32 0, i32* %122, i32 5, i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %111
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %127, %111
  %132 = load %struct.sn9c102_device*, %struct.sn9c102_device** %8, align 8
  %133 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %134 = call i64 @sn9c102_i2c_detect_read_error(%struct.sn9c102_device* %132, %struct.sn9c102_sensor* %133)
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @PDBGG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %131
  %147 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %9, align 8
  %148 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  store i32 -1, i32* %7, align 4
  br label %186

151:                                              ; preds = %131
  %152 = load i32*, i32** %13, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %182

154:                                              ; preds = %151
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %178, %154
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* %16, align 4
  %161 = icmp slt i32 %160, 5
  br label %162

162:                                              ; preds = %159, %155
  %163 = phi i1 [ false, %155 ], [ %161, %159 ]
  br i1 %163, label %164, label %181

164:                                              ; preds = %162
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sub nsw i32 4, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %16, align 4
  %174 = sub nsw i32 %172, %173
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %171, i64 %176
  store i32 %170, i32* %177, align 4
  br label %178

178:                                              ; preds = %164
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %155

181:                                              ; preds = %162
  br label %182

182:                                              ; preds = %181, %151
  %183 = load i32*, i32** %15, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %182, %146
  %187 = load i32, i32* %7, align 4
  ret i32 %187
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @sn9c102_i2c_wait(%struct.sn9c102_device*, %struct.sn9c102_sensor*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @sn9c102_i2c_detect_read_error(%struct.sn9c102_device*, %struct.sn9c102_sensor*) #1

declare dso_local i32 @PDBGG(i8*, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
