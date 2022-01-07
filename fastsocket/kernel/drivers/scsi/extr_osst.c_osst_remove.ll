; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osst_tape = type { %struct.osst_tape*, i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i64 }
%struct.device = type { i32 }

@TYPE_TAPE = common dso_local global i64 0, align 8
@osst_nr_dev = common dso_local global i64 0, align 8
@os_scsi_tapes_lock = common dso_local global i32 0, align 4
@osst_max_dev = common dso_local global i32 0, align 4
@os_scsi_tapes = common dso_local global %struct.osst_tape** null, align 8
@OSST_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @osst_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osst_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.osst_tape*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.scsi_device* @to_scsi_device(%struct.device* %7)
  store %struct.scsi_device* %8, %struct.scsi_device** %4, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TYPE_TAPE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @osst_nr_dev, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %86

18:                                               ; preds = %14
  %19 = call i32 @write_lock(i32* @os_scsi_tapes_lock)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %81, %18
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @osst_max_dev, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %20
  %25 = load %struct.osst_tape**, %struct.osst_tape*** @os_scsi_tapes, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.osst_tape*, %struct.osst_tape** %25, i64 %27
  %29 = load %struct.osst_tape*, %struct.osst_tape** %28, align 8
  store %struct.osst_tape* %29, %struct.osst_tape** %5, align 8
  %30 = icmp ne %struct.osst_tape* %29, null
  br i1 %30, label %31, label %80

31:                                               ; preds = %24
  %32 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %33 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %32, i32 0, i32 3
  %34 = load %struct.scsi_device*, %struct.scsi_device** %33, align 8
  %35 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %36 = icmp eq %struct.scsi_device* %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %31
  %38 = load i32, i32* @OSST_MAJOR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @MKDEV(i32 %38, i32 %39)
  %41 = call i32 @osst_sysfs_destroy(i32 %40)
  %42 = load i32, i32* @OSST_MAJOR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 128
  %45 = call i32 @MKDEV(i32 %42, i32 %44)
  %46 = call i32 @osst_sysfs_destroy(i32 %45)
  %47 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %48 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %47, i32 0, i32 3
  store %struct.scsi_device* null, %struct.scsi_device** %48, align 8
  %49 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %50 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @put_disk(i32 %51)
  %53 = load %struct.osst_tape**, %struct.osst_tape*** @os_scsi_tapes, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.osst_tape*, %struct.osst_tape** %53, i64 %55
  store %struct.osst_tape* null, %struct.osst_tape** %56, align 8
  %57 = load i64, i64* @osst_nr_dev, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* @osst_nr_dev, align 8
  %59 = call i32 @write_unlock(i32* @os_scsi_tapes_lock)
  %60 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %61 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vfree(i32 %62)
  %64 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %65 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %64, i32 0, i32 0
  %66 = load %struct.osst_tape*, %struct.osst_tape** %65, align 8
  %67 = icmp ne %struct.osst_tape* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %37
  %69 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %70 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %69, i32 0, i32 0
  %71 = load %struct.osst_tape*, %struct.osst_tape** %70, align 8
  %72 = call i32 @normalize_buffer(%struct.osst_tape* %71)
  %73 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %74 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %73, i32 0, i32 0
  %75 = load %struct.osst_tape*, %struct.osst_tape** %74, align 8
  %76 = call i32 @kfree(%struct.osst_tape* %75)
  br label %77

77:                                               ; preds = %68, %37
  %78 = load %struct.osst_tape*, %struct.osst_tape** %5, align 8
  %79 = call i32 @kfree(%struct.osst_tape* %78)
  store i32 0, i32* %2, align 4
  br label %86

80:                                               ; preds = %31, %24
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %20

84:                                               ; preds = %20
  %85 = call i32 @write_unlock(i32* @os_scsi_tapes_lock)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %77, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @osst_sysfs_destroy(i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @put_disk(i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @normalize_buffer(%struct.osst_tape*) #1

declare dso_local i32 @kfree(%struct.osst_tape*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
