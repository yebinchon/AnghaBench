; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_DISC_TRC_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"node init:       did:x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_nlp_init(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %8 = call i32 @memset(%struct.lpfc_nodelist* %7, i32 0, i32 12)
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %10 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @lpfc_initialize_node(%struct.lpfc_vport* %9, %struct.lpfc_nodelist* %10, i32 %11)
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LPFC_SLI_REV4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @lpfc_sli4_alloc_rpi(%struct.TYPE_2__* %26)
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %32 = load i32, i32* @LPFC_DISC_TRC_NODE, align 4
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %34 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %31, i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35, i32 0, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_initialize_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_sli4_alloc_rpi(%struct.TYPE_2__*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
