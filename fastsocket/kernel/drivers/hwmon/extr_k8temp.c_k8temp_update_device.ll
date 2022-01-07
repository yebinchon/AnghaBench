; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_k8temp.c_k8temp_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_k8temp.c_k8temp_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k8temp_data = type { i32, i32, i32, i64, i32** }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@REG_TEMP = common dso_local global i32 0, align 4
@SEL_PLACE = common dso_local global i32 0, align 4
@SEL_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.k8temp_data* (%struct.device*)* @k8temp_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.k8temp_data* @k8temp_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.k8temp_data*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.k8temp_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.k8temp_data* %7, %struct.k8temp_data** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %11 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %14 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %20 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HZ, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @time_after(i64 %18, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %130

26:                                               ; preds = %17, %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* @REG_TEMP, align 4
  %29 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i32 %28, i32* %5)
  %30 = load i32, i32* @SEL_PLACE, align 4
  %31 = load i32, i32* @SEL_CORE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* @REG_TEMP, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pci_write_config_byte(%struct.pci_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @REG_TEMP, align 4
  %42 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %43 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %42, i32 0, i32 4
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 %41, i32* %47)
  %49 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %50 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SEL_PLACE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %26
  %56 = load i32, i32* @SEL_PLACE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load i32, i32* @REG_TEMP, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @pci_write_config_byte(%struct.pci_dev* %59, i32 %60, i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load i32, i32* @REG_TEMP, align 4
  %65 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %66 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %65, i32 0, i32 4
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = call i32 @pci_read_config_dword(%struct.pci_dev* %63, i32 %64, i32* %70)
  br label %72

72:                                               ; preds = %55, %26
  %73 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %74 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SEL_CORE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %72
  %80 = load i32, i32* @SEL_PLACE, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @SEL_CORE, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = load i32, i32* @REG_TEMP, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @pci_write_config_byte(%struct.pci_dev* %87, i32 %88, i32 %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load i32, i32* @REG_TEMP, align 4
  %93 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %94 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %93, i32 0, i32 4
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @pci_read_config_dword(%struct.pci_dev* %91, i32 %92, i32* %98)
  %100 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %101 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SEL_PLACE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %79
  %107 = load i32, i32* @SEL_PLACE, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = load i32, i32* @REG_TEMP, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @pci_write_config_byte(%struct.pci_dev* %110, i32 %111, i32 %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load i32, i32* @REG_TEMP, align 4
  %116 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %117 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %116, i32 0, i32 4
  %118 = load i32**, i32*** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = call i32 @pci_read_config_dword(%struct.pci_dev* %114, i32 %115, i32* %121)
  br label %123

123:                                              ; preds = %106, %79
  br label %124

124:                                              ; preds = %123, %72
  %125 = load i64, i64* @jiffies, align 8
  %126 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %127 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %129 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %124, %17
  %131 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  %132 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %131, i32 0, i32 2
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.k8temp_data*, %struct.k8temp_data** %3, align 8
  ret %struct.k8temp_data* %134
}

declare dso_local %struct.k8temp_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
