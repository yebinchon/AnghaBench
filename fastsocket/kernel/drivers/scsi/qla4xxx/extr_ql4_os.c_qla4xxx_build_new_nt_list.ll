; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_new_nt_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_new_nt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.list_head = type { i32 }
%struct.dev_db_entry = type { i64 }
%struct.qla_ddb_index = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@DDB_DS_NO_CONNECTION_ACTIVE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Adding  DDB to session = 0x%x\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@RESET_ADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.list_head*)* @qla4xxx_build_new_nt_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_build_new_nt_list(%struct.scsi_qla_host* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.dev_db_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.qla_ddb_index*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dev_db_entry* @dma_pool_alloc(i32 %18, i32 %19, i32* %6)
  store %struct.dev_db_entry* %20, %struct.dev_db_entry** %5, align 8
  %21 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %22 = icmp eq %struct.dev_db_entry* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %24, %struct.scsi_qla_host* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @DEBUG2(i32 %26)
  br label %112

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
  store i32 %37, i32* %7, align 4
  store i32 8, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %109, %36
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %38
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host* %43, i32 %44, %struct.dev_db_entry* %45, i32 %46, i32* null, i32* %11, i32* %12, i32* %13, i32* null, i32* %14)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @QLA_ERROR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %111

52:                                               ; preds = %42
  %53 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %54 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i64 @strlen(i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %104

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @DDB_DS_NO_CONNECTION_ACTIVE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %104

65:                                               ; preds = %60
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %66, %struct.scsi_qla_host* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = call i32 @DEBUG2(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = call %struct.qla_ddb_index* @vmalloc(i32 %71)
  store %struct.qla_ddb_index* %72, %struct.qla_ddb_index** %15, align 8
  %73 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %15, align 8
  %74 = icmp ne %struct.qla_ddb_index* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %111

76:                                               ; preds = %65
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %15, align 8
  %79 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %81 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %82 = call i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host* %80, %struct.dev_db_entry* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @QLA_SUCCESS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %15, align 8
  %88 = call i32 @vfree(%struct.qla_ddb_index* %87)
  br label %104

89:                                               ; preds = %76
  %90 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %15, align 8
  %91 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %90, i32 0, i32 1
  %92 = load %struct.list_head*, %struct.list_head** %4, align 8
  %93 = call i32 @list_add_tail(i32* %91, %struct.list_head* %92)
  %94 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %95 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %96 = load i32, i32* @RESET_ADAPTER, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host* %94, %struct.dev_db_entry* %95, i32 %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @QLA_ERROR, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %112

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %86, %64, %59
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %111

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %10, align 4
  br label %38

111:                                              ; preds = %107, %75, %51, %38
  br label %112

112:                                              ; preds = %111, %102, %23
  %113 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %114 = icmp ne %struct.dev_db_entry* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %117 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @dma_pool_free(i32 %118, %struct.dev_db_entry* %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %112
  ret void
}

declare dso_local %struct.dev_db_entry* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host*, i32, %struct.dev_db_entry*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.qla_ddb_index* @vmalloc(i32) #1

declare dso_local i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host*, %struct.dev_db_entry*) #1

declare dso_local i32 @vfree(%struct.qla_ddb_index*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.dev_db_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
