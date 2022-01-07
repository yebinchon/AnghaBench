; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_write_flexport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_write_flexport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ahd_write_flexport: address out of range\00", align 1
@BRDCTL = common dso_local global i32 0, align 4
@BRDEN = common dso_local global i32 0, align 4
@BRDDAT = common dso_local global i32 0, align 4
@BRDSTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_write_flexport(%struct.ahd_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %10 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %11 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %12 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %9, i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %19 = load i32, i32* @BRDCTL, align 4
  %20 = load i32, i32* @BRDEN, align 4
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 3
  %23 = or i32 %20, %22
  %24 = call i32 @ahd_outb(%struct.ahd_softc* %18, i32 %19, i32 %23)
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %26 = call i32 @ahd_wait_flexport(%struct.ahd_softc* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %63

31:                                               ; preds = %17
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %33 = load i32, i32* @BRDDAT, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ahd_outb(%struct.ahd_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %37 = call i32 @ahd_flush_device_writes(%struct.ahd_softc* %36)
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %39 = load i32, i32* @BRDCTL, align 4
  %40 = load i32, i32* @BRDSTB, align 4
  %41 = load i32, i32* @BRDEN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 3
  %45 = or i32 %42, %44
  %46 = call i32 @ahd_outb(%struct.ahd_softc* %38, i32 %39, i32 %45)
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %48 = call i32 @ahd_flush_device_writes(%struct.ahd_softc* %47)
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %50 = load i32, i32* @BRDCTL, align 4
  %51 = load i32, i32* @BRDEN, align 4
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 3
  %54 = or i32 %51, %53
  %55 = call i32 @ahd_outb(%struct.ahd_softc* %49, i32 %50, i32 %54)
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %57 = call i32 @ahd_flush_device_writes(%struct.ahd_softc* %56)
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %59 = load i32, i32* @BRDCTL, align 4
  %60 = call i32 @ahd_outb(%struct.ahd_softc* %58, i32 %59, i32 0)
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %62 = call i32 @ahd_flush_device_writes(%struct.ahd_softc* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %31, %29
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_wait_flexport(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_flush_device_writes(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
