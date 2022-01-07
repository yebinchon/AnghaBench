; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov518_i2c_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov518_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@R51x_I2C_SADDR_2 = common dso_local global i32 0, align 4
@R518_I2C_CTL = common dso_local global i32 0, align 4
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ov518_i2c_r %02x %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @ov518_i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov518_i2c_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = load i32, i32* @R51x_I2C_SADDR_2, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @reg_w(%struct.sd* %6, i32 %7, i32 %8)
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = load i32, i32* @R518_I2C_CTL, align 4
  %12 = call i32 @reg_w(%struct.sd* %10, i32 %11, i32 3)
  %13 = load %struct.sd*, %struct.sd** %3, align 8
  %14 = load i32, i32* @R518_I2C_CTL, align 4
  %15 = call i32 @reg_w(%struct.sd* %13, i32 %14, i32 5)
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = load i32, i32* @R51x_I2C_DATA, align 4
  %18 = call i32 @reg_r(%struct.sd* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @D_USBI, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @PDEBUG(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
