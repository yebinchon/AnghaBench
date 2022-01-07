; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_amd74xx.c_amd_set_drive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_amd74xx.c_amd_set_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_timing = type { i32 }

@amd_clock = common dso_local global i32 0, align 4
@ATA_UDMA2 = common dso_local global i64 0, align 8
@IDE_TIMING_8BIT = common dso_local global i32 0, align 4
@XFER_UDMA_5 = common dso_local global i64 0, align 8
@XFER_UDMA_6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @amd_set_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_set_drive(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.ide_timing, align 4
  %9 = alloca %struct.ide_timing, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = call %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__* %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* @amd_clock, align 4
  %26 = sdiv i32 1000000000, %25
  store i32 %26, i32* %10, align 4
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @ATA_UDMA2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = sdiv i32 %33, 2
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ide_timing_compute(%struct.TYPE_8__* %37, i64 %38, %struct.ide_timing* %8, i32 %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ide_timing_compute(%struct.TYPE_8__* %45, i64 %48, %struct.ide_timing* %9, i32 %49, i32 %50)
  %52 = load i32, i32* @IDE_TIMING_8BIT, align 4
  %53 = call i32 @ide_timing_merge(%struct.ide_timing* %9, %struct.ide_timing* %8, %struct.ide_timing* %8, i32 %52)
  br label %54

54:                                               ; preds = %44, %35
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @XFER_UDMA_5, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @amd_clock, align 4
  %60 = icmp sle i32 %59, 33333
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %8, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %58, %54
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @XFER_UDMA_6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @amd_clock, align 4
  %69 = icmp sle i32 %68, 33333
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %8, i32 0, i32 0
  store i32 15, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %67, %63
  %73 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @amd_set_speed(%struct.pci_dev* %73, i32 %76, i64 %77, %struct.ide_timing* %8)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @ide_timing_compute(%struct.TYPE_8__*, i64, %struct.ide_timing*, i32, i32) #1

declare dso_local i32 @ide_timing_merge(%struct.ide_timing*, %struct.ide_timing*, %struct.ide_timing*, i32) #1

declare dso_local i32 @amd_set_speed(%struct.pci_dev*, i32, i64, %struct.ide_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
