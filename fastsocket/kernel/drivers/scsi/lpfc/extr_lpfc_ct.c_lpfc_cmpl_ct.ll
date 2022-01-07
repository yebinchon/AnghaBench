; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_9__, %struct.TYPE_10__, i64, i64, %struct.lpfc_vport* }
%struct.TYPE_9__ = type { %struct.lpfc_nodelist*, %struct.lpfc_iocbq* }
%struct.lpfc_nodelist = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"0209 CT Request completes, latt %d, ulpStatus x%x CmdRsp x%x, Context x%x, Tag x%x\0A\00", align 1
@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CT cmd cmpl:     status:x%x/x%x cmd:x%x\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"0268 NS cmd %x Error (%d %d)\0A\00", align 1
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@IOERR_SLI_DOWN = common dso_local global i32 0, align 4
@IOERR_SLI_ABORTED = common dso_local global i32 0, align 4
@LPFC_MAX_NS_RETRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"0250 Retrying NS cmd %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.lpfc_sli_ct_request*, align 8
  %12 = alloca %struct.lpfc_nodelist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 5
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %18, align 8
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %7, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %22, align 8
  store %struct.lpfc_nodelist* %23, %struct.lpfc_nodelist** %12, align 8
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store %struct.lpfc_iocbq* %24, %struct.lpfc_iocbq** %27, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %31, %struct.lpfc_dmabuf** %8, align 8
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %35, %struct.lpfc_dmabuf** %9, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %36, i32 0, i32 2
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %10, align 8
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %39 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.lpfc_sli_ct_request*
  %42 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be16_to_cpu(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %48 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %50, %struct.lpfc_sli_ct_request** %11, align 8
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %52 = call i32 @lpfc_els_chk_latt(%struct.lpfc_vport* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load i32, i32* @LOG_DISCOVERY, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %61 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %59, i32 %64, i32 %68, i32 %72)
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %75 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %74, i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %78, i32 %84, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %158

91:                                               ; preds = %3
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %93 = load i32, i32* @KERN_ERR, align 4
  %94 = load i32, i32* @LOG_DISCOVERY, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %92, i32 %93, i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %95, i64 %98, i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %91
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @IOERR_SLI_DOWN, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %133, label %122

122:                                              ; preds = %111
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @IOERR_SLI_ABORTED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %122, %111
  br label %159

134:                                              ; preds = %122, %91
  %135 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %136 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* @LPFC_MAX_NS_RETRY, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %159

142:                                              ; preds = %134
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %15, align 8
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %146 = load i32, i32* @KERN_INFO, align 4
  %147 = load i32, i32* @LOG_DISCOVERY, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i64, i64* %15, align 8
  %153 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %150, i32 %151, i64 %152, i32 0)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %159

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %3
  br label %159

159:                                              ; preds = %158, %156, %141, %133
  %160 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %161 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %162 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store %struct.lpfc_nodelist* %160, %struct.lpfc_nodelist** %163, align 8
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %165 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %166 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %164, %struct.lpfc_iocbq* %165)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i64, i32) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
