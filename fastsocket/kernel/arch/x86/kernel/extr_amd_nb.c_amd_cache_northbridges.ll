; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_nb.c_amd_cache_northbridges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_nb.c_amd_cache_northbridges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.amd_northbridge* }
%struct.amd_northbridge = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.pci_dev*, %struct.pci_dev* }

@amd_nb_misc_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@amd_northbridges = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@amd_nb_link_ids = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@AMD_NB_GART = common dso_local global i32 0, align 4
@AMD_NB_L3_INDEX_DISABLE = common dso_local global i32 0, align 4
@AMD_NB_L3_PARTITIONING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_cache_northbridges() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_northbridge*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store i32 0, i32* %2, align 4
  %6 = call i32 (...) @amd_nb_num()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %101

9:                                                ; preds = %0
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @amd_nb_misc_ids, align 4
  %13 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %11, i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %10

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %101

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.amd_northbridge* @kzalloc(i32 %26, i32 %27)
  store %struct.amd_northbridge* %28, %struct.amd_northbridge** %3, align 8
  %29 = load %struct.amd_northbridge*, %struct.amd_northbridge** %3, align 8
  %30 = icmp ne %struct.amd_northbridge* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %1, align 4
  br label %101

34:                                               ; preds = %22
  %35 = load %struct.amd_northbridge*, %struct.amd_northbridge** %3, align 8
  store %struct.amd_northbridge* %35, %struct.amd_northbridge** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 2), align 8
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 0), align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %54, %34
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (...) @amd_nb_num()
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @amd_nb_misc_ids, align 4
  %44 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %42, i32 %43)
  store %struct.pci_dev* %44, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call %struct.TYPE_4__* @node_to_amd_nb(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store %struct.pci_dev* %44, %struct.pci_dev** %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = load i32, i32* @amd_nb_link_ids, align 4
  %50 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %48, i32 %49)
  store %struct.pci_dev* %50, %struct.pci_dev** %5, align 8
  %51 = load i32, i32* %2, align 4
  %52 = call %struct.TYPE_4__* @node_to_amd_nb(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.pci_dev* %50, %struct.pci_dev** %53, align 8
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 4
  %59 = icmp eq i32 %58, 15
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 4
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 4
  %65 = icmp eq i32 %64, 21
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %60, %57
  %67 = load i32, i32* @AMD_NB_GART, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 4
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 1), align 4
  %75 = icmp sge i32 %74, 8
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 9
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 2), align 4
  %81 = icmp sge i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @AMD_NB_L3_INDEX_DISABLE, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %86

86:                                               ; preds = %82, %79, %73, %70
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 4
  %88 = icmp eq i32 %87, 21
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @AMD_NB_L3_INDEX_DISABLE, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 4
  %95 = icmp eq i32 %94, 21
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @AMD_NB_L3_PARTITIONING, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %100

100:                                              ; preds = %96, %93
  store i32 0, i32* %1, align 4
  br label %101

101:                                              ; preds = %100, %31, %21, %8
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

declare dso_local i32 @amd_nb_num(...) #1

declare dso_local %struct.pci_dev* @next_northbridge(%struct.pci_dev*, i32) #1

declare dso_local %struct.amd_northbridge* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @node_to_amd_nb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
