; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_validate_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_validate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@AHD_SYNCRATE_PACED = common dso_local global i64 0, align 8
@AHD_PACED_NEGTABLE_BUG = common dso_local global i32 0, align 4
@MAX_OFFSET_PACED_BUG = common dso_local global i64 0, align 8
@MAX_OFFSET_PACED = common dso_local global i64 0, align 8
@MAX_OFFSET_NON_PACED = common dso_local global i64 0, align 8
@ROLE_TARGET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i64, i64*, i32, i64)* @ahd_validate_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_validate_offset(%struct.ahd_softc* %0, %struct.ahd_initiator_tinfo* %1, i64 %2, i64* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca %struct.ahd_initiator_tinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %7, align 8
  store %struct.ahd_initiator_tinfo* %1, %struct.ahd_initiator_tinfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %36

17:                                               ; preds = %6
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @AHD_SYNCRATE_PACED, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %23 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AHD_PACED_NEGTABLE_BUG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @MAX_OFFSET_PACED_BUG, align 8
  store i64 %29, i64* %13, align 8
  br label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @MAX_OFFSET_PACED, align 8
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %30, %28
  br label %35

33:                                               ; preds = %17
  %34 = load i64, i64* @MAX_OFFSET_NON_PACED, align 8
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %33, %32
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i64 @min(i64 %38, i64 %39)
  %41 = load i64*, i64** %10, align 8
  store i64 %40, i64* %41, align 8
  %42 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %43 = icmp ne %struct.ahd_initiator_tinfo* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @ROLE_TARGET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %52 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @min(i64 %50, i64 %54)
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  br label %66

57:                                               ; preds = %44
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %61 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @min(i64 %59, i64 %63)
  %65 = load i64*, i64** %10, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %48
  br label %67

67:                                               ; preds = %66, %36
  ret void
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
