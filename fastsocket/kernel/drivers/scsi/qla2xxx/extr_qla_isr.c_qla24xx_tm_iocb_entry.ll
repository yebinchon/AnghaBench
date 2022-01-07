; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_tm_iocb_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_tm_iocb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.tsk_mgmt_entry = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32 (i32*, %struct.TYPE_11__*, i32)*, i32, %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sts_entry_24xx = type { i64, i64, i64, i64, i64* }

@__const.qla24xx_tm_iocb_entry.func = private unnamed_addr constant [9 x i8] c"TMF-IOCB\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Async-%s error - hdl=%x entry-status(%x).\0A\00", align 1
@CS_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Async-%s error - hdl=%x completion status(%x).\0A\00", align 1
@SS_RESPONSE_INFO_LEN_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Async-%s error - hdl=%x no response info(%x).\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Async-%s error - hdl=%x not enough response(%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Async-%s error - hdl=%x response(%x).\0A\00", align 1
@ql_dbg_async = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.tsk_mgmt_entry*)* @qla24xx_tm_iocb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_tm_iocb_entry(i32* %0, %struct.req_que* %1, %struct.tsk_mgmt_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.tsk_mgmt_entry*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca %struct.sts_entry_24xx*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.tsk_mgmt_entry* %2, %struct.tsk_mgmt_entry** %6, align 8
  %14 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.qla24xx_tm_iocb_entry.func, i32 0, i32 0), i64 9, i1 false)
  %15 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %6, align 8
  %16 = bitcast %struct.tsk_mgmt_entry* %15 to %struct.sts_entry_24xx*
  store %struct.sts_entry_24xx* %16, %struct.sts_entry_24xx** %12, align 8
  store i32 1, i32* %13, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %19 = load %struct.req_que*, %struct.req_que** %5, align 8
  %20 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %6, align 8
  %21 = call %struct.TYPE_11__* @qla2x00_get_sp_from_handle(i32* %17, i8* %18, %struct.req_que* %19, %struct.tsk_mgmt_entry* %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %10, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %162

25:                                               ; preds = %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.srb_iocb* %28, %struct.srb_iocb** %11, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %9, align 8
  %35 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %36 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %25
  %40 = load i32, i32* @ql_log_warn, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %49 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ql_log(i32 %40, i32 %43, i32 20536, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %47, i64 %50)
  br label %139

52:                                               ; preds = %25
  %53 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %54 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @CS_COMPLETE, align 4
  %57 = call i64 @__constant_cpu_to_le16(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load i32, i32* @ql_log_warn, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %69 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ql_log(i32 %60, i32 %63, i32 20537, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %67, i64 %70)
  br label %138

72:                                               ; preds = %52
  %73 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %74 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @le16_to_cpu(i64 %75)
  %77 = load i32, i32* @SS_RESPONSE_INFO_LEN_VALID, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @ql_log_warn, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %90 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ql_log(i32 %81, i32 %84, i32 20538, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %85, i32 %88, i64 %91)
  br label %137

93:                                               ; preds = %72
  %94 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %95 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load i32, i32* @ql_log_warn, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %109 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @ql_log(i32 %100, i32 %103, i32 20539, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %104, i32 %107, i64 %110)
  br label %136

112:                                              ; preds = %93
  %113 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %114 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %113, i32 0, i32 4
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load i32, i32* @ql_log_warn, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %129 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %128, i32 0, i32 4
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @ql_log(i32 %120, i32 %123, i32 20540, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %124, i32 %127, i64 %132)
  br label %135

134:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136, %80
  br label %138

138:                                              ; preds = %137, %59
  br label %139

139:                                              ; preds = %138, %39
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %145 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 4
  %148 = load i64, i64* @ql_dbg_async, align 8
  %149 = load i64, i64* @ql_dbg_buffer, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %153 = bitcast %struct.sts_entry_24xx* %152 to i32*
  %154 = call i32 @ql_dump_buffer(i64 %150, i32* %151, i32 20565, i32* %153, i32 40)
  br label %155

155:                                              ; preds = %142, %139
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32 (i32*, %struct.TYPE_11__*, i32)*, i32 (i32*, %struct.TYPE_11__*, i32)** %157, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = call i32 %158(i32* %159, %struct.TYPE_11__* %160, i32 0)
  br label %162

162:                                              ; preds = %155, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_11__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.tsk_mgmt_entry*) #2

declare dso_local i32 @ql_log(i32, i32, i32, i8*, i8*, i32, i64) #2

declare dso_local i64 @__constant_cpu_to_le16(i32) #2

declare dso_local i32 @le16_to_cpu(i64) #2

declare dso_local i32 @le32_to_cpu(i64) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
