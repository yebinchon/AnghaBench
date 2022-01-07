; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, %struct.fc_rport* }
%struct.fc_rport = type { i32 }
%struct.lpfc_iocbq = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@PRLI_FCP_TYPE = common dso_local global i64 0, align 8
@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rport rolechg:   role:x%x did:x%x flg:x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*)* @lpfc_rcv_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_rcv_prli(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.fc_rport*, align 8
  %11 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %12 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %12, i32 0, i32 4
  %14 = load %struct.fc_rport*, %struct.fc_rport** %13, align 8
  store %struct.fc_rport* %14, %struct.fc_rport** %10, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %18, %struct.lpfc_dmabuf** %7, align 8
  %19 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %20 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = bitcast i32* %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %9, align 8
  %26 = load i32, i32* @NLP_FCP_TARGET, align 4
  %27 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PRLI_FCP_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @NLP_FCP_TARGET, align 4
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %3
  %80 = load %struct.fc_rport*, %struct.fc_rport** %10, align 8
  %81 = icmp ne %struct.fc_rport* %80, null
  br i1 %81, label %82, label %119

82:                                               ; preds = %79
  %83 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  store i32 %83, i32* %11, align 4
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %90, %82
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @NLP_FCP_TARGET, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %107 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %110 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %113 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %106, i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %111, i32 %114)
  %116 = load %struct.fc_rport*, %struct.fc_rport** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @fc_remote_port_rolechg(%struct.fc_rport* %116, i32 %117)
  br label %119

119:                                              ; preds = %105, %79
  ret void
}

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @fc_remote_port_rolechg(%struct.fc_rport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
