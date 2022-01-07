; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_enable_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_enable_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32 }
%struct.lpfc_nodelist = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"0277 lpfc_enable_node: ndlp:x%p usgmap:x%x refcnt:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"0278 lpfc_enable_node: ndlp:x%p usgmap:x%x refcnt:%d\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"node enable:       did:x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %8, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %15 = icmp ne %struct.lpfc_nodelist* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %4, align 8
  br label %112

17:                                               ; preds = %3
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 1
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %23 = call i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %17
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load i32, i32* @LOG_NODE, align 4
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %34 = bitcast %struct.lpfc_nodelist* %33 to i8*
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @atomic_read(i32* %40)
  %42 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37, i32 %41)
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %4, align 8
  br label %112

43:                                               ; preds = %17
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %45 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %53 = load i32, i32* @KERN_WARNING, align 4
  %54 = load i32, i32* @LOG_NODE, align 4
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %56 = bitcast %struct.lpfc_nodelist* %55 to i8*
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @atomic_read(i32* %62)
  %64 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %59, i32 %63)
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %4, align 8
  br label %112

65:                                               ; preds = %43
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %70 = bitcast %struct.lpfc_nodelist* %69 to i8*
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = call i32 @memset(i8* %71, i32 0, i32 12)
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @lpfc_initialize_node(%struct.lpfc_vport* %73, %struct.lpfc_nodelist* %74, i32 %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 1
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %82 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %81, i32 0, i32 0
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %82, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LPFC_SLI_REV4, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %65
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %89, i32 0, i32 0
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %90, align 8
  %92 = call i32 @lpfc_sli4_alloc_rpi(%struct.lpfc_hba* %91)
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %94 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %65
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %100, %struct.lpfc_nodelist* %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %106 = load i32, i32* @LPFC_DISC_TRC_NODE, align 4
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %105, i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 0, i32 0)
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  store %struct.lpfc_nodelist* %111, %struct.lpfc_nodelist** %4, align 8
  br label %112

112:                                              ; preds = %104, %47, %25, %16
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  ret %struct.lpfc_nodelist* %113
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lpfc_initialize_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_sli4_alloc_rpi(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
