; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@OV534_REG_ADDRESS = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Sensor ID: %04x\00", align 1
@bridge_init = common dso_local global i32 0, align 4
@sensor_init = common dso_local global i32 0, align 4
@bridge_init_2 = common dso_local global i32 0, align 4
@sensor_init_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = call i32 @reg_w(%struct.gspca_dev* %4, i32 231, i32 58)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @reg_w(%struct.gspca_dev* %6, i32 224, i32 8)
  %8 = call i32 @msleep(i32 100)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32, i32* @OV534_REG_ADDRESS, align 4
  %11 = call i32 @reg_w(%struct.gspca_dev* %9, i32 %10, i32 96)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @sccb_write(%struct.gspca_dev* %12, i32 18, i32 128)
  %14 = call i32 @msleep(i32 10)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @sccb_read(%struct.gspca_dev* %15, i32 10)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @sccb_read(%struct.gspca_dev* %17, i32 10)
  %19 = shl i32 %18, 8
  store i32 %19, i32* %3, align 4
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @sccb_read(%struct.gspca_dev* %20, i32 11)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @sccb_read(%struct.gspca_dev* %22, i32 11)
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
  %35 = load i32, i32* @sensor_init, align 4
  %36 = load i32, i32* @sensor_init, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @sccb_w_array(%struct.gspca_dev* %34, i32 %35, i32 %37)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* @bridge_init_2, align 4
  %41 = load i32, i32* @bridge_init_2, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @reg_w_array(%struct.gspca_dev* %39, i32 %40, i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @sensor_init_2, align 4
  %46 = load i32, i32* @sensor_init_2, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @sccb_w_array(%struct.gspca_dev* %44, i32 %45, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @reg_w(%struct.gspca_dev* %49, i32 224, i32 0)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @reg_w(%struct.gspca_dev* %51, i32 224, i32 1)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = call i32 @set_led(%struct.gspca_dev* %53, i32 0)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = call i32 @reg_w(%struct.gspca_dev* %55, i32 224, i32 0)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  ret i32 %59
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sccb_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sccb_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @reg_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sccb_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
