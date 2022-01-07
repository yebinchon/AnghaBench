; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usb_find_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usb_find_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i16, i32 }

@I2C_M_TEN = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [46 x i8] c"died at extended address code,\09while writing\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [46 x i8] c"died at extended address code, while reading\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32, i8*)* @usb_find_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_find_address(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 4
  store i16 %15, i16* %10, align 2
  %16 = load i16, i16* %10, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @I2C_M_TEN, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %4
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 7
  %27 = and i32 %26, 3
  %28 = or i32 240, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %11, align 1
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %31 = load i8, i8* %11, align 1
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @try_write_address(%struct.i2c_adapter* %30, i8 zeroext %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EREMOTEIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %116

42:                                               ; preds = %22
  %43 = load i8, i8* %11, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 %43, i8* %45, align 1
  %46 = load i16, i16* %10, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @I2C_M_RD, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %42
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %11, align 1
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %58 = load i8, i8* %11, align 1
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @try_read_address(%struct.i2c_adapter* %57, i8 zeroext %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EREMOTEIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %116

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %42
  br label %115

71:                                               ; preds = %4
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 1
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %11, align 1
  %77 = load i16, i16* %10, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* @I2C_M_RD, align 2
  %80 = zext i16 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %85, 1
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %11, align 1
  br label %88

88:                                               ; preds = %83, %71
  %89 = load i8, i8* %11, align 1
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 %89, i8* %91, align 1
  %92 = load i16, i16* %10, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* @I2C_M_RD, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %100 = load i8, i8* %11, align 1
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @try_read_address(%struct.i2c_adapter* %99, i8 zeroext %100, i32 %101)
  store i32 %102, i32* %12, align 4
  br label %108

103:                                              ; preds = %88
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %105 = load i8, i8* %11, align 1
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @try_write_address(%struct.i2c_adapter* %104, i8 zeroext %105, i32 %106)
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @EREMOTEIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %116

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %70
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %111, %63, %36
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @try_write_address(%struct.i2c_adapter*, i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @try_read_address(%struct.i2c_adapter*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
