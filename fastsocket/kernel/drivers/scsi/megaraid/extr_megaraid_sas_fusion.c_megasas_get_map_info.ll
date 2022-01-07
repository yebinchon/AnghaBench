; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_map_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_map_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.fusion_context* }
%struct.fusion_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_get_map_info(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %5 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %6 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %5, i32 0, i32 0
  %7 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  store %struct.fusion_context* %7, %struct.fusion_context** %4, align 8
  %8 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %9 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %11 = call i32 @megasas_get_ld_map_info(%struct.megasas_instance* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %15 = call i64 @MR_ValidateMapInfo(%struct.megasas_instance* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %19 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %22

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %1
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @megasas_get_ld_map_info(%struct.megasas_instance*) #1

declare dso_local i64 @MR_ValidateMapInfo(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
