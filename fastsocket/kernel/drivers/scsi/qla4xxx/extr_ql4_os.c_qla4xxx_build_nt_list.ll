; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_nt_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_nt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.list_head = type { i32 }
%struct.dev_db_entry = type { %struct.dev_db_entry*, i64 }
%struct.qla_ddb_index = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@DDB_DS_NO_CONNECTION_ACTIVE = common dso_local global i32 0, align 4
@DDB_DS_SESSION_FAILED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Adding  DDB to session = 0x%x\0A\00", align 1
@INIT_ADAPTER = common dso_local global i32 0, align 4
@RESET_ADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.list_head*, i32)* @qla4xxx_build_nt_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_build_nt_list(%struct.scsi_qla_host* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_db_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qla_ddb_index*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.dev_db_entry* @dma_pool_alloc(i32 %20, i32 %21, i32* %8)
  store %struct.dev_db_entry* %22, %struct.dev_db_entry** %7, align 8
  %23 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %24 = icmp eq %struct.dev_db_entry* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %28 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %26, %struct.scsi_qla_host* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @DEBUG2(i32 %28)
  br label %157

30:                                               ; preds = %3
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %32 = call i64 @is_qla40XX(%struct.scsi_qla_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @MAX_DEV_DB_ENTRIES_40XX, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @MAX_DEV_DB_ENTRIES, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  store i32 24, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %154, %38
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %156

44:                                               ; preds = %40
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host* %45, i32 %46, %struct.dev_db_entry* %47, i32 %48, i32* null, i32* %13, i32* %14, i32* %15, i32* null, i32* %16)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @QLA_ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %156

54:                                               ; preds = %44
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @qla4xxx_verify_boot_idx(%struct.scsi_qla_host* %55, i32 %56)
  %58 = load i32, i32* @QLA_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %149

61:                                               ; preds = %54
  %62 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %63 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i64 @strlen(i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %149

69:                                               ; preds = %61
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @DDB_DS_NO_CONNECTION_ACTIVE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @DDB_DS_SESSION_FAILED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %149

78:                                               ; preds = %73, %69
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %79, %struct.scsi_qla_host* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = call i32 @DEBUG2(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @INIT_ADAPTER, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %125

87:                                               ; preds = %78
  %88 = load i32, i32* %10, align 4
  %89 = call %struct.qla_ddb_index* @vmalloc(i32 %88)
  store %struct.qla_ddb_index* %89, %struct.qla_ddb_index** %17, align 8
  %90 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %91 = icmp ne %struct.qla_ddb_index* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %156

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %96 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %98 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %102 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %101, i32 0, i32 0
  %103 = load %struct.dev_db_entry*, %struct.dev_db_entry** %102, align 8
  %104 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %103, i64 0
  %105 = call i32 @memcpy(i32* %100, %struct.dev_db_entry* %104, i32 8)
  %106 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %107 = load %struct.list_head*, %struct.list_head** %5, align 8
  %108 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %109 = call i32 @qla4xxx_is_flash_ddb_exists(%struct.scsi_qla_host* %106, %struct.list_head* %107, %struct.dev_db_entry* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @QLA_SUCCESS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %93
  %114 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %115 = call i32 @vfree(%struct.qla_ddb_index* %114)
  br label %149

116:                                              ; preds = %93
  %117 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %118 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %117, i32 0, i32 2
  %119 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %120 = call i32 @memcpy(i32* %118, %struct.dev_db_entry* %119, i32 16)
  %121 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %122 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %121, i32 0, i32 1
  %123 = load %struct.list_head*, %struct.list_head** %5, align 8
  %124 = call i32 @list_add_tail(i32* %122, %struct.list_head* %123)
  br label %138

125:                                              ; preds = %78
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @RESET_ADAPTER, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %131 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %132 = call i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host* %130, %struct.dev_db_entry* %131)
  %133 = load i32, i32* @QLA_SUCCESS, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %149

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %125
  br label %138

138:                                              ; preds = %137, %116
  %139 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %140 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host* %139, %struct.dev_db_entry* %140, i32 %141, i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @QLA_ERROR, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %157

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %135, %113, %77, %68, %60
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %156

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %12, align 4
  br label %40

156:                                              ; preds = %152, %92, %53, %40
  br label %157

157:                                              ; preds = %156, %147, %25
  %158 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %159 = icmp ne %struct.dev_db_entry* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %162 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @dma_pool_free(i32 %163, %struct.dev_db_entry* %164, i32 %165)
  br label %167

167:                                              ; preds = %160, %157
  ret void
}

declare dso_local %struct.dev_db_entry* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host*, i32, %struct.dev_db_entry*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @qla4xxx_verify_boot_idx(%struct.scsi_qla_host*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.qla_ddb_index* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dev_db_entry*, i32) #1

declare dso_local i32 @qla4xxx_is_flash_ddb_exists(%struct.scsi_qla_host*, %struct.list_head*, %struct.dev_db_entry*) #1

declare dso_local i32 @vfree(%struct.qla_ddb_index*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host*, %struct.dev_db_entry*) #1

declare dso_local i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.dev_db_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
