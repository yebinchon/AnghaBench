; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_setup_disc_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_setup_disc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32, i64 }
%struct.lpfc_vport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@FC_RSCN_MODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@NLP_RCV_PLOGI = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i64 0, align 8
@NLP_STE_PLOGI_ISSUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %9 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %10, i32 %11)
  store %struct.lpfc_nodelist* %12, %struct.lpfc_nodelist** %7, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %14 = icmp ne %struct.lpfc_nodelist* %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %2
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FC_RSCN_MODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @lpfc_rscn_payload_check(%struct.lpfc_vport* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %177

28:                                               ; preds = %22, %15
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64 @mempool_alloc(i32 %33, i32 %34)
  %36 = inttoptr i64 %35 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %36, %struct.lpfc_nodelist** %7, align 8
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %38 = icmp ne %struct.lpfc_nodelist* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %177

40:                                               ; preds = %28
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %41, %struct.lpfc_nodelist* %42, i32 %43)
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %47 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %48 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %45, %struct.lpfc_nodelist* %46, i32 %47)
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @spin_lock_irq(i32 %51)
  %53 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @spin_unlock_irq(i32 %60)
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %62, %struct.lpfc_nodelist** %3, align 8
  br label %177

63:                                               ; preds = %2
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %65 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %63
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %70 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %71 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %68, %struct.lpfc_nodelist* %69, i32 %70)
  store %struct.lpfc_nodelist* %71, %struct.lpfc_nodelist** %7, align 8
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %73 = icmp ne %struct.lpfc_nodelist* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %177

75:                                               ; preds = %67
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @spin_lock_irq(i32 %78)
  %80 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %86 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @spin_unlock_irq(i32 %87)
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %89, %struct.lpfc_nodelist** %3, align 8
  br label %177

90:                                               ; preds = %63
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %93 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FC_RSCN_MODE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %91
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %137, label %105

105:                                              ; preds = %98
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i64 @lpfc_rscn_payload_check(%struct.lpfc_vport* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %105
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %112 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NLP_RCV_PLOGI, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %177

118:                                              ; preds = %110
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %120 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %121 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %119, %struct.lpfc_nodelist* %120)
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %123 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @spin_lock_irq(i32 %124)
  %126 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %128 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %132 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @spin_unlock_irq(i32 %133)
  br label %136

135:                                              ; preds = %105
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  br label %136

136:                                              ; preds = %135, %118
  br label %175

137:                                              ; preds = %98, %91
  %138 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %139 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NLP_STE_ADISC_ISSUE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %156, label %143

143:                                              ; preds = %137
  %144 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @NLP_STE_PLOGI_ISSUE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %143
  %150 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %151 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NLP_RCV_PLOGI, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149, %143, %137
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %177

157:                                              ; preds = %149
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %159 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %160 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %161 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %158, %struct.lpfc_nodelist* %159, i32 %160)
  %162 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %163 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @spin_lock_irq(i32 %164)
  %166 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %167 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %168 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %172 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @spin_unlock_irq(i32 %173)
  br label %175

175:                                              ; preds = %157, %136
  %176 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %176, %struct.lpfc_nodelist** %3, align 8
  br label %177

177:                                              ; preds = %175, %156, %117, %75, %74, %40, %39, %27
  %178 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  ret %struct.lpfc_nodelist* %178
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @lpfc_rscn_payload_check(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
