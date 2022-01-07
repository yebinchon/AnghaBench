; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_send_usb_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_send_usb_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_i2c = type { i32, i32, i32, i64, %struct.cx231xx* }
%struct.cx231xx = type { i32 }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32, i32, i32 }
%struct.VENDOR_REQUEST_IN = type { i32, i32, i32, i32, i32, i64, i64 }

@I2C_SYNC = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"UsbInterface::sendCommand, failed with status -%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_send_usb_command(%struct.cx231xx_i2c* %0, %struct.cx231xx_i2c_xfer_data* %1) #0 {
  %3 = alloca %struct.cx231xx_i2c*, align 8
  %4 = alloca %struct.cx231xx_i2c_xfer_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca %struct.VENDOR_REQUEST_IN, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx231xx_i2c* %0, %struct.cx231xx_i2c** %3, align 8
  store %struct.cx231xx_i2c_xfer_data* %1, %struct.cx231xx_i2c_xfer_data** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %12, i32 0, i32 4
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %3, align 8
  %16 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %3, align 8
  %19 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %3, align 8
  %22 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %25 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %49

29:                                               ; preds = %2
  %30 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %31 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 9
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 4
  %36 = or i32 %33, %35
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 2
  %39 = or i32 %36, %38
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 1
  %42 = or i32 %39, %41
  %43 = load i32, i32* @I2C_SYNC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 6
  %47 = or i32 %44, %46
  %48 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  br label %69

49:                                               ; preds = %2
  %50 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %51 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 9
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 4
  %56 = or i32 %53, %55
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 2
  %59 = or i32 %56, %58
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 1
  %62 = or i32 %59, %61
  %63 = load i32, i32* @I2C_SYNC, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 6
  %67 = or i32 %64, %66
  %68 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  br label %69

69:                                               ; preds = %49, %29
  %70 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %71 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @I2C_M_RD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %3, align 8
  %78 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 4
  %81 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 6
  store i64 %80, i64* %81, align 8
  br label %87

82:                                               ; preds = %69
  %83 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %3, align 8
  %84 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 6
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %76
  %88 = load i32, i32* %8, align 4
  switch i32 %88, label %102 [
    i32 0, label %89
    i32 1, label %91
    i32 2, label %97
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %102

91:                                               ; preds = %87
  %92 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %93 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  br label %102

97:                                               ; preds = %87
  %98 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %99 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %87, %97, %91, %89
  %103 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %104 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 4
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 5
  store i64 0, i64* %107, align 8
  %108 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %109 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load i32, i32* @USB_DIR_IN, align 4
  %114 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 3
  store i32 %113, i32* %114, align 4
  %115 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %116 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memset(i32 %117, i32 0, i32 %119)
  br label %124

121:                                              ; preds = %102
  %122 = load i32, i32* @USB_DIR_OUT, align 4
  %123 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 3
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %112
  %125 = load %struct.cx231xx_i2c_xfer_data*, %struct.cx231xx_i2c_xfer_data** %4, align 8
  %126 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %7, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  %129 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %130 = call i32 @cx231xx_send_vendor_cmd(%struct.cx231xx* %129, %struct.VENDOR_REQUEST_IN* %7)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @cx231xx_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cx231xx_send_vendor_cmd(%struct.cx231xx*, %struct.VENDOR_REQUEST_IN*) #1

declare dso_local i32 @cx231xx_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
