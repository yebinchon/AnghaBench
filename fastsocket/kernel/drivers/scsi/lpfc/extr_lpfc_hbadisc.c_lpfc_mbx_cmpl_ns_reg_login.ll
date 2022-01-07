; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_ns_reg_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_ns_reg_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32*, i32*, %struct.lpfc_vport*, %struct.TYPE_7__ }
%struct.lpfc_vport = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"0260 Register NameServer error: 0x%x\0A\00", align 1
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@SLI_CTNS_RFF_ID = common dso_local global i32 0, align 4
@SLI_CTNS_RNN_ID = common dso_local global i32 0, align 4
@SLI_CTNS_RSNN_NN = common dso_local global i32 0, align 4
@SLI_CTNS_RSPN_ID = common dso_local global i32 0, align 4
@SLI_CTNS_RFT_ID = common dso_local global i32 0, align 4
@SCR_DID = common dso_local global i32 0, align 4
@SLI_CTNS_GID_FT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_ns_reg_login(%struct.lpfc_hba* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %15, %struct.lpfc_dmabuf** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %19, %struct.lpfc_nodelist** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %21, align 8
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %134, %31
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = load i32, i32* @LOG_ELS, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %41 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %40)
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %44 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %42, i32 %45, i32 %48)
  %50 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %51 = call i32 @kfree(%struct.lpfc_dmabuf* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mempool_free(%struct.TYPE_10__* %52, i32 %55)
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %58 = call i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %32
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %66 = call i32 @lpfc_disc_list_loopmap(%struct.lpfc_vport* %65)
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %68 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %67)
  br label %153

69:                                               ; preds = %32
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %71 = load i32, i32* @FC_VPORT_FAILED, align 4
  %72 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %70, i32 %71)
  br label %153

73:                                               ; preds = %2
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LPFC_SLI_REV4, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %73
  %89 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @NLP_FABRIC, align 4
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %101 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %102 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %99, %struct.lpfc_nodelist* %100, i32 %101)
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %104 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @LPFC_VPORT_READY, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %88
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %110 = load i32, i32* @SLI_CTNS_RFF_ID, align 4
  %111 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %109, i32 %110, i32 0, i32 0)
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %113 = load i32, i32* @SLI_CTNS_RNN_ID, align 4
  %114 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %112, i32 %113, i32 0, i32 0)
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %116 = load i32, i32* @SLI_CTNS_RSNN_NN, align 4
  %117 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %115, i32 %116, i32 0, i32 0)
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %119 = load i32, i32* @SLI_CTNS_RSPN_ID, align 4
  %120 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %118, i32 %119, i32 0, i32 0)
  %121 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %122 = load i32, i32* @SLI_CTNS_RFT_ID, align 4
  %123 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %121, i32 %122, i32 0, i32 0)
  %124 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %125 = load i32, i32* @SCR_DID, align 4
  %126 = call i32 @lpfc_issue_els_scr(%struct.lpfc_vport* %124, i32 %125, i32 0)
  br label %127

127:                                              ; preds = %108, %88
  %128 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %129 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %131 = load i32, i32* @SLI_CTNS_GID_FT, align 4
  %132 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %130, i32 %131, i32 0, i32 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %32

135:                                              ; preds = %127
  %136 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %137 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %136)
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %139 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %140 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %143 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %138, i32 %141, i32 %144)
  %146 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %147 = call i32 @kfree(%struct.lpfc_dmabuf* %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @mempool_free(%struct.TYPE_10__* %148, i32 %151)
  br label %153

153:                                              ; preds = %135, %69, %64
  ret void
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_disc_list_loopmap(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i32 @lpfc_issue_els_scr(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
