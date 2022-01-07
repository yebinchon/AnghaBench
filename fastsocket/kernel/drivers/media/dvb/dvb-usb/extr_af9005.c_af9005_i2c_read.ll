; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"i2c_read i2caddr %x, reg %x, len %d\0A \00", align 1
@APO_REG_I2C_RW_SILICON_TUNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"i2c_read failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"i2c data read: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i64, i64, i64*, i32)* @af9005_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_i2c_read(%struct.dvb_usb_device* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i32 %17)
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %43, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %14, align 8
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %29 = load i32, i32* @APO_REG_I2C_RW_SILICON_TUNER, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @af9005_read_tuner_registers(%struct.dvb_usb_device* %28, i32 %29, i64 %30, i64* %14, i32 1)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %51

37:                                               ; preds = %23
  %38 = load i64, i64* %14, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %19

46:                                               ; preds = %19
  %47 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64*, i64** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @debug_dump(i64* %48, i32 %49, i32 (i8*)* bitcast (i32 (i8*, ...)* @deb_i2c to i32 (i8*)*))
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %34
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @deb_i2c(i8*, ...) #1

declare dso_local i32 @af9005_read_tuner_registers(%struct.dvb_usb_device*, i32, i64, i64*, i32) #1

declare dso_local i32 @debug_dump(i64*, i32, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
