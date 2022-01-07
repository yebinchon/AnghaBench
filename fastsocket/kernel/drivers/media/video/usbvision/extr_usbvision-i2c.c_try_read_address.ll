; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_try_read_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_try_read_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.usb_usbvision = type { i32 }

@DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Needed %d retries for address %#2x\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Maybe there's no device at this address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8, i32)* @try_read_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_read_address(%struct.i2c_adapter* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_usbvision*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call i64 @i2c_get_adapdata(%struct.i2c_adapter* %11)
  %13 = inttoptr i64 %12 to %struct.usb_usbvision*
  store %struct.usb_usbvision* %13, %struct.usb_usbvision** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %34, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %20 = load i8, i8* %5, align 1
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %22 = call i32 @usbvision_i2c_read(%struct.usb_usbvision* %19, i8 zeroext %20, i8* %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %37

26:                                               ; preds = %18
  %27 = call i32 @udelay(i32 5)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  %33 = call i32 @udelay(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %14

37:                                               ; preds = %31, %25, %14
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* @DBG_I2C, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (i32, i8*, ...) @PDEBUG(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* @DBG_I2C, align 4
  %47 = call i32 (i32, i8*, ...) @PDEBUG(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i64 @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @usbvision_i2c_read(%struct.usb_usbvision*, i8 zeroext, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
