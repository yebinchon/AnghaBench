; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@REQUEST_NEW_I2C_READ = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"i2c read error (status = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1
@REQUEST_NEW_I2C_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"i2c write error (status = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib0700_i2c_xfer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_i2c_xfer_new(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [255 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %20 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %19)
  store %struct.dvb_usb_device* %20, %struct.dvb_usb_device** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 0
  %23 = call i64 @mutex_lock_interruptible(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %237

28:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %229, %28
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %232

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %50

37:                                               ; preds = %33
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %40
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I2C_M_NOSTART, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i64 %59
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @I2C_M_RD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %144

66:                                               ; preds = %56
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %69
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 1
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 7
  %76 = load i32, i32* %12, align 4
  %77 = shl i32 %76, 6
  %78 = or i32 %75, %77
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 63
  %86 = or i32 %78, %85
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %18, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %90, 6
  %92 = and i32 %91, 192
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 %93, 4
  %95 = and i32 %94, 48
  %96 = or i32 %92, %95
  store i32 %96, i32* %16, align 4
  %97 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @usb_rcvctrlpipe(i32 %102, i32 0)
  %104 = load i32, i32* @REQUEST_NEW_I2C_READ, align 4
  %105 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %106 = load i32, i32* @USB_DIR_IN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 %112
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i64 %118
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %123 = call i32 @usb_control_msg(i32 %99, i32 %103, i32 %104, i32 %107, i32 %108, i32 %109, i32* %115, i32 %121, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %66
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %232

129:                                              ; preds = %66
  %130 = call i32 @deb_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i64 %133
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i64 %139
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @debug_dump(i32* %136, i32 %142, i32 (i8*)* @deb_data)
  br label %228

144:                                              ; preds = %56
  %145 = load i32, i32* @REQUEST_NEW_I2C_WRITE, align 4
  %146 = getelementptr inbounds [255 x i32], [255 x i32]* %13, i64 0, i64 0
  store i32 %145, i32* %146, align 16
  %147 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i64 %149
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 1
  %154 = getelementptr inbounds [255 x i32], [255 x i32]* %13, i64 0, i64 1
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %11, align 4
  %156 = shl i32 %155, 7
  %157 = load i32, i32* %12, align 4
  %158 = shl i32 %157, 6
  %159 = or i32 %156, %158
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 %162
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 63
  %167 = or i32 %159, %166
  %168 = getelementptr inbounds [255 x i32], [255 x i32]* %13, i64 0, i64 2
  store i32 %167, i32* %168, align 8
  %169 = load i32, i32* %10, align 4
  %170 = shl i32 %169, 6
  %171 = and i32 %170, 192
  %172 = load i32, i32* %9, align 4
  %173 = shl i32 %172, 4
  %174 = and i32 %173, 48
  %175 = or i32 %171, %174
  %176 = getelementptr inbounds [255 x i32], [255 x i32]* %13, i64 0, i64 3
  store i32 %175, i32* %176, align 4
  %177 = getelementptr inbounds [255 x i32], [255 x i32]* %13, i64 0, i64 4
  %178 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %178, i64 %180
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i64 %186
  %188 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @memcpy(i32* %177, i32* %183, i32 %189)
  %191 = call i32 @deb_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %192 = getelementptr inbounds [255 x i32], [255 x i32]* %13, i64 0, i64 0
  %193 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i64 %195
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 4
  %200 = call i32 @debug_dump(i32* %192, i32 %199, i32 (i8*)* @deb_data)
  %201 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %202 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %205 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @usb_sndctrlpipe(i32 %206, i32 0)
  %208 = load i32, i32* @REQUEST_NEW_I2C_WRITE, align 4
  %209 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %210 = load i32, i32* @USB_DIR_OUT, align 4
  %211 = or i32 %209, %210
  %212 = getelementptr inbounds [255 x i32], [255 x i32]* %13, i64 0, i64 0
  %213 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %213, i64 %215
  %217 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 4
  %220 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %221 = call i32 @usb_control_msg(i32 %203, i32 %207, i32 %208, i32 %211, i32 0, i32 0, i32* %212, i32 %219, i32 %220)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %144
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  br label %232

227:                                              ; preds = %144
  br label %228

228:                                              ; preds = %227, %129
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %15, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %15, align 4
  br label %29

232:                                              ; preds = %224, %126, %29
  %233 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %234 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %233, i32 0, i32 0
  %235 = call i32 @mutex_unlock(i32* %234)
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %232, %25
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @deb_data(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
