; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_state_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_state_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_nodelist = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@NLP_NODEV_REMOVE = common dso_local global i32 0, align 4
@NLP_FC_NODE = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_RCV_PLOGI = common dso_local global i32 0, align 4
@LPFC_MAX_BUCKET_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"0286 lpfc_nlp_state_cleanup failed to allocate statistical data buffer DID 0x%x\0A\00", align 1
@LPFC_MAX_TARGET = common dso_local global i32 0, align 4
@NLP_TGT_NO_SCSIID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, i32)* @lpfc_nlp_state_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nlp_state_cleanup(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %11 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @NLP_FC_NODE, align 4
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %15, %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @NLP_RCV_PLOGI, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %38
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58, %54
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %70 = call i32 @lpfc_unregister_remote_port(%struct.lpfc_nodelist* %69)
  br label %71

71:                                               ; preds = %62, %58, %49
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75, %71
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %87 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %88 = call i32 @lpfc_register_remote_port(%struct.lpfc_vport* %86, %struct.lpfc_nodelist* %87)
  br label %89

89:                                               ; preds = %79, %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %89
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %95 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load i32, i32* @LPFC_MAX_BUCKET_COUNT, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i32 @kcalloc(i32 %99, i32 4, i32 %100)
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %103 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %98
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %110 = load i32, i32* @KERN_ERR, align 4
  %111 = load i32, i32* @LOG_NODE, align 4
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %113 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %108, %98
  br label %117

117:                                              ; preds = %116, %93, %89
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %159

121:                                              ; preds = %117
  %122 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %123 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = icmp ne %struct.TYPE_4__* %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %128 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %141, label %133

133:                                              ; preds = %126
  %134 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %135 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @LPFC_MAX_TARGET, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %133, %126, %121
  %142 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %143 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @spin_lock_irq(i32 %144)
  %146 = load i32, i32* @NLP_TGT_NO_SCSIID, align 4
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %148 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %152 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @spin_unlock_irq(i32 %153)
  %155 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %156 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %157 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %158 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %155, %struct.lpfc_nodelist* %156, i32 %157)
  br label %159

159:                                              ; preds = %141, %133, %117
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_unregister_remote_port(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_register_remote_port(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
