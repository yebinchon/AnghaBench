; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rls_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rls_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.RLS_RSP = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_20__, i32, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@lpfc_max_els_tries = common dso_local global i32 0, align 4
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"2874 Xmit ELS RLS ACC response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\0A\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_19__*)* @lpfc_els_rsp_rls_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_els_rsp_rls_acc(%struct.lpfc_hba* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.RLS_RSP*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %20, %struct.lpfc_nodelist** %10, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = and i64 %24, 65535
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %12, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = lshr i64 %30, 16
  %32 = and i64 %31, 65535
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %11, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mempool_free(%struct.TYPE_19__* %43, i32 %46)
  br label %190

48:                                               ; preds = %2
  store i32 52, i32* %13, align 4
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @lpfc_max_els_tries, align 4
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ELS_CMD_ACC, align 4
  %59 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(i32 %51, i32 0, i32 %52, i32 %53, %struct.lpfc_nodelist* %54, i32 %57, i32 %58)
  store %struct.lpfc_iocbq* %59, %struct.lpfc_iocbq** %9, align 8
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %61 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %60)
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %63 = icmp ne %struct.lpfc_iocbq* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %48
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mempool_free(%struct.TYPE_19__* %65, i32 %68)
  br label %190

70:                                               ; preds = %48
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %72 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %71, i32 0, i32 1
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %6, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i8* %76, i8** %80, align 8
  %81 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %82 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.lpfc_dmabuf*
  %85 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %8, align 8
  %88 = load i32, i32* @ELS_CMD_ACC, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32* %91, i32** %8, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = bitcast i32* %92 to %struct.RLS_RSP*
  store %struct.RLS_RSP* %93, %struct.RLS_RSP** %7, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.RLS_RSP*, %struct.RLS_RSP** %7, align 8
  %101 = getelementptr inbounds %struct.RLS_RSP, %struct.RLS_RSP* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @cpu_to_be32(i32 %106)
  %108 = load %struct.RLS_RSP*, %struct.RLS_RSP** %7, align 8
  %109 = getelementptr inbounds %struct.RLS_RSP, %struct.RLS_RSP* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @cpu_to_be32(i32 %114)
  %116 = load %struct.RLS_RSP*, %struct.RLS_RSP** %7, align 8
  %117 = getelementptr inbounds %struct.RLS_RSP, %struct.RLS_RSP* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @cpu_to_be32(i32 %122)
  %124 = load %struct.RLS_RSP*, %struct.RLS_RSP** %7, align 8
  %125 = getelementptr inbounds %struct.RLS_RSP, %struct.RLS_RSP* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @cpu_to_be32(i32 %130)
  %132 = load %struct.RLS_RSP*, %struct.RLS_RSP** %7, align 8
  %133 = getelementptr inbounds %struct.RLS_RSP, %struct.RLS_RSP* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = load %struct.RLS_RSP*, %struct.RLS_RSP** %7, align 8
  %141 = getelementptr inbounds %struct.RLS_RSP, %struct.RLS_RSP* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @mempool_free(%struct.TYPE_19__* %142, i32 %145)
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %148 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @KERN_INFO, align 4
  %151 = load i32, i32* @LOG_ELS, align 4
  %152 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %153 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %156 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %160 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %163 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %166 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %169 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @lpfc_printf_vlog(i32 %149, i32 %150, i32 %151, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %154, i8* %158, i32 %161, i32 %164, i32 %167, i32 %170)
  %172 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %173 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %174 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %181 = load i32, i32* @LPFC_ELS_RING, align 4
  %182 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %183 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %180, i32 %181, %struct.lpfc_iocbq* %182, i32 0)
  %184 = load i64, i64* @IOCB_ERROR, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %70
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %188 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %189 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %187, %struct.lpfc_iocbq* %188)
  br label %190

190:                                              ; preds = %42, %64, %186, %70
  ret void
}

declare dso_local i32 @mempool_free(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(i32, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
