; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_complete_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_complete_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.megasas_cmd = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, %struct.megasas_cmd*)* @megasas_complete_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_complete_abort(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %4, align 8
  %5 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 0
  %16 = call i32 @wake_up(i32* %15)
  br label %17

17:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
