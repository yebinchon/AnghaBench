; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, %struct.TYPE_2__*, i32, i64, i32, i32, i32, i32, %struct.pmcraid_resource_entry* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pmcraid_resource_entry = type { i32 }

@TYPE_ENCLOSURE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"configuring %x:%x:%x:%x\0A\00", align 1
@PMCRAID_VSET_IO_TIMEOUT = common dso_local global i32 0, align 4
@PMCRAID_VSET_MAX_SECTORS = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @pmcraid_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.pmcraid_resource_entry*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 9
  %7 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %6, align 8
  store %struct.pmcraid_resource_entry* %7, %struct.pmcraid_resource_entry** %4, align 8
  %8 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %9 = icmp ne %struct.pmcraid_resource_entry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

11:                                               ; preds = %1
  %12 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %13 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @RES_IS_GSCSI(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TYPE_ENCLOSURE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %110

26:                                               ; preds = %17, %11
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pmcraid_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %43 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @RES_IS_GSCSI(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  br label %70

50:                                               ; preds = %26
  %51 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %52 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @RES_IS_VSET(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PMCRAID_VSET_IO_TIMEOUT, align 4
  %63 = call i32 @blk_queue_rq_timeout(i32 %61, i32 %62)
  %64 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PMCRAID_VSET_MAX_SECTORS, align 4
  %68 = call i32 @blk_queue_max_hw_sectors(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %56, %50
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %70
  %76 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %77 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @RES_IS_GSCSI(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %83 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @RES_IS_VSET(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %81, %75
  %88 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %89 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @scsi_activate_tcq(%struct.scsi_device* %88, i32 %91)
  %93 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %94 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %95 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %93, i32 %94, i32 %99)
  br label %109

101:                                              ; preds = %81, %70
  %102 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %103 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %102, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %101, %87
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %23, %10
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @RES_IS_GSCSI(i32) #1

declare dso_local i32 @pmcraid_info(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @RES_IS_VSET(i32) #1

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
