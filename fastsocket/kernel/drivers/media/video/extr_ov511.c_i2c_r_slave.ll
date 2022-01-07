; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_i2c_r_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_i2c_r_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64, i8, i32 }

@BCL_OV518 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Couldn't restore primary I2C slave\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8, i8)* @i2c_r_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_r_slave(%struct.usb_ov511* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %9 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = load i8, i8* %5, align 1
  %13 = call i32 @i2c_set_slave_internal(%struct.usb_ov511* %11, i8 zeroext %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %32

17:                                               ; preds = %3
  %18 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BCL_OV518, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %25 = load i8, i8* %6, align 1
  %26 = call i32 @ov518_i2c_read_internal(%struct.usb_ov511* %24, i8 zeroext %25)
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %17
  %28 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %29 = load i8, i8* %6, align 1
  %30 = call i32 @ov511_i2c_read_internal(%struct.usb_ov511* %28, i8 zeroext %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %34 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %35 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = call i32 @i2c_set_slave_internal(%struct.usb_ov511* %33, i8 zeroext %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %43 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_set_slave_internal(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @ov518_i2c_read_internal(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @ov511_i2c_read_internal(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
