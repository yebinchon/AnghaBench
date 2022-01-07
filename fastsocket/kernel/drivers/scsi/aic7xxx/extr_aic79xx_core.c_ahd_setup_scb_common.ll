; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_scb_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_scb_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SCB_PACKETIZED = common dso_local global i32 0, align 4
@SCB_TAG_TYPE = common dso_local global i32 0, align 4
@SCB_XFERLEN_ODD = common dso_local global i32 0, align 4
@MAX_CDB_LEN_WITH_SENSE_ADDR = common dso_local global i32 0, align 4
@SCB_CDB_LEN_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*)* @ahd_setup_scb_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_setup_scb_common(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %5 = load %struct.scb*, %struct.scb** %4, align 8
  %6 = getelementptr inbounds %struct.scb, %struct.scb* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.scb*, %struct.scb** %4, align 8
  %8 = getelementptr inbounds %struct.scb, %struct.scb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SCB_PACKETIZED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.scb*, %struct.scb** %4, align 8
  %15 = getelementptr inbounds %struct.scb, %struct.scb* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SCB_TAG_TYPE, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.scb*, %struct.scb** %4, align 8
  %22 = getelementptr inbounds %struct.scb, %struct.scb* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.scb*, %struct.scb** %4, align 8
  %27 = call i32 @ahd_get_transfer_length(%struct.scb* %26)
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @SCB_XFERLEN_ODD, align 4
  %32 = load %struct.scb*, %struct.scb** %4, align 8
  %33 = getelementptr inbounds %struct.scb, %struct.scb* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load %struct.scb*, %struct.scb** %4, align 8
  %38 = getelementptr inbounds %struct.scb, %struct.scb* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41, %13
  %43 = load %struct.scb*, %struct.scb** %4, align 8
  %44 = getelementptr inbounds %struct.scb, %struct.scb* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX_CDB_LEN_WITH_SENSE_ADDR, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %42
  %51 = load %struct.scb*, %struct.scb** %4, align 8
  %52 = getelementptr inbounds %struct.scb, %struct.scb* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SCB_CDB_LEN_PTR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %50, %42
  %60 = load %struct.scb*, %struct.scb** %4, align 8
  %61 = getelementptr inbounds %struct.scb, %struct.scb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ahd_htole32(i32 %62)
  %64 = load %struct.scb*, %struct.scb** %4, align 8
  %65 = getelementptr inbounds %struct.scb, %struct.scb* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 4
  br label %71

71:                                               ; preds = %59, %50
  ret void
}

declare dso_local i32 @ahd_get_transfer_length(%struct.scb*) #1

declare dso_local i32 @ahd_htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
