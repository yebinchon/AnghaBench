; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usbvision_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usbvision_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }
%struct.usb_usbvision = type { i32 }

@DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"got NAK from device, message #%d\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @usbvision_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca %struct.usb_usbvision*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %12, align 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call i64 @i2c_get_adapdata(%struct.i2c_adapter* %13)
  %15 = inttoptr i64 %14 to %struct.usb_usbvision*
  store %struct.usb_usbvision* %15, %struct.usb_usbvision** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %106, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %109

20:                                               ; preds = %16
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i64 %23
  store %struct.i2c_msg* %24, %struct.i2c_msg** %8, align 8
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_find_address(%struct.i2c_adapter* %25, %struct.i2c_msg* %26, i32 %29, i8* %12)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %20
  %34 = load i32, i32* @DBG_I2C, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @PDEBUG(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EREMOTEIO, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  store i32 %45, i32* %4, align 4
  br label %111

46:                                               ; preds = %20
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I2C_M_RD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %46
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %9, align 8
  %55 = load i8, i8* %12, align 1
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usbvision_i2c_read(%struct.usb_usbvision* %54, i8 zeroext %55, i32 %58, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %53
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  br label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EREMOTEIO, align 4
  %75 = sub nsw i32 0, %74
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %72, %71 ], [ %75, %73 ]
  store i32 %77, i32* %4, align 4
  br label %111

78:                                               ; preds = %53
  br label %105

79:                                               ; preds = %46
  %80 = load %struct.usb_usbvision*, %struct.usb_usbvision** %9, align 8
  %81 = load i8, i8* %12, align 1
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @usbvision_i2c_write(%struct.usb_usbvision* %80, i8 zeroext %81, i32 %84, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %79
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  br label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EREMOTEIO, align 4
  %101 = sub nsw i32 0, %100
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ]
  store i32 %103, i32* %4, align 4
  br label %111

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104, %78
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %16

109:                                              ; preds = %16
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %102, %76, %44
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @usb_find_address(%struct.i2c_adapter*, %struct.i2c_msg*, i32, i8*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @usbvision_i2c_read(%struct.usb_usbvision*, i8 zeroext, i32, i32) #1

declare dso_local i32 @usbvision_i2c_write(%struct.usb_usbvision*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
