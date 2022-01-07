; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rtv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rtv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32 }
%struct.ls_rjt = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i64 }
%struct.RTV_RSP = type { i32, i8*, i8* }
%struct.lpfc_dmabuf = type { i64 }

@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@lpfc_max_els_tries = common dso_local global i32 0, align 4
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@qtov_edtovres = common dso_local global i32 0, align 4
@qtov_rttov = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"2875 Xmit ELS RTV ACC response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x, Data: x%x x%x x%x\0A\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_rtv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_rtv(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.ls_rjt, align 8
  %10 = alloca %struct.RTV_RSP*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 0
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %8, align 8
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %18 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %161

29:                                               ; preds = %22, %3
  store i32 28, i32* %13, align 4
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @lpfc_max_els_tries, align 4
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ELS_CMD_ACC, align 4
  %40 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(i32 %32, i32 0, i32 %33, i32 %34, %struct.lpfc_nodelist* %35, i32 %38, i32 %39)
  store %struct.lpfc_iocbq* %40, %struct.lpfc_iocbq** %12, align 8
  %41 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %42 = icmp ne %struct.lpfc_iocbq* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %183

44:                                               ; preds = %29
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %46 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.lpfc_dmabuf*
  %49 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %11, align 8
  %52 = load i32, i32* @ELS_CMD_ACC, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %11, align 8
  %56 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %61 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %64 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %70 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = bitcast i32* %74 to %struct.RTV_RSP*
  store %struct.RTV_RSP* %75, %struct.RTV_RSP** %10, align 8
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 1000
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %82 = getelementptr inbounds %struct.RTV_RSP, %struct.RTV_RSP* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %88 = getelementptr inbounds %struct.RTV_RSP, %struct.RTV_RSP* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @qtov_edtovres, align 4
  %90 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = call i32 @bf_set(i32 %89, %struct.RTV_RSP* %90, i32 %96)
  %98 = load i32, i32* @qtov_rttov, align 4
  %99 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %100 = call i32 @bf_set(i32 %98, %struct.RTV_RSP* %99, i32 0)
  %101 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %102 = getelementptr inbounds %struct.RTV_RSP, %struct.RTV_RSP* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %107 = getelementptr inbounds %struct.RTV_RSP, %struct.RTV_RSP* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %109 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @KERN_INFO, align 4
  %112 = load i32, i32* @LOG_ELS, align 4
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %117 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %121 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %124 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %127 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %130 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %133 = getelementptr inbounds %struct.RTV_RSP, %struct.RTV_RSP* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %136 = getelementptr inbounds %struct.RTV_RSP, %struct.RTV_RSP* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.RTV_RSP*, %struct.RTV_RSP** %10, align 8
  %139 = getelementptr inbounds %struct.RTV_RSP, %struct.RTV_RSP* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @lpfc_printf_vlog(i32 %110, i32 %111, i32 %112, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %119, i32 %122, i32 %125, i32 %128, i32 %131, i8* %134, i8* %137, i32 %140)
  %142 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %143 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %144 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %146 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %151 = load i32, i32* @LPFC_ELS_RING, align 4
  %152 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %153 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %150, i32 %151, %struct.lpfc_iocbq* %152, i32 0)
  %154 = load i64, i64* @IOCB_ERROR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %44
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %158 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %159 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %157, %struct.lpfc_iocbq* %158)
  br label %160

160:                                              ; preds = %156, %44
  store i32 0, i32* %4, align 4
  br label %183

161:                                              ; preds = %28
  %162 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %9, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 3
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %166 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %9, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %170 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %9, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 8
  %173 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %9, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %177 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %9, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %181 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %182 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %176, i32 %179, %struct.lpfc_iocbq* %180, %struct.lpfc_nodelist* %181, i32* null)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %161, %160, %43
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(i32, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @bf_set(i32, %struct.RTV_RSP*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
