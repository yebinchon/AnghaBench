; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usbvision_i2c_write_max4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usbvision_i2c_write_max4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32 }

@USBVISION_OP_CODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USBVISION_SER_ADRS = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@USBVISION_SER_CONT = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i32 0, align 4
@DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wrote %x at address %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8, i8*, i16)* @usbvision_i2c_write_max4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_i2c_write_max4(%struct.usb_usbvision* %0, i8 zeroext %1, i8* %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_usbvision*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %16 = load i16, i16* %9, align 2
  %17 = sext i16 %16 to i32
  %18 = and i32 %17, 7
  %19 = or i32 %18, 16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %14, align 1
  %21 = load i8, i8* %7, align 1
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i8, i8* %14, align 1
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %40, %4
  %26 = load i32, i32* %12, align 4
  %27 = load i16, i16* %9, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 %38
  store i8 %35, i8* %39, align 1
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %25

43:                                               ; preds = %25
  store i32 5, i32* %11, align 4
  br label %44

44:                                               ; preds = %115, %43
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %46 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %49 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_sndctrlpipe(i32 %50, i32 1)
  %52 = load i32, i32* @USBVISION_OP_CODE, align 4
  %53 = load i32, i32* @USB_DIR_OUT, align 4
  %54 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %57 = or i32 %55, %56
  %58 = load i64, i64* @USBVISION_SER_ADRS, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %61 = load i16, i16* %9, align 2
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %62, 2
  %64 = trunc i32 %63 to i16
  %65 = load i32, i32* @HZ, align 4
  %66 = call i32 @usb_control_msg(i32 %47, i32 %51, i32 %52, i32 %57, i32 0, i32 %59, i8* %60, i16 signext %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %44
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %143

71:                                               ; preds = %44
  %72 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %73 = load i32, i32* @USBVISION_SER_CONT, align 4
  %74 = load i16, i16* %9, align 2
  %75 = sext i16 %74 to i32
  %76 = and i32 %75, 7
  %77 = or i32 %76, 16
  %78 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %72, i32 %73, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %143

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %95, %83
  %85 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %86 = load i32, i32* @USBVISION_SER_CONT, align 4
  %87 = call i32 @usbvision_read_reg(%struct.usb_usbvision* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 16
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %84, label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %143

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, 32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %116

107:                                              ; preds = %102
  %108 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %109 = load i32, i32* @USBVISION_SER_CONT, align 4
  %110 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %108, i32 %109, i32 0)
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %11, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 -1, i32* %5, align 4
  br label %143

115:                                              ; preds = %107
  br label %44

116:                                              ; preds = %106
  %117 = load i32, i32* @i2c_debug, align 4
  %118 = load i32, i32* @DBG_I2C, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %136, %121
  %123 = load i32, i32* %15, align 4
  %124 = load i16, i16* %9, align 2
  %125 = sext i16 %124 to i32
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %122
  %128 = load i32, i32* @DBG_I2C, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = load i8, i8* %7, align 1
  %135 = call i32 @PDEBUG(i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 zeroext %133, i8 zeroext %134)
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %122

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %116
  %141 = load i16, i16* %9, align 2
  %142 = sext i16 %141 to i32
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %140, %114, %100, %81, %69
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i16 signext, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

declare dso_local i32 @usbvision_read_reg(%struct.usb_usbvision*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
