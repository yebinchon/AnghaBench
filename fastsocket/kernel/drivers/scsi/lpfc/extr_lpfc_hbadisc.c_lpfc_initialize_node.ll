; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_initialize_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_initialize_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, %struct.lpfc_vport*, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@lpfc_els_retry_delay = common dso_local global i32 0, align 4
@NLP_NO_SID = common dso_local global i32 0, align 4
@LPFC_MAX_TGT_QDEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32)* @lpfc_initialize_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_initialize_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %8 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %15, i32 0, i32 7
  %17 = call i32 @init_timer(%struct.TYPE_6__* %16)
  %18 = load i32, i32* @lpfc_els_retry_delay, align 4
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %23 = ptrtoint %struct.lpfc_nodelist* %22 to i64
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 5
  store %struct.lpfc_vport* %30, %struct.lpfc_vport** %32, align 8
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @NLP_NO_SID, align 4
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %40 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %41, i32 0, i32 2
  %43 = call i32 @kref_init(i32* %42)
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %45 = call i32 @NLP_INT_NODE_ACT(%struct.lpfc_nodelist* %44)
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 1
  %48 = call i32 @atomic_set(i32* %47, i32 0)
  %49 = load i32, i32* @LPFC_MAX_TGT_QDEPTH, align 4
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @NLP_INT_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
