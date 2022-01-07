; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_protstatus_eval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_protstatus_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb*, %struct.zfcp_adapter* }
%struct.fsf_qtcb = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %union.fsf_prot_status_qual }
%union.fsf_prot_status_qual = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.zfcp_adapter = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@ZFCP_STATUS_FSFREQ_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"QTCB version 0x%x not supported by FCP adapter (0x%x to 0x%x)\0A\00", align 1
@FSF_QTCB_CURRENT_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fspse_1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fspse_2\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"The QTCB type is not supported by the FCP adapter\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fspse_3\00", align 1
@ZFCP_STATUS_ADAPTER_HOST_CON_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"0x%Lx is an ambiguous request identifier\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fspse_4\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fspse_5\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"fspse_6\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"fspse_7\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_SET = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"fspse_8\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"0x%x is not a valid transfer protocol status\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"fspse_9\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_protstatus_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_protstatus_eval(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.fsf_qtcb*, align 8
  %5 = alloca %union.fsf_prot_status_qual*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 2
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 1
  %11 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %10, align 8
  store %struct.fsf_qtcb* %11, %struct.fsf_qtcb** %4, align 8
  %12 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %13 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store %union.fsf_prot_status_qual* %14, %union.fsf_prot_status_qual** %5, align 8
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = call i32 @zfcp_dbf_hba_fsf_response(%struct.zfcp_fsf_req* %15)
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %132

29:                                               ; preds = %1
  %30 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %31 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %111 [
    i32 134, label %34
    i32 135, label %34
    i32 131, label %35
    i32 136, label %55
    i32 129, label %55
    i32 128, label %64
    i32 133, label %73
    i32 137, label %78
    i32 132, label %92
    i32 130, label %100
  ]

34:                                               ; preds = %29, %29
  br label %132

35:                                               ; preds = %29
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* @FSF_QTCB_CURRENT_VERSION, align 4
  %41 = load %union.fsf_prot_status_qual*, %union.fsf_prot_status_qual** %5, align 8
  %42 = bitcast %union.fsf_prot_status_qual* %41 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %union.fsf_prot_status_qual*, %union.fsf_prot_status_qual** %5, align 8
  %47 = bitcast %union.fsf_prot_status_qual* %46 to i32**
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %50)
  %52 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %54 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %52, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %53)
  br label %126

55:                                               ; preds = %29, %29
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %58 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %56, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.zfcp_fsf_req* %57)
  %59 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %60 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %61 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %126

64:                                               ; preds = %29
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %72 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %70, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.zfcp_fsf_req* %71)
  br label %126

73:                                               ; preds = %29
  %74 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %75, i32 0, i32 1
  %77 = call i32 @atomic_set_mask(i32 %74, i32* %76)
  br label %126

78:                                               ; preds = %29
  %79 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %84 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %87)
  %89 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %90 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %91 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %89, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.zfcp_fsf_req* %90)
  br label %126

92:                                               ; preds = %29
  %93 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %94 = load %union.fsf_prot_status_qual*, %union.fsf_prot_status_qual** %5, align 8
  %95 = bitcast %union.fsf_prot_status_qual* %94 to i32*
  %96 = call i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %95)
  %97 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %99 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %97, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.zfcp_fsf_req* %98)
  br label %126

100:                                              ; preds = %29
  %101 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %102 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %103 = load i32, i32* @ZFCP_SET, align 4
  %104 = call i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %102, i32 %103)
  %105 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %106 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %107 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %110 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %105, i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %struct.zfcp_fsf_req* %109)
  br label %126

111:                                              ; preds = %29
  %112 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %117 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %122 = call i32 @zfcp_qdio_siosl(%struct.zfcp_adapter* %121)
  %123 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %124 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %125 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %123, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct.zfcp_fsf_req* %124)
  br label %126

126:                                              ; preds = %111, %100, %92, %78, %73, %64, %55, %35
  %127 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %128 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %129 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %34, %23
  ret void
}

declare dso_local i32 @zfcp_dbf_hba_fsf_response(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter*, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req*, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter*, i8*, i32*, i32, i32) #1

declare dso_local i32 @zfcp_qdio_siosl(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
