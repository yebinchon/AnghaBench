; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_dcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_dcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.megasas_instance*, i32, i32, i32)* }
%struct.megasas_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_issue_dcmd(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %4, align 8
  %5 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %6 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.megasas_instance*, i32, i32, i32)*, i32 (%struct.megasas_instance*, i32, i32, i32)** %8, align 8
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %11 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %9(%struct.megasas_instance* %10, i32 %13, i32 0, i32 %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
