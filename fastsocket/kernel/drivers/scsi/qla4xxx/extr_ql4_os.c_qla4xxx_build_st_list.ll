; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_st_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_st_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.list_head = type { i32 }
%struct.qla_ddb_index = type { i32, i32 }
%struct.dev_db_entry = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@DDB_DS_UNASSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.list_head*)* @qla4xxx_build_st_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_build_st_list(%struct.scsi_qla_host* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.qla_ddb_index*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_db_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dev_db_entry* @dma_pool_alloc(i32 %18, i32 %19, i32* %9)
  store %struct.dev_db_entry* %20, %struct.dev_db_entry** %8, align 8
  %21 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %22 = icmp eq %struct.dev_db_entry* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = call i32 @ql4_printk(i32 %24, %struct.scsi_qla_host* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @DEBUG2(i32 %26)
  br label %87

28:                                               ; preds = %2
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %30 = call i64 @is_qla40XX(%struct.scsi_qla_host* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @MAX_DEV_DB_ENTRIES_40XX, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @MAX_DEV_DB_ENTRIES, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %84, %36
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %38
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host* %43, i32 %44, %struct.dev_db_entry* %45, i32 %46, i32* null, i32* %12, i32* %13, i32* %14, i32* null, i32* %15)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @QLA_ERROR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %86

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @DDB_DS_UNASSIGNED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %79

57:                                               ; preds = %52
  %58 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %59 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i64 @strlen(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %79

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.qla_ddb_index* @vzalloc(i32 %66)
  store %struct.qla_ddb_index* %67, %struct.qla_ddb_index** %5, align 8
  %68 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %69 = icmp ne %struct.qla_ddb_index* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %86

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %74 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %76 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %75, i32 0, i32 1
  %77 = load %struct.list_head*, %struct.list_head** %4, align 8
  %78 = call i32 @list_add_tail(i32* %76, %struct.list_head* %77)
  br label %79

79:                                               ; preds = %71, %64, %56
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %86

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %11, align 4
  br label %38

86:                                               ; preds = %82, %70, %51, %38
  br label %87

87:                                               ; preds = %86, %23
  %88 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %89 = icmp ne %struct.dev_db_entry* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dma_pool_free(i32 %93, %struct.dev_db_entry* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %87
  ret void
}

declare dso_local %struct.dev_db_entry* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host*, i32, %struct.dev_db_entry*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.qla_ddb_index* @vzalloc(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.dev_db_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
