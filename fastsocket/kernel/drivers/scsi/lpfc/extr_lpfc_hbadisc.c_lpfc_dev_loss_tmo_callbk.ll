; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_dev_loss_tmo_callbk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_dev_loss_tmo_callbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64, i32, %struct.lpfc_rport_data* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64, i32, %struct.lpfc_work_evt, %struct.TYPE_4__, i32*, i32, i32, %struct.lpfc_vport*, i32 }
%struct.lpfc_work_evt = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }

@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"rport devlosscb: sid:x%x did:x%x flg:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"3181 dev_loss_callbk x%06x, rport %p flg x%x\0A\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@NLP_FABRIC = common dso_local global i32 0, align 4
@LPFC_EVT_DEV_LOSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_dev_loss_tmo_callbk(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.lpfc_rport_data*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_work_evt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %10 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %11 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %10, i32 0, i32 2
  %12 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %11, align 8
  store %struct.lpfc_rport_data* %12, %struct.lpfc_rport_data** %3, align 8
  %13 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %13, i32 0, i32 0
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  store %struct.lpfc_nodelist* %15, %struct.lpfc_nodelist** %4, align 8
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %17 = icmp ne %struct.lpfc_nodelist* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %20 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %1
  br label %156

23:                                               ; preds = %18
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 7
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %25, align 8
  store %struct.lpfc_vport* %26, %struct.lpfc_vport** %5, align 8
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 1
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %28, align 8
  store %struct.lpfc_hba* %29, %struct.lpfc_hba** %6, align 8
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %31 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %30, i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %42, i32 0, i32 7
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %43, align 8
  %45 = load i32, i32* @KERN_INFO, align 4
  %46 = load i32, i32* @LOG_NODE, align 4
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32* %52, i32 %55)
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FC_UNLOADING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %23
  %64 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %64, i32 0, i32 0
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %65, align 8
  %67 = icmp ne %struct.lpfc_nodelist* %66, null
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %74, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %75, align 8
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %77 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %63
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %82 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %81)
  br label %83

83:                                               ; preds = %80, %63
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %88 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %87, i32 0, i32 1
  %89 = call i32 @put_device(i32* %88)
  br label %90

90:                                               ; preds = %86, %83
  br label %156

91:                                               ; preds = %23
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %156

98:                                               ; preds = %91
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @NLP_FABRIC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %107 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %110 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @wwn_to_u64(i32 %113)
  %115 = icmp ne i64 %108, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %105
  %117 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %118 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %117, i32 0, i32 1
  %119 = call i32 @put_device(i32* %118)
  br label %156

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %123 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %122, i32 0, i32 2
  store %struct.lpfc_work_evt* %123, %struct.lpfc_work_evt** %7, align 8
  %124 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %125 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %124, i32 0, i32 0
  %126 = call i32 @list_empty(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %156

129:                                              ; preds = %121
  %130 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %131 = call i64 @lpfc_nlp_get(%struct.lpfc_nodelist* %130)
  %132 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %133 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 0
  %136 = call i32 @spin_lock_irq(i32* %135)
  %137 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %138 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %129
  %142 = load i32, i32* @LPFC_EVT_DEV_LOSS, align 4
  %143 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %144 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %146 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %145, i32 0, i32 0
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %148 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %147, i32 0, i32 1
  %149 = call i32 @list_add_tail(i32* %146, i32* %148)
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %151 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %150)
  br label %152

152:                                              ; preds = %141, %129
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock_irq(i32* %154)
  br label %156

156:                                              ; preds = %152, %128, %116, %97, %90, %22
  ret void
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i64 @wwn_to_u64(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
