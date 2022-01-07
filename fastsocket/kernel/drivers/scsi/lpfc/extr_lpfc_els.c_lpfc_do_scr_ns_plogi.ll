; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_do_scr_ns_plogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_do_scr_ns_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32 }
%struct.lpfc_vport = type { i32, i64, i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_DISC_DELAYED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"3334 Delay fc port discovery for %d seconds\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@NameServer_DID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"0251 NameServer login: no memory\0A\00", align 1
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"0348 NameServer login: node freed\0A\00", align 1
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"0252 Cannot issue NameServer login\0A\00", align 1
@FDMI_DID = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_do_scr_ns_plogi(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %4, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %9 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @spin_lock_irq(i32 %12)
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FC_DISC_DELAYED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spin_unlock_irq(i32 %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load i32, i32* @LOG_DISCOVERY, align 4
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %32, i32 0, i32 2
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 1000, %37
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  %40 = add nsw i64 %34, %39
  %41 = call i32 @mod_timer(i32* %33, i64 %40)
  br label %190

42:                                               ; preds = %2
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spin_unlock_irq(i32 %45)
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %48 = load i32, i32* @NameServer_DID, align 4
  %49 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %47, i32 %48)
  store %struct.lpfc_nodelist* %49, %struct.lpfc_nodelist** %5, align 8
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %51 = icmp ne %struct.lpfc_nodelist* %50, null
  br i1 %51, label %82, label %52

52:                                               ; preds = %42
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %55, i32 %56)
  store %struct.lpfc_nodelist* %57, %struct.lpfc_nodelist** %5, align 8
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %59 = icmp ne %struct.lpfc_nodelist* %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %52
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %68 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %67)
  br label %190

69:                                               ; preds = %60
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %71 = load i32, i32* @FC_VPORT_FAILED, align 4
  %72 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %70, i32 %71)
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %74 = load i32, i32* @KERN_ERR, align 4
  %75 = load i32, i32* @LOG_ELS, align 4
  %76 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %190

77:                                               ; preds = %52
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %80 = load i32, i32* @NameServer_DID, align 4
  %81 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %78, %struct.lpfc_nodelist* %79, i32 %80)
  br label %112

82:                                               ; preds = %42
  %83 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %84 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %82
  %87 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %89 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %90 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %87, %struct.lpfc_nodelist* %88, i32 %89)
  store %struct.lpfc_nodelist* %90, %struct.lpfc_nodelist** %5, align 8
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %92 = icmp ne %struct.lpfc_nodelist* %91, null
  br i1 %92, label %110, label %93

93:                                               ; preds = %86
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %101 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %100)
  br label %190

102:                                              ; preds = %93
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %104 = load i32, i32* @FC_VPORT_FAILED, align 4
  %105 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %103, i32 %104)
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %107 = load i32, i32* @KERN_ERR, align 4
  %108 = load i32, i32* @LOG_ELS, align 4
  %109 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %190

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %77
  %113 = load i32, i32* @NLP_FABRIC, align 4
  %114 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %115 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %119 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %120 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %121 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %118, %struct.lpfc_nodelist* %119, i32 %120)
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %124 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @lpfc_issue_els_plogi(%struct.lpfc_vport* %122, i32 %125, i32 0)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %112
  %129 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %130 = load i32, i32* @FC_VPORT_FAILED, align 4
  %131 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %129, i32 %130)
  %132 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %133 = load i32, i32* @KERN_ERR, align 4
  %134 = load i32, i32* @LOG_ELS, align 4
  %135 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %190

136:                                              ; preds = %112
  %137 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %138 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %190

141:                                              ; preds = %136
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %143 = load i32, i32* @FDMI_DID, align 4
  %144 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %142, i32 %143)
  store %struct.lpfc_nodelist* %144, %struct.lpfc_nodelist** %6, align 8
  %145 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %146 = icmp ne %struct.lpfc_nodelist* %145, null
  br i1 %146, label %167, label %147

147:                                              ; preds = %141
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %150, i32 %151)
  store %struct.lpfc_nodelist* %152, %struct.lpfc_nodelist** %6, align 8
  %153 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %154 = icmp ne %struct.lpfc_nodelist* %153, null
  br i1 %154, label %155, label %165

155:                                              ; preds = %147
  %156 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %157 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %158 = load i32, i32* @FDMI_DID, align 4
  %159 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %156, %struct.lpfc_nodelist* %157, i32 %158)
  %160 = load i32, i32* @NLP_FABRIC, align 4
  %161 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %162 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %166

165:                                              ; preds = %147
  br label %190

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %141
  %168 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %169 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %167
  %172 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %173 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %174 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %175 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %172, %struct.lpfc_nodelist* %173, i32 %174)
  store %struct.lpfc_nodelist* %175, %struct.lpfc_nodelist** %6, align 8
  br label %176

176:                                              ; preds = %171, %167
  %177 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %178 = icmp ne %struct.lpfc_nodelist* %177, null
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %181 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %182 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %183 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %180, %struct.lpfc_nodelist* %181, i32 %182)
  %184 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %185 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %186 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @lpfc_issue_els_plogi(%struct.lpfc_vport* %184, i32 %187, i32 0)
  br label %189

189:                                              ; preds = %179, %176
  br label %190

190:                                              ; preds = %20, %66, %69, %99, %102, %128, %165, %189, %136
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
