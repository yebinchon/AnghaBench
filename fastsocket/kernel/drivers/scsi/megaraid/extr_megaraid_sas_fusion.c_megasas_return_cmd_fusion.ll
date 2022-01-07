; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_return_cmd_fusion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_return_cmd_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64 }
%struct.megasas_cmd_fusion = type { i32, i64, i32* }
%struct.fusion_context = type { i32, i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, %struct.megasas_cmd_fusion*)* @megasas_return_cmd_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_return_cmd_fusion(%struct.megasas_instance* %0, %struct.megasas_cmd_fusion* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd_fusion*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd_fusion* %1, %struct.megasas_cmd_fusion** %4, align 8
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.fusion_context*
  store %struct.fusion_context* %10, %struct.fusion_context** %6, align 8
  %11 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %12 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %16 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load i64, i64* @ULONG_MAX, align 8
  %18 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %19 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %21 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %20, i32 0, i32 0
  %22 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %23 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %22, i32 0, i32 1
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  %25 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %26 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
