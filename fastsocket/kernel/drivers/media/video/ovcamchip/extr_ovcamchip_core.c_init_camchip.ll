; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_init_camchip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_init_camchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@I2C_DETECT_RETRIES = common dso_local global i32 0, align 4
@GENERIC_REG_ID_HIGH = common dso_local global i32 0, align 4
@GENERIC_REG_ID_LOW = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"I2C synced in %d attempt(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @init_camchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_camchip(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call i32 @ov_write(%struct.i2c_client* %8, i32 18, i32 128)
  %10 = call i32 @msleep(i32 150)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @I2C_DETECT_RETRIES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %51

21:                                               ; preds = %19
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load i32, i32* @GENERIC_REG_ID_HIGH, align 4
  %24 = call i64 @ov_read(%struct.i2c_client* %22, i32 %23, i8* %6)
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = load i32, i32* @GENERIC_REG_ID_LOW, align 4
  %29 = call i64 @ov_read(%struct.i2c_client* %27, i32 %28, i8* %7)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 127
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 162
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %48

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = call i32 @ov_write(%struct.i2c_client* %43, i32 18, i32 128)
  %45 = call i32 @msleep(i32 150)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = call i64 @ov_read(%struct.i2c_client* %46, i32 0, i8* %7)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %11

51:                                               ; preds = %19
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ov_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ov_read(%struct.i2c_client*, i32, i8*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
