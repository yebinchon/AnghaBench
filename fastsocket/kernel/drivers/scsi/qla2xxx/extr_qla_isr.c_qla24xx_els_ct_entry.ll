; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_els_ct_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_els_ct_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.sts_entry_24xx = type { i32 }
%struct.TYPE_17__ = type { i32, i32 (i32*, %struct.TYPE_17__*, i32)*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.fc_bsg_job* }
%struct.fc_bsg_job = type { i32, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.els_sts_entry_24xx = type { i32, i32, i32 }

@__const.qla24xx_els_ct_entry.func = private unnamed_addr constant [12 x i8] c"ELS_CT_IOCB\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"els\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ct pass-through\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unrecognized SRB: (%p) type=%d.\0A\00", align 1
@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@CS_COMPLETE = common dso_local global i64 0, align 8
@CS_DATA_UNDERRUN = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [122 x i8] c"ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x error subcode 1=0x%x error subcode 2=0x%x total_byte = 0x%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x error subcode 1=0x%x error subcode 2=0x%x.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.sts_entry_24xx*, i32)* @qla24xx_els_ct_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_els_ct_entry(i32* %0, %struct.req_que* %1, %struct.sts_entry_24xx* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.sts_entry_24xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.fc_bsg_job*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [3 x i64], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.req_que* %1, %struct.req_que** %6, align 8
  store %struct.sts_entry_24xx* %2, %struct.sts_entry_24xx** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = bitcast [12 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.qla24xx_els_ct_entry.func, i32 0, i32 0), i64 12, i1 false)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %20 = load %struct.req_que*, %struct.req_que** %6, align 8
  %21 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %22 = call %struct.TYPE_17__* @qla2x00_get_sp_from_handle(i32* %18, i8* %19, %struct.req_que* %20, %struct.sts_entry_24xx* %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %185

26:                                               ; preds = %4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %29, align 8
  store %struct.fc_bsg_job* %30, %struct.fc_bsg_job** %12, align 8
  store i8* null, i8** %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %36 [
    i32 128, label %34
    i32 129, label %34
    i32 130, label %35
  ]

34:                                               ; preds = %26, %26
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %44

35:                                               ; preds = %26
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %44

36:                                               ; preds = %26
  %37 = load i32, i32* @ql_log_warn, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ql_log(i32 %37, i32* %38, i32 20542, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* %39, i32 %42)
  br label %185

44:                                               ; preds = %35, %34
  %45 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %46 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %49, i64* %50, align 16
  store i64 %49, i64* %13, align 8
  %51 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %52 = bitcast %struct.sts_entry_24xx* %51 to %struct.els_sts_entry_24xx*
  %53 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le16_to_cpu(i32 %54)
  %56 = ptrtoint i8* %55 to i64
  %57 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %56, i64* %57, align 8
  %58 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %59 = bitcast %struct.sts_entry_24xx* %58 to %struct.els_sts_entry_24xx*
  %60 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %63, i64* %64, align 16
  %65 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  %66 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %67 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %65, i32* %71, align 8
  %72 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %72, i32 0, i32 0
  store i32 28, i32* %73, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @CS_COMPLETE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %165

77:                                               ; preds = %44
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @CS_DATA_UNDERRUN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %122

81:                                               ; preds = %77
  %82 = load i32, i32* @DID_OK, align 4
  %83 = shl i32 %82, 16
  store i32 %83, i32* %16, align 4
  %84 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %85 = bitcast %struct.sts_entry_24xx* %84 to %struct.els_sts_entry_24xx*
  %86 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %90 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %89, i32 0, i32 2
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  %93 = load i64, i64* @ql_dbg_user, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %104 = load i64, i64* %103, align 16
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %107 = bitcast %struct.sts_entry_24xx* %106 to %struct.els_sts_entry_24xx*
  %108 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le16_to_cpu(i32 %109)
  %111 = call i32 (i64, i32*, i32, i8*, i8*, i32, i64, i8*, i8*, ...) @ql_dbg(i64 %93, i32* %94, i32 20543, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.3, i64 0, i64 0), i8* %95, i32 %98, i64 %99, i8* %102, i8* %105, i8* %110)
  %112 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %113 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %112, i32 0, i32 3
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  store i32* %118, i32** %15, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %121 = call i32 @memcpy(i32* %119, i64* %120, i32 24)
  br label %157

122:                                              ; preds = %77
  %123 = load i64, i64* @ql_dbg_user, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %131 = bitcast %struct.sts_entry_24xx* %130 to %struct.els_sts_entry_24xx*
  %132 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le16_to_cpu(i32 %133)
  %135 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %136 = bitcast %struct.sts_entry_24xx* %135 to %struct.els_sts_entry_24xx*
  %137 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @le16_to_cpu(i32 %138)
  %140 = call i32 (i64, i32*, i32, i8*, i8*, i32, i64, i8*, i8*, ...) @ql_dbg(i64 %123, i32* %124, i32 20544, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i8* %125, i32 %128, i64 %129, i8* %134, i8* %139)
  %141 = load i32, i32* @DID_ERROR, align 4
  %142 = shl i32 %141, 16
  store i32 %142, i32* %16, align 4
  %143 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %144 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %143, i32 0, i32 2
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  store i8* null, i8** %146, align 8
  %147 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %148 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %147, i32 0, i32 3
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i32*
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  store i32* %153, i32** %15, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %156 = call i32 @memcpy(i32* %154, i64* %155, i32 24)
  br label %157

157:                                              ; preds = %122, %81
  %158 = load i64, i64* @ql_dbg_user, align 8
  %159 = load i64, i64* @ql_dbg_buffer, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i32*, i32** %5, align 8
  %162 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %163 = bitcast %struct.sts_entry_24xx* %162 to i32*
  %164 = call i32 @ql_dump_buffer(i64 %160, i32* %161, i32 20566, i32* %163, i32 4)
  br label %178

165:                                              ; preds = %44
  %166 = load i32, i32* @DID_OK, align 4
  %167 = shl i32 %166, 16
  store i32 %167, i32* %16, align 4
  %168 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %169 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %173 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %172, i32 0, i32 2
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  store i8* %171, i8** %175, align 8
  %176 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %177 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %176, i32 0, i32 0
  store i32 0, i32* %177, align 8
  br label %178

178:                                              ; preds = %165, %157
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i32 (i32*, %struct.TYPE_17__*, i32)*, i32 (i32*, %struct.TYPE_17__*, i32)** %180, align 8
  %182 = load i32*, i32** %5, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %184 = call i32 %181(i32* %182, %struct.TYPE_17__* %183, i32 0)
  br label %185

185:                                              ; preds = %178, %36, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_17__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.sts_entry_24xx*) #2

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, %struct.TYPE_17__*, i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @ql_dbg(i64, i32*, i32, i8*, i8*, i32, i64, i8*, i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
