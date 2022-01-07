; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_free_sysfs_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_free_sysfs_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_entry = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.qla_hw_data*, %struct.Scsi_Host* }
%struct.qla_hw_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }
%struct.Scsi_Host = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@bin_file_entries = common dso_local global %struct.sysfs_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_free_sysfs_attr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sysfs_entry*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %5, align 8
  %12 = load %struct.sysfs_entry*, %struct.sysfs_entry** @bin_file_entries, align 8
  store %struct.sysfs_entry* %12, %struct.sysfs_entry** %4, align 8
  br label %13

13:                                               ; preds = %58, %1
  %14 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %15 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %13
  %19 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %20 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %58

28:                                               ; preds = %23, %18
  %29 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %30 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %35 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %58

38:                                               ; preds = %33, %28
  %39 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %40 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %45, align 8
  %47 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %58

50:                                               ; preds = %43, %38
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %55 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sysfs_remove_bin_file(i32* %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %49, %37, %27
  %59 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %60 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %59, i32 1
  store %struct.sysfs_entry* %60, %struct.sysfs_entry** %4, align 8
  br label %13

61:                                               ; preds = %13
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = call i32 %71(%struct.TYPE_8__* %72)
  br label %74

74:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
