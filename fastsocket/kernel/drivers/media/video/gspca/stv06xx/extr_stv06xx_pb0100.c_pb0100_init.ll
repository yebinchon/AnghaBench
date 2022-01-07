; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@STV_REG00 = common dso_local global i32 0, align 4
@STV_SCAN_RATE = common dso_local global i32 0, align 4
@PB_RESET = common dso_local global i32 0, align 4
@PB_CONTROL = common dso_local global i32 0, align 4
@PB_PREADCTRL = common dso_local global i32 0, align 4
@PB_ADCGLOBALGAIN = common dso_local global i32 0, align 4
@PB_R28 = common dso_local global i32 0, align 4
@PB_ADCMAXGAIN = common dso_local global i32 0, align 4
@PB_ADCMINGAIN = common dso_local global i32 0, align 4
@PB_R54 = common dso_local global i32 0, align 4
@PB_R55 = common dso_local global i32 0, align 4
@PB_UPDATEINT = common dso_local global i32 0, align 4
@PB_R15 = common dso_local global i32 0, align 4
@PB_R17 = common dso_local global i32 0, align 4
@PB_EXPGAIN = common dso_local global i32 0, align 4
@PB_VOFFSET = common dso_local global i32 0, align 4
@PB_ADCGAINH = common dso_local global i32 0, align 4
@PB_ADCGAINL = common dso_local global i32 0, align 4
@STV_REG03 = common dso_local global i32 0, align 4
@STV_REG04 = common dso_local global i32 0, align 4
@PB_ROWSPEED = common dso_local global i32 0, align 4
@PB_CFILLIN = common dso_local global i32 0, align 4
@PB_VBL = common dso_local global i32 0, align 4
@PB_FINTTIME = common dso_local global i32 0, align 4
@PB_RINTTIME = common dso_local global i32 0, align 4
@STV_REG01 = common dso_local global i32 0, align 4
@STV_REG02 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @pb0100_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb0100_init(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load %struct.sd*, %struct.sd** %2, align 8
  %4 = load i32, i32* @STV_REG00, align 4
  %5 = call i32 @stv06xx_write_bridge(%struct.sd* %3, i32 %4, i32 1)
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = load i32, i32* @STV_SCAN_RATE, align 4
  %8 = call i32 @stv06xx_write_bridge(%struct.sd* %6, i32 %7, i32 0)
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = load i32, i32* @PB_RESET, align 4
  %11 = call i32 @stv06xx_write_sensor(%struct.sd* %9, i32 %10, i32 1)
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = load i32, i32* @PB_RESET, align 4
  %14 = call i32 @stv06xx_write_sensor(%struct.sd* %12, i32 %13, i32 0)
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = load i32, i32* @PB_CONTROL, align 4
  %17 = call i32 @BIT(i32 5)
  %18 = call i32 @BIT(i32 3)
  %19 = or i32 %17, %18
  %20 = call i32 @stv06xx_write_sensor(%struct.sd* %15, i32 %16, i32 %19)
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = load i32, i32* @PB_PREADCTRL, align 4
  %23 = call i32 @BIT(i32 12)
  %24 = call i32 @BIT(i32 10)
  %25 = or i32 %23, %24
  %26 = call i32 @BIT(i32 6)
  %27 = or i32 %25, %26
  %28 = call i32 @stv06xx_write_sensor(%struct.sd* %21, i32 %22, i32 %27)
  %29 = load %struct.sd*, %struct.sd** %2, align 8
  %30 = load i32, i32* @PB_ADCGLOBALGAIN, align 4
  %31 = call i32 @stv06xx_write_sensor(%struct.sd* %29, i32 %30, i32 12)
  %32 = load %struct.sd*, %struct.sd** %2, align 8
  %33 = load i32, i32* @PB_R28, align 4
  %34 = call i32 @stv06xx_write_sensor(%struct.sd* %32, i32 %33, i32 12)
  %35 = load %struct.sd*, %struct.sd** %2, align 8
  %36 = load i32, i32* @PB_ADCMAXGAIN, align 4
  %37 = call i32 @stv06xx_write_sensor(%struct.sd* %35, i32 %36, i32 180)
  %38 = load %struct.sd*, %struct.sd** %2, align 8
  %39 = load i32, i32* @PB_ADCMINGAIN, align 4
  %40 = call i32 @stv06xx_write_sensor(%struct.sd* %38, i32 %39, i32 12)
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = load i32, i32* @PB_R54, align 4
  %43 = call i32 @stv06xx_write_sensor(%struct.sd* %41, i32 %42, i32 3)
  %44 = load %struct.sd*, %struct.sd** %2, align 8
  %45 = load i32, i32* @PB_R55, align 4
  %46 = call i32 @stv06xx_write_sensor(%struct.sd* %44, i32 %45, i32 0)
  %47 = load %struct.sd*, %struct.sd** %2, align 8
  %48 = load i32, i32* @PB_UPDATEINT, align 4
  %49 = call i32 @stv06xx_write_sensor(%struct.sd* %47, i32 %48, i32 1)
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = load i32, i32* @PB_R15, align 4
  %52 = call i32 @stv06xx_write_sensor(%struct.sd* %50, i32 %51, i32 800)
  %53 = load %struct.sd*, %struct.sd** %2, align 8
  %54 = load i32, i32* @PB_R17, align 4
  %55 = call i32 @stv06xx_write_sensor(%struct.sd* %53, i32 %54, i32 10)
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = load i32, i32* @PB_EXPGAIN, align 4
  %58 = call i32 @stv06xx_write_sensor(%struct.sd* %56, i32 %57, i32 0)
  %59 = load %struct.sd*, %struct.sd** %2, align 8
  %60 = load i32, i32* @PB_VOFFSET, align 4
  %61 = call i32 @stv06xx_write_sensor(%struct.sd* %59, i32 %60, i32 0)
  %62 = load %struct.sd*, %struct.sd** %2, align 8
  %63 = load i32, i32* @PB_ADCGAINH, align 4
  %64 = call i32 @stv06xx_write_sensor(%struct.sd* %62, i32 %63, i32 11)
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = load i32, i32* @PB_ADCGAINL, align 4
  %67 = call i32 @stv06xx_write_sensor(%struct.sd* %65, i32 %66, i32 0)
  %68 = load %struct.sd*, %struct.sd** %2, align 8
  %69 = load i32, i32* @STV_REG00, align 4
  %70 = call i32 @stv06xx_write_bridge(%struct.sd* %68, i32 %69, i32 17)
  %71 = load %struct.sd*, %struct.sd** %2, align 8
  %72 = load i32, i32* @STV_REG03, align 4
  %73 = call i32 @stv06xx_write_bridge(%struct.sd* %71, i32 %72, i32 69)
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = load i32, i32* @STV_REG04, align 4
  %76 = call i32 @stv06xx_write_bridge(%struct.sd* %74, i32 %75, i32 7)
  %77 = load %struct.sd*, %struct.sd** %2, align 8
  %78 = load i32, i32* @PB_ROWSPEED, align 4
  %79 = call i32 @BIT(i32 4)
  %80 = call i32 @BIT(i32 3)
  %81 = or i32 %79, %80
  %82 = call i32 @BIT(i32 1)
  %83 = or i32 %81, %82
  %84 = call i32 @stv06xx_write_sensor(%struct.sd* %77, i32 %78, i32 %83)
  %85 = load %struct.sd*, %struct.sd** %2, align 8
  %86 = load i32, i32* @PB_CFILLIN, align 4
  %87 = call i32 @stv06xx_write_sensor(%struct.sd* %85, i32 %86, i32 14)
  %88 = load %struct.sd*, %struct.sd** %2, align 8
  %89 = load i32, i32* @PB_VBL, align 4
  %90 = call i32 @stv06xx_write_sensor(%struct.sd* %88, i32 %89, i32 0)
  %91 = load %struct.sd*, %struct.sd** %2, align 8
  %92 = load i32, i32* @PB_FINTTIME, align 4
  %93 = call i32 @stv06xx_write_sensor(%struct.sd* %91, i32 %92, i32 0)
  %94 = load %struct.sd*, %struct.sd** %2, align 8
  %95 = load i32, i32* @PB_RINTTIME, align 4
  %96 = call i32 @stv06xx_write_sensor(%struct.sd* %94, i32 %95, i32 123)
  %97 = load %struct.sd*, %struct.sd** %2, align 8
  %98 = load i32, i32* @STV_REG01, align 4
  %99 = call i32 @stv06xx_write_bridge(%struct.sd* %97, i32 %98, i32 194)
  %100 = load %struct.sd*, %struct.sd** %2, align 8
  %101 = load i32, i32* @STV_REG02, align 4
  %102 = call i32 @stv06xx_write_bridge(%struct.sd* %100, i32 %101, i32 176)
  ret i32 0
}

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
