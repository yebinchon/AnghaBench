; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_read_flexport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_read_flexport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ahd_read_flexport: address out of range\00", align 1
@BRDCTL = common dso_local global i32 0, align 4
@BRDRW = common dso_local global i32 0, align 4
@BRDEN = common dso_local global i32 0, align 4
@BRDDAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_read_flexport(%struct.ahd_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %10 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %11 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %12 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %9, i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %19 = load i32, i32* @BRDCTL, align 4
  %20 = load i32, i32* @BRDRW, align 4
  %21 = load i32, i32* @BRDEN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 3
  %25 = or i32 %22, %24
  %26 = call i32 @ahd_outb(%struct.ahd_softc* %18, i32 %19, i32 %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %28 = call i32 @ahd_wait_flexport(%struct.ahd_softc* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %43

33:                                               ; preds = %17
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %35 = load i32, i32* @BRDDAT, align 4
  %36 = call i32 @ahd_inb(%struct.ahd_softc* %34, i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %39 = load i32, i32* @BRDCTL, align 4
  %40 = call i32 @ahd_outb(%struct.ahd_softc* %38, i32 %39, i32 0)
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %42 = call i32 @ahd_flush_device_writes(%struct.ahd_softc* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %31
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_wait_flexport(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_flush_device_writes(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
