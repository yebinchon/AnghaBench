; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32, i32, {}* }

@INTEN = common dso_local global i32 0, align 4
@AHC_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@AHC_EDGE_INTERRUPT = common dso_local global i32 0, align 4
@CMDCMPLT = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@INT_PEND = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRCMDINT = common dso_local global i32 0, align 4
@AHC_REMOVABLE = common dso_local global i32 0, align 4
@BRKADRINT = common dso_local global i32 0, align 4
@SEQINT = common dso_local global i32 0, align 4
@SCSIINT = common dso_local global i32 0, align 4
@AHC_PCI = common dso_local global i32 0, align 4
@AHC_TARGETROLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PCIERRSTAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_intr(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @INTEN, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

12:                                               ; preds = %1
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AHC_ALL_INTERRUPTS, align 4
  %17 = load i32, i32* @AHC_EDGE_INTERRUPT, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %23 = call i64 @ahc_check_cmdcmpltqueues(%struct.ahc_softc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @CMDCMPLT, align 4
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %21, %12
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %29 = load i32, i32* @INTSTAT, align 4
  %30 = call i32 @ahc_inb(%struct.ahc_softc* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @INT_PEND, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  store i32 0, i32* %2, align 4
  br label %107

41:                                               ; preds = %31
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @CMDCMPLT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %50 = load i32, i32* @CLRINT, align 4
  %51 = load i32, i32* @CLRCMDINT, align 4
  %52 = call i32 @ahc_outb(%struct.ahc_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %54 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %53)
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %56 = call i32 @ahc_run_qoutfifo(%struct.ahc_softc* %55)
  br label %57

57:                                               ; preds = %48, %41
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AHC_REMOVABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %106

68:                                               ; preds = %60, %57
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @BRKADRINT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %75 = call i32 @ahc_handle_brkadrint(%struct.ahc_softc* %74)
  br label %105

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SEQINT, align 4
  %79 = load i32, i32* @SCSIINT, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %76
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %85 = call i32 @ahc_pause_bug_fix(%struct.ahc_softc* %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @SEQINT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @ahc_handle_seqint(%struct.ahc_softc* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SCSIINT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @ahc_handle_scsiint(%struct.ahc_softc* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %94
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104, %73
  br label %106

106:                                              ; preds = %105, %67
  store i32 1, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %36, %11
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @ahc_check_cmdcmpltqueues(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_flush_device_writes(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_run_qoutfifo(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_handle_brkadrint(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_pause_bug_fix(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_handle_seqint(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_handle_scsiint(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
