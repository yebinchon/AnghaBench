; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_send_els_failure_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_send_els_failure_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_10__, i64, %struct.lpfc_nodelist*, %struct.lpfc_vport* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_lsrjt_event = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.lpfc_fabric_event_header = type { i32, i32, i32, i32 }
%struct.ls_rjt = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@IOSTAT_LS_RJT = common dso_local global i64 0, align 8
@FC_REG_ELS_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_LSRJT_RCV = common dso_local global i32 0, align 4
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@IOSTAT_NPORT_BSY = common dso_local global i64 0, align 8
@IOSTAT_FABRIC_BSY = common dso_local global i64 0, align 8
@FC_REG_FABRIC_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_PORT_BUSY = common dso_local global i32 0, align 4
@LPFC_EVENT_FABRIC_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_send_els_failure_event(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_lsrjt_event, align 4
  %10 = alloca %struct.lpfc_fabric_event_header, align 4
  %11 = alloca %struct.ls_rjt, align 4
  %12 = alloca %struct.lpfc_nodelist*, align 8
  %13 = alloca i32*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 3
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %7, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %18 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %8, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 2
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %20, align 8
  store %struct.lpfc_nodelist* %21, %struct.lpfc_nodelist** %12, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %23 = icmp ne %struct.lpfc_nodelist* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %26 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %3
  br label %141

29:                                               ; preds = %24
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IOSTAT_LS_RJT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %96

36:                                               ; preds = %29
  %37 = load i32, i32* @FC_REG_ELS_EVENT, align 4
  %38 = getelementptr inbounds %struct.lpfc_lsrjt_event, %struct.lpfc_lsrjt_event* %9, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @LPFC_EVENT_LSRJT_RCV, align 4
  %41 = getelementptr inbounds %struct.lpfc_lsrjt_event, %struct.lpfc_lsrjt_event* %9, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.lpfc_lsrjt_event, %struct.lpfc_lsrjt_event* %9, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 1
  %48 = call i32 @memcpy(i32 %45, i32* %47, i32 4)
  %49 = getelementptr inbounds %struct.lpfc_lsrjt_event, %struct.lpfc_lsrjt_event* %9, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %53 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %52, i32 0, i32 0
  %54 = call i32 @memcpy(i32 %51, i32* %53, i32 4)
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.lpfc_dmabuf*
  %59 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %36
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %65, align 4
  br label %68

67:                                               ; preds = %36
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  %70 = getelementptr inbounds %struct.lpfc_lsrjt_event, %struct.lpfc_lsrjt_event* %9, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  %79 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.lpfc_lsrjt_event, %struct.lpfc_lsrjt_event* %9, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.lpfc_lsrjt_event, %struct.lpfc_lsrjt_event* %9, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %92 = call i32 (...) @fc_get_event_number()
  %93 = bitcast %struct.lpfc_lsrjt_event* %9 to i8*
  %94 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %95 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %91, i32 %92, i32 28, i8* %93, i32 %94)
  br label %141

96:                                               ; preds = %29
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %98 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IOSTAT_NPORT_BSY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IOSTAT_FABRIC_BSY, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %141

110:                                              ; preds = %103, %96
  %111 = load i32, i32* @FC_REG_FABRIC_EVENT, align 4
  %112 = getelementptr inbounds %struct.lpfc_fabric_event_header, %struct.lpfc_fabric_event_header* %10, i32 0, i32 3
  store i32 %111, i32* %112, align 4
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @IOSTAT_NPORT_BSY, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* @LPFC_EVENT_PORT_BUSY, align 4
  %121 = getelementptr inbounds %struct.lpfc_fabric_event_header, %struct.lpfc_fabric_event_header* %10, i32 0, i32 2
  store i32 %120, i32* %121, align 4
  br label %125

122:                                              ; preds = %110
  %123 = load i32, i32* @LPFC_EVENT_FABRIC_BUSY, align 4
  %124 = getelementptr inbounds %struct.lpfc_fabric_event_header, %struct.lpfc_fabric_event_header* %10, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = getelementptr inbounds %struct.lpfc_fabric_event_header, %struct.lpfc_fabric_event_header* %10, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %129 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %128, i32 0, i32 1
  %130 = call i32 @memcpy(i32 %127, i32* %129, i32 4)
  %131 = getelementptr inbounds %struct.lpfc_fabric_event_header, %struct.lpfc_fabric_event_header* %10, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %134 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %133, i32 0, i32 0
  %135 = call i32 @memcpy(i32 %132, i32* %134, i32 4)
  %136 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %137 = call i32 (...) @fc_get_event_number()
  %138 = bitcast %struct.lpfc_fabric_event_header* %10 to i8*
  %139 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %140 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %136, i32 %137, i32 16, i8* %138, i32 %139)
  br label %141

141:                                              ; preds = %28, %68, %125, %103
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
