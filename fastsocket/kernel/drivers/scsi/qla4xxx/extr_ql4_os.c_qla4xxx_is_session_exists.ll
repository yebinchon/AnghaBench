; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_is_session_exists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_is_session_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.dev_db_entry = type { i32 }
%struct.ddb_entry = type { i32 }
%struct.ql4_tuple_ddb = type { i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory Allocation failed.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@MAX_DDB_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.dev_db_entry*)* @qla4xxx_is_session_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host* %0, %struct.dev_db_entry* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.dev_db_entry*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca %struct.ql4_tuple_ddb*, align 8
  %7 = alloca %struct.ql4_tuple_ddb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %4, align 8
  store %struct.ql4_tuple_ddb* null, %struct.ql4_tuple_ddb** %6, align 8
  store %struct.ql4_tuple_ddb* null, %struct.ql4_tuple_ddb** %7, align 8
  %10 = load i32, i32* @QLA_ERROR, align 4
  store i32 %10, i32* %9, align 4
  %11 = call %struct.ql4_tuple_ddb* @vzalloc(i32 4)
  store %struct.ql4_tuple_ddb* %11, %struct.ql4_tuple_ddb** %6, align 8
  %12 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %13 = icmp ne %struct.ql4_tuple_ddb* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_WARNING, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = call i32 @ql4_printk(i32 %15, %struct.scsi_qla_host* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @DEBUG2(i32 %17)
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %19, i32* %9, align 4
  br label %61

20:                                               ; preds = %2
  %21 = call %struct.ql4_tuple_ddb* @vzalloc(i32 4)
  store %struct.ql4_tuple_ddb* %21, %struct.ql4_tuple_ddb** %7, align 8
  %22 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %23 = icmp ne %struct.ql4_tuple_ddb* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @KERN_WARNING, align 4
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = call i32 @ql4_printk(i32 %25, %struct.scsi_qla_host* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @DEBUG2(i32 %27)
  %29 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %29, i32* %9, align 4
  br label %61

30:                                               ; preds = %20
  %31 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %32 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %33 = call i32 @qla4xxx_convert_param_ddb(%struct.dev_db_entry* %31, %struct.ql4_tuple_ddb* %32, i32* null)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %57, %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MAX_DDB_ENTRIES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host* %39, i32 %40)
  store %struct.ddb_entry* %41, %struct.ddb_entry** %5, align 8
  %42 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %43 = icmp eq %struct.ddb_entry* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %57

45:                                               ; preds = %38
  %46 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %47 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %48 = call i32 @qla4xxx_get_param_ddb(%struct.ddb_entry* %46, %struct.ql4_tuple_ddb* %47)
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %50 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %51 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %52 = call i32 @qla4xxx_compare_tuple_ddb(%struct.scsi_qla_host* %49, %struct.ql4_tuple_ddb* %50, %struct.ql4_tuple_ddb* %51, i32 0)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %34

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60, %54, %24, %14
  %62 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %63 = icmp ne %struct.ql4_tuple_ddb* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %66 = call i32 @vfree(%struct.ql4_tuple_ddb* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %69 = icmp ne %struct.ql4_tuple_ddb* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %72 = call i32 @vfree(%struct.ql4_tuple_ddb* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local %struct.ql4_tuple_ddb* @vzalloc(i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @qla4xxx_convert_param_ddb(%struct.dev_db_entry*, %struct.ql4_tuple_ddb*, i32*) #1

declare dso_local %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4xxx_get_param_ddb(%struct.ddb_entry*, %struct.ql4_tuple_ddb*) #1

declare dso_local i32 @qla4xxx_compare_tuple_ddb(%struct.scsi_qla_host*, %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb*, i32) #1

declare dso_local i32 @vfree(%struct.ql4_tuple_ddb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
