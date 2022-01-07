; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ttusb2.c_ttusb2_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ttusb2.c_ttusb2_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32 }

@ttusb2_i2c_xfer.obuf = internal global [60 x i32] zeroinitializer, align 16
@ttusb2_i2c_xfer.ibuf = internal global [60 x i32] zeroinitializer, align 16
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"more than 2 i2c messages at a time is not handled yet. TODO.\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@CMD_I2C_XFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"i2c transfer failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ttusb2_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb2_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %8, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %134

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %126, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %129

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 %39
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I2C_M_RD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %35, %30
  %47 = phi i1 [ false, %30 ], [ %45, %35 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i64 %51
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 1
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 0), align 16
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i64 %60
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 1), align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %46
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 2), align 8
  br label %75

74:                                               ; preds = %46
  store i32 0, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 2), align 8
  br label %75

75:                                               ; preds = %74, %66
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i64 %78
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i64 %84
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 3), i32* %81, i32 %87)
  %89 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %90 = load i32, i32* @CMD_I2C_XFER, align 4
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i64 %93
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 3
  %98 = load i32, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 2), align 8
  %99 = add nsw i32 %98, 3
  %100 = call i64 @ttusb2_msg(%struct.dvb_usb_device* %89, i32 %90, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 0), i32 %97, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.ibuf, i64 0, i64 0), i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %75
  %103 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %129

104:                                              ; preds = %75
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i64 %111
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i64 %118
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memcpy(i32* %114, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.ibuf, i64 0, i64 3), i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %107, %104
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %26

129:                                              ; preds = %102, %26
  %130 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %131 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %17
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ttusb2_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
