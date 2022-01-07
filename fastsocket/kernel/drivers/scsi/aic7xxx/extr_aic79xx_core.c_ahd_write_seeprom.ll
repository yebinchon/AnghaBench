; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_write_seeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_write_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SEEADR = common dso_local global i32 0, align 4
@SEEOP_EWEN_ADDR = common dso_local global i32 0, align 4
@SEECTL = common dso_local global i32 0, align 4
@SEEOP_EWEN = common dso_local global i32 0, align 4
@SEESTART = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SEEDAT = common dso_local global i32 0, align 4
@SEEOP_WRITE = common dso_local global i32 0, align 4
@SEEOP_EWDS_ADDR = common dso_local global i32 0, align 4
@SEEOP_EWDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_write_seeprom(%struct.ahd_softc* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %15 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %16 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %17 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %20 = load i32, i32* @SEEADR, align 4
  %21 = load i32, i32* @SEEOP_EWEN_ADDR, align 4
  %22 = call i32 @ahd_outb(%struct.ahd_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %24 = load i32, i32* @SEECTL, align 4
  %25 = load i32, i32* @SEEOP_EWEN, align 4
  %26 = load i32, i32* @SEESTART, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ahd_outb(%struct.ahd_softc* %23, i32 %24, i32 %27)
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %30 = call i32 @ahd_wait_seeprom(%struct.ahd_softc* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %90

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %68, %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %47 = load i32, i32* @SEEDAT, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i32 @ahd_outw(%struct.ahd_softc* %46, i32 %47, i32 %50)
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %53 = load i32, i32* @SEEADR, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ahd_outb(%struct.ahd_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %57 = load i32, i32* @SEECTL, align 4
  %58 = load i32, i32* @SEEOP_WRITE, align 4
  %59 = load i32, i32* @SEESTART, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @ahd_outb(%struct.ahd_softc* %56, i32 %57, i32 %60)
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %63 = call i32 @ahd_wait_seeprom(%struct.ahd_softc* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %71

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %41

71:                                               ; preds = %66, %41
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %73 = load i32, i32* @SEEADR, align 4
  %74 = load i32, i32* @SEEOP_EWDS_ADDR, align 4
  %75 = call i32 @ahd_outb(%struct.ahd_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %77 = load i32, i32* @SEECTL, align 4
  %78 = load i32, i32* @SEEOP_EWDS, align 4
  %79 = load i32, i32* @SEESTART, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ahd_outb(%struct.ahd_softc* %76, i32 %77, i32 %80)
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %83 = call i32 @ahd_wait_seeprom(%struct.ahd_softc* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %71
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %86, %33
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_wait_seeprom(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
