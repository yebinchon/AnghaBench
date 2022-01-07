; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_init_ov_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_init_ov_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@i2c_detect_tries = common dso_local global i32 0, align 4
@OV7610_REG_ID_HIGH = common dso_local global i32 0, align 4
@OV7610_REG_ID_LOW = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"I2C synced in %d attempt(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @init_ov_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ov_sensor(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ov51x_set_slave_ids(%struct.sd* %7, i32 %8)
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = call i32 @i2c_w(%struct.sd* %10, i32 18, i32 128)
  %12 = call i32 @msleep(i32 150)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @i2c_detect_tries, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = load i32, i32* @OV7610_REG_ID_HIGH, align 4
  %20 = call i64 @i2c_r(%struct.sd* %18, i32 %19)
  %21 = icmp eq i64 %20, 127
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = load i32, i32* @OV7610_REG_ID_LOW, align 4
  %25 = call i64 @i2c_r(%struct.sd* %23, i32 %24)
  %26 = icmp eq i64 %25, 162
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @D_PROBE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @PDEBUG(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  br label %44

31:                                               ; preds = %22, %17
  %32 = load %struct.sd*, %struct.sd** %4, align 8
  %33 = call i32 @i2c_w(%struct.sd* %32, i32 18, i32 128)
  %34 = call i32 @msleep(i32 150)
  %35 = load %struct.sd*, %struct.sd** %4, align 8
  %36 = call i64 @i2c_r(%struct.sd* %35, i32 0)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %13

43:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38, %27
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ov51x_set_slave_ids(%struct.sd*, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
