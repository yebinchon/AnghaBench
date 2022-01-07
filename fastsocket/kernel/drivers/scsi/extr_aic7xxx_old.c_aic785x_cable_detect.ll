; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic785x_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic785x_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@BRDRW = common dso_local global i32 0, align 4
@BRDCS = common dso_local global i32 0, align 4
@BRDCTL = common dso_local global i32 0, align 4
@BRDDAT5 = common dso_local global i8 0, align 1
@BRDDAT6 = common dso_local global i8 0, align 1
@SPIOCAP = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i32*, i32*, i32*)* @aic785x_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic785x_cable_detect(%struct.aic7xxx_host* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.aic7xxx_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %11 = load i32, i32* @BRDRW, align 4
  %12 = load i32, i32* @BRDCS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BRDCTL, align 4
  %15 = call i32 @aic_outb(%struct.aic7xxx_host* %10, i32 %13, i32 %14)
  %16 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %17 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %16)
  %18 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %19 = load i32, i32* @BRDCTL, align 4
  %20 = call i32 @aic_outb(%struct.aic7xxx_host* %18, i32 0, i32 %19)
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %22 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %21)
  %23 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %24 = load i32, i32* @BRDCTL, align 4
  %25 = call i32 @aic_inb(%struct.aic7xxx_host* %23, i32 %24)
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %9, align 1
  %27 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %28 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %27)
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @BRDDAT5, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @BRDDAT6, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %48 = load i32, i32* @SPIOCAP, align 4
  %49 = call i32 @aic_inb(%struct.aic7xxx_host* %47, i32 %48)
  %50 = load i32, i32* @EEPROM, align 4
  %51 = and i32 %49, %50
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  ret void
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @CLOCK_PULSE(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
