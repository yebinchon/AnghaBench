; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_hwerrint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_hwerrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.ahd_softc = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@num_errors = common dso_local global i32 0, align 4
@ahd_hard_errors = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s: hwerrint, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"BRKADRINT\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@ALL_CHANNELS = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CAM_NO_HBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_handle_hwerrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_hwerrint(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = load i32, i32* @ERROR, align 4
  %7 = call i32 @ahd_inb(%struct.ahd_softc* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @num_errors, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahd_hard_errors, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %13, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %24 = call i8* @ahd_name(%struct.ahd_softc* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahd_hard_errors, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %30)
  br label %32

32:                                               ; preds = %22, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %38 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %37)
  %39 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %41 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %42 = load i32, i32* @ALL_CHANNELS, align 4
  %43 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %44 = load i32, i32* @SCB_LIST_NULL, align 4
  %45 = load i32, i32* @ROLE_UNKNOWN, align 4
  %46 = load i32, i32* @CAM_NO_HBA, align 4
  %47 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %49 = call i32 @ahd_free(%struct.ahd_softc* %48)
  ret void
}

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_free(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
