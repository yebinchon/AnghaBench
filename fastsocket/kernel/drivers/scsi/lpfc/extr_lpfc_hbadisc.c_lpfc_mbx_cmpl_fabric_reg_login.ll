; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fabric_reg_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fabric_reg_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32*, i32*, %struct.TYPE_7__, %struct.lpfc_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_vport = type { i64, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"0258 Register Fabric login error: 0x%x\0A\00", align 1
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@LPFC_FABRIC_CFG_LINK = common dso_local global i64 0, align 8
@FC_LOGO_RCVD_DID_CHNG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_fabric_reg_login(%struct.lpfc_hba* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca %struct.lpfc_nodelist*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %19, %struct.lpfc_dmabuf** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %23, %struct.lpfc_nodelist** %8, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %2
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = load i32, i32* @LOG_MBOX, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %42 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %40, i32 %43, i32 %46)
  %48 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %49 = call i32 @kfree(%struct.lpfc_dmabuf* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mempool_free(%struct.TYPE_10__* %50, i32 %53)
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %32
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %62 = call i32 @lpfc_disc_list_loopmap(%struct.lpfc_vport* %61)
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %63)
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %66 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %65)
  br label %157

67:                                               ; preds = %32
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %69 = load i32, i32* @FC_VPORT_FAILED, align 4
  %70 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %68, i32 %69)
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %72 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %71)
  br label %157

73:                                               ; preds = %2
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LPFC_SLI_REV4, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %73
  %89 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @NLP_FABRIC, align 4
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %101 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %102 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %99, %struct.lpfc_nodelist* %100, i32 %101)
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %104 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @LPFC_FABRIC_CFG_LINK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %88
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %110 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FC_LOGO_RCVD_DID_CHNG, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %117 = call i32 @lpfc_start_fdiscs(%struct.lpfc_hba* %116)
  br label %135

118:                                              ; preds = %108
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %120 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %119)
  store %struct.Scsi_Host* %120, %struct.Scsi_Host** %9, align 8
  %121 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %122 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @spin_lock_irq(i32 %123)
  %125 = load i32, i32* @FC_LOGO_RCVD_DID_CHNG, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %132 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @spin_unlock_irq(i32 %133)
  br label %135

135:                                              ; preds = %118, %115
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %137 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %138 = call i32 @lpfc_do_scr_ns_plogi(%struct.lpfc_hba* %136, %struct.lpfc_vport* %137)
  br label %139

139:                                              ; preds = %135, %88
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %142 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %140, i32 %143, i32 %146)
  %148 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %149 = call i32 @kfree(%struct.lpfc_dmabuf* %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @mempool_free(%struct.TYPE_10__* %150, i32 %153)
  %155 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %156 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %155)
  br label %157

157:                                              ; preds = %139, %67, %60
  ret void
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lpfc_disc_list_loopmap(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_start_fdiscs(%struct.lpfc_hba*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_do_scr_ns_plogi(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
