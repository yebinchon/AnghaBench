; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_main.c_bcma_bus_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_main.c_bcma_bus_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_7__, %struct.TYPE_9__, i64 }
%struct.TYPE_8__ = type { %struct.bcma_device* }
%struct.bcma_device = type { i32 }
%struct.TYPE_6__ = type { %struct.bcma_device* }
%struct.TYPE_7__ = type { %struct.bcma_device* }
%struct.TYPE_9__ = type { %struct.bcma_device* }

@bcma_buses_mutex = common dso_local global i32 0, align 4
@bcma_bus_next_num = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to scan: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No SPROM available\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to get SPROM: %d\0A\00", align 1
@BCMA_CORE_MIPS_74K = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE = common dso_local global i32 0, align 4
@BCMA_CORE_4706_MAC_GBIT_COMMON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Bus registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_bus_register(%struct.bcma_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  %6 = call i32 @mutex_lock(i32* @bcma_buses_mutex)
  %7 = load i32, i32* @bcma_bus_next_num, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @bcma_bus_next_num, align 4
  %9 = sext i32 %7 to i64
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %10, i32 0, i32 4
  store i64 %9, i64* %11, align 8
  %12 = call i32 @mutex_unlock(i32* @bcma_buses_mutex)
  %13 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %14 = call i32 @bcma_bus_scan(%struct.bcma_bus* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %2, align 4
  br label %138

21:                                               ; preds = %1
  %22 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %23 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %24 = call i32 @bcma_cc_core_id(%struct.bcma_bus* %23)
  %25 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %22, i32 %24)
  store %struct.bcma_device* %25, %struct.bcma_device** %5, align 8
  %26 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %27 = icmp ne %struct.bcma_device* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %30 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %31 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store %struct.bcma_device* %29, %struct.bcma_device** %32, align 8
  %33 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %34 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %33, i32 0, i32 3
  %35 = call i32 @bcma_core_chipcommon_early_init(%struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %38 = call i32 @bcma_sprom_get(%struct.bcma_bus* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %45 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %54

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %43
  %55 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %56 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %57 = call i32 @bcma_cc_core_id(%struct.bcma_bus* %56)
  %58 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %55, i32 %57)
  store %struct.bcma_device* %58, %struct.bcma_device** %5, align 8
  %59 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %60 = icmp ne %struct.bcma_device* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %63 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %64 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store %struct.bcma_device* %62, %struct.bcma_device** %65, align 8
  %66 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %67 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %66, i32 0, i32 3
  %68 = call i32 @bcma_core_chipcommon_init(%struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %71 = load i32, i32* @BCMA_CORE_MIPS_74K, align 4
  %72 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %70, i32 %71)
  store %struct.bcma_device* %72, %struct.bcma_device** %5, align 8
  %73 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %74 = icmp ne %struct.bcma_device* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %77 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %78 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store %struct.bcma_device* %76, %struct.bcma_device** %79, align 8
  %80 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %81 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %80, i32 0, i32 2
  %82 = call i32 @bcma_core_mips_init(%struct.TYPE_7__* %81)
  br label %83

83:                                               ; preds = %75, %69
  %84 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %85 = load i32, i32* @BCMA_CORE_PCIE, align 4
  %86 = call %struct.bcma_device* @bcma_find_core_unit(%struct.bcma_bus* %84, i32 %85, i32 0)
  store %struct.bcma_device* %86, %struct.bcma_device** %5, align 8
  %87 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %88 = icmp ne %struct.bcma_device* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %91 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %92 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store %struct.bcma_device* %90, %struct.bcma_device** %95, align 8
  %96 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %97 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 0
  %100 = call i32 @bcma_core_pci_init(%struct.TYPE_6__* %99)
  br label %101

101:                                              ; preds = %89, %83
  %102 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %103 = load i32, i32* @BCMA_CORE_PCIE, align 4
  %104 = call %struct.bcma_device* @bcma_find_core_unit(%struct.bcma_bus* %102, i32 %103, i32 1)
  store %struct.bcma_device* %104, %struct.bcma_device** %5, align 8
  %105 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %106 = icmp ne %struct.bcma_device* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %109 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %110 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store %struct.bcma_device* %108, %struct.bcma_device** %113, align 8
  %114 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %115 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 1
  %118 = call i32 @bcma_core_pci_init(%struct.TYPE_6__* %117)
  br label %119

119:                                              ; preds = %107, %101
  %120 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %121 = load i32, i32* @BCMA_CORE_4706_MAC_GBIT_COMMON, align 4
  %122 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %120, i32 %121)
  store %struct.bcma_device* %122, %struct.bcma_device** %5, align 8
  %123 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %124 = icmp ne %struct.bcma_device* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %127 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %128 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store %struct.bcma_device* %126, %struct.bcma_device** %129, align 8
  %130 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %131 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %130, i32 0, i32 0
  %132 = call i32 @bcma_core_gmac_cmn_init(%struct.TYPE_8__* %131)
  br label %133

133:                                              ; preds = %125, %119
  %134 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %135 = call i32 @bcma_register_cores(%struct.bcma_bus* %134)
  %136 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %137 = call i32 @bcma_info(%struct.bcma_bus* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %17
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bcma_bus_scan(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*, ...) #1

declare dso_local %struct.bcma_device* @bcma_find_core(%struct.bcma_bus*, i32) #1

declare dso_local i32 @bcma_cc_core_id(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_core_chipcommon_early_init(%struct.TYPE_9__*) #1

declare dso_local i32 @bcma_sprom_get(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_core_chipcommon_init(%struct.TYPE_9__*) #1

declare dso_local i32 @bcma_core_mips_init(%struct.TYPE_7__*) #1

declare dso_local %struct.bcma_device* @bcma_find_core_unit(%struct.bcma_bus*, i32, i32) #1

declare dso_local i32 @bcma_core_pci_init(%struct.TYPE_6__*) #1

declare dso_local i32 @bcma_core_gmac_cmn_init(%struct.TYPE_8__*) #1

declare dso_local i32 @bcma_register_cores(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_info(%struct.bcma_bus*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
