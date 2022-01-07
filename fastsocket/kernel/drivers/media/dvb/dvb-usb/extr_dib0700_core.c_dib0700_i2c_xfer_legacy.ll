; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_legacy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.dvb_usb_device = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@REQUEST_I2C_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"I2C read failed on address 0x%02x\0A\00", align 1
@REQUEST_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib0700_i2c_xfer_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_i2c_xfer_legacy(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [255 x i32], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %138

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %130, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %133

26:                                               ; preds = %22
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i64 %29
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  %34 = getelementptr inbounds [255 x i32], [255 x i32]* %11, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [255 x i32], [255 x i32]* %11, i64 0, i64 2
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 %38
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 %44
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32* %35, i32 %41, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %113

53:                                               ; preds = %26
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 %57
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I2C_M_RD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %53
  %65 = load i32, i32* @REQUEST_I2C_READ, align 4
  %66 = getelementptr inbounds [255 x i32], [255 x i32]* %11, i64 0, i64 0
  store i32 %65, i32* %66, align 16
  %67 = getelementptr inbounds [255 x i32], [255 x i32]* %11, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %71 = getelementptr inbounds [255 x i32], [255 x i32]* %11, i64 0, i64 0
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 2
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %82
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %89
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dib0700_ctrl_rd(%struct.dvb_usb_device* %70, i32* %71, i32 %78, i32 %85, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %64
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i64 %98
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @deb_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %133

103:                                              ; preds = %64
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i64 %108
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 1
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %129

113:                                              ; preds = %53, %26
  %114 = load i32, i32* @REQUEST_I2C_WRITE, align 4
  %115 = getelementptr inbounds [255 x i32], [255 x i32]* %11, i64 0, i64 0
  store i32 %114, i32* %115, align 16
  %116 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %117 = getelementptr inbounds [255 x i32], [255 x i32]* %11, i64 0, i64 0
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i64 %120
  %122 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 2
  %125 = call i64 @dib0700_ctrl_wr(%struct.dvb_usb_device* %116, i32* %117, i32 %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %133

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128, %103
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %22

133:                                              ; preds = %127, %95, %22
  %134 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %135 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %133, %18
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dib0700_ctrl_rd(%struct.dvb_usb_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i64 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
