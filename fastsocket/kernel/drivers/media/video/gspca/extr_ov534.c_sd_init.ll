; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@OV534_REG_ADDRESS = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Sensor ID: %04x\00", align 1
@bridge_init = common dso_local global i32 0, align 4
@sensor_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = call i32 @ov534_reg_write(%struct.gspca_dev* %4, i32 231, i32 58)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @ov534_reg_write(%struct.gspca_dev* %6, i32 224, i32 8)
  %8 = call i32 @msleep(i32 100)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32, i32* @OV534_REG_ADDRESS, align 4
  %11 = call i32 @ov534_reg_write(%struct.gspca_dev* %9, i32 %10, i32 66)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @sccb_reg_write(%struct.gspca_dev* %12, i32 18, i32 128)
  %14 = call i32 @msleep(i32 10)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @sccb_reg_read(%struct.gspca_dev* %15, i32 10)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @sccb_reg_read(%struct.gspca_dev* %17, i32 10)
  %19 = shl i32 %18, 8
  store i32 %19, i32* %3, align 4
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @sccb_reg_read(%struct.gspca_dev* %20, i32 11)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @sccb_reg_read(%struct.gspca_dev* %22, i32 11)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @D_PROBE, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @PDEBUG(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = load i32, i32* @bridge_init, align 4
  %31 = load i32, i32* @bridge_init, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @reg_w_array(%struct.gspca_dev* %29, i32 %30, i32 %32)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @ov534_set_led(%struct.gspca_dev* %34, i32 1)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = load i32, i32* @sensor_init, align 4
  %38 = load i32, i32* @sensor_init, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @sccb_w_array(%struct.gspca_dev* %36, i32 %37, i32 %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = call i32 @ov534_reg_write(%struct.gspca_dev* %41, i32 224, i32 9)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 @ov534_set_led(%struct.gspca_dev* %43, i32 0)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @set_frame_rate(%struct.gspca_dev* %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

declare dso_local i32 @ov534_reg_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sccb_reg_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @reg_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ov534_set_led(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sccb_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_frame_rate(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
