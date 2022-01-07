; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_pause_and_flushwork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_pause_and_flushwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32 }

@AHD_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@KERNEL_QFREEZE_COUNT = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@SELECTOUT_QFROZEN = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@INT_PEND = common dso_local global i32 0, align 4
@AHD_REMOVABLE = common dso_local global i32 0, align 4
@SCSISEQ0 = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@SELDO = common dso_local global i32 0, align 4
@SELINGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Infinite interrupt loop, INTSTAT = %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_pause_and_flushwork(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store i32 1000, i32* %4, align 4
  %5 = load i32, i32* @AHD_ALL_INTERRUPTS, align 4
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %11 = call i32 @ahd_pause(%struct.ahd_softc* %10)
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %17 = load i32, i32* @KERNEL_QFREEZE_COUNT, align 4
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ahd_outw(%struct.ahd_softc* %16, i32 %17, i32 %20)
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = load i32, i32* @SEQ_FLAGS2, align 4
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = load i32, i32* @SEQ_FLAGS2, align 4
  %26 = call i32 @ahd_inb(%struct.ahd_softc* %24, i32 %25)
  %27 = load i32, i32* @SELECTOUT_QFROZEN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ahd_outb(%struct.ahd_softc* %22, i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %89, %1
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = call i32 @ahd_unpause(%struct.ahd_softc* %31)
  %33 = call i32 @ahd_delay(i32 500)
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = call i32 @ahd_intr(%struct.ahd_softc* %34)
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %37 = call i32 @ahd_pause(%struct.ahd_softc* %36)
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %39 = load i32, i32* @INTSTAT, align 4
  %40 = call i32 @ahd_inb(%struct.ahd_softc* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @INT_PEND, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %47 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %46)
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %49 = load i32, i32* @INTSTAT, align 4
  %50 = call i32 @ahd_inb(%struct.ahd_softc* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AHD_REMOVABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %59, %56
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @INT_PEND, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %73 = load i32, i32* @SCSISEQ0, align 4
  %74 = call i32 @ahd_inb(%struct.ahd_softc* %72, i32 %73)
  %75 = load i32, i32* @ENSELO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %71
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %80 = load i32, i32* @SSTAT0, align 4
  %81 = call i32 @ahd_inb(%struct.ahd_softc* %79, i32 %80)
  %82 = load i32, i32* @SELDO, align 4
  %83 = load i32, i32* @SELINGO, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %78, %71, %66
  %88 = phi i1 [ true, %71 ], [ true, %66 ], [ %86, %78 ]
  br label %89

89:                                               ; preds = %87, %59, %52
  %90 = phi i1 [ false, %59 ], [ false, %52 ], [ %88, %87 ]
  br i1 %90, label %30, label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %96 = load i32, i32* @INTSTAT, align 4
  %97 = call i32 @ahd_inb(%struct.ahd_softc* %95, i32 %96)
  %98 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %105 = load i32, i32* @KERNEL_QFREEZE_COUNT, align 4
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ahd_outw(%struct.ahd_softc* %104, i32 %105, i32 %108)
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %111 = call i32 @ahd_flush_qoutfifo(%struct.ahd_softc* %110)
  %112 = load i32, i32* @AHD_ALL_INTERRUPTS, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %115 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  ret void
}

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_delay(i32) #1

declare dso_local i32 @ahd_intr(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_critical_section(%struct.ahd_softc*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ahd_flush_qoutfifo(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
