; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_init_tgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_init_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { void (%struct.ibmvfc_target*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IBMVFC_TGT_ACTION_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*, void (%struct.ibmvfc_target*)*)* @ibmvfc_init_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_init_tgt(%struct.ibmvfc_target* %0, void (%struct.ibmvfc_target*)* %1) #0 {
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca void (%struct.ibmvfc_target*)*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %3, align 8
  store void (%struct.ibmvfc_target*)* %1, void (%struct.ibmvfc_target*)** %4, align 8
  %5 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %6 = load i32, i32* @IBMVFC_TGT_ACTION_INIT, align 4
  %7 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %5, i32 %6)
  %8 = load void (%struct.ibmvfc_target*)*, void (%struct.ibmvfc_target*)** %4, align 8
  %9 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %9, i32 0, i32 0
  store void (%struct.ibmvfc_target*)* %8, void (%struct.ibmvfc_target*)** %10, align 8
  %11 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @wake_up(i32* %14)
  ret void
}

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
