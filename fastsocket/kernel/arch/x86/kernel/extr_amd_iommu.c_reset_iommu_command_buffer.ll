; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_reset_iommu_command_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_reset_iommu_command_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"AMD-Vi: Resetting IOMMU command buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"AMD-Vi: ILLEGAL_COMMAND_ERROR while resetting command buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @reset_iommu_command_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_iommu_command_buffer(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %3 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %5 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %12 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %14 = call i32 @amd_iommu_reset_cmd_buffer(%struct.amd_iommu* %13)
  %15 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %16 = call i32 @flush_all_devices_for_iommu(%struct.amd_iommu* %15)
  %17 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %18 = call i32 @flush_all_domains_on_iommu(%struct.amd_iommu* %17)
  %19 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %20 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @amd_iommu_reset_cmd_buffer(%struct.amd_iommu*) #1

declare dso_local i32 @flush_all_devices_for_iommu(%struct.amd_iommu*) #1

declare dso_local i32 @flush_all_domains_on_iommu(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
