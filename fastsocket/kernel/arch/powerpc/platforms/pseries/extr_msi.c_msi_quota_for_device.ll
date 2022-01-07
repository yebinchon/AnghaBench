; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_msi_quota_for_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_msi_quota_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.msi_counts = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtas_msi: calc quota for %s, request %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"rtas_msi: couldn't find PE for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"rtas_msi: found PE %s\0A\00", align 1
@count_non_bridge_devices = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"rtas_msi: found 0 devices under PE for %s\0A\00", align 1
@count_spare_msis = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"rtas_msi: request clamped to quota %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @msi_quota_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_quota_for_device(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.msi_counts, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @pci_name(%struct.pci_dev* %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call %struct.device_node* @find_pe_total_msi(%struct.pci_dev* %12, i32* %7)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call %struct.device_node* @find_pe_dn(%struct.pci_dev* %17, i32* %7)
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i32 @pci_name(%struct.pci_dev* %23)
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %88

26:                                               ; preds = %19
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = getelementptr inbounds %struct.device_node, %struct.device_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = call i32 @memset(%struct.msi_counts* %6, i32 0, i32 24)
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load i32, i32* @count_non_bridge_devices, align 4
  %34 = call i32 @traverse_pci_devices(%struct.device_node* %32, i32 %33, %struct.msi_counts* %6)
  %35 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_name(%struct.pci_dev* %39)
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %88

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %43, %45
  %47 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %88

53:                                               ; preds = %42
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = call i32 @pci_device_to_OF_node(%struct.pci_dev* %54)
  %56 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 5
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = load i32, i32* @count_spare_msis, align 4
  %61 = call i32 @traverse_pci_devices(%struct.device_node* %59, i32 %60, %struct.msi_counts* %6)
  %62 = load i32, i32* %7, align 4
  %63 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %62, %64
  %66 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %53
  %73 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %74, %76
  %78 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72, %53
  %82 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @min(i32 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81, %52, %38, %22
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = call i32 @of_node_put(%struct.device_node* %89)
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.device_node* @find_pe_total_msi(%struct.pci_dev*, i32*) #1

declare dso_local %struct.device_node* @find_pe_dn(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memset(%struct.msi_counts*, i32, i32) #1

declare dso_local i32 @traverse_pci_devices(%struct.device_node*, i32, %struct.msi_counts*) #1

declare dso_local i32 @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
