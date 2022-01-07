; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at32.c_pata_at32_setup_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at32.c_pata_at32_setup_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.at32_ide_info = type { i32, %struct.smc_config }
%struct.smc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_timing = type { i32, i32, i32, i32 }
%struct.smc_timing = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ATA: C=%d S=%d P=%d R=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SMC: C=%d S=%d P=%d NS=%d NP=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.at32_ide_info*, %struct.ata_timing*)* @pata_at32_setup_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_at32_setup_timing(%struct.device* %0, %struct.at32_ide_info* %1, %struct.ata_timing* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.at32_ide_info*, align 8
  %6 = alloca %struct.ata_timing*, align 8
  %7 = alloca %struct.smc_config*, align 8
  %8 = alloca %struct.smc_timing, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.at32_ide_info* %1, %struct.at32_ide_info** %5, align 8
  store %struct.ata_timing* %2, %struct.ata_timing** %6, align 8
  %11 = load %struct.at32_ide_info*, %struct.at32_ide_info** %5, align 8
  %12 = getelementptr inbounds %struct.at32_ide_info, %struct.at32_ide_info* %11, i32 0, i32 1
  store %struct.smc_config* %12, %struct.smc_config** %7, align 8
  %13 = call i32 @memset(%struct.smc_timing* %8, i32 0, i32 16)
  %14 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %15 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %8, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %19 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %8, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %23 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %8, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %27 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %31 = call i32 @smc_set_timing(%struct.smc_config* %30, %struct.smc_timing* %8)
  %32 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %33 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %37 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %39 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %42 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %46 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %57

52:                                               ; preds = %3
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 2
  %55 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %56 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %3
  %58 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %59 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %61 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 2
  %64 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %65 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %67 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %70 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %72 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %75 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %77 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %80 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %82 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %85 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %87 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %90 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %93 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %96 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %99 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %102 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 %100, i32 %103)
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %107 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %110 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %113 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %116 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %119 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %111, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.at32_ide_info*, %struct.at32_ide_info** %5, align 8
  %123 = getelementptr inbounds %struct.at32_ide_info, %struct.at32_ide_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.smc_config*, %struct.smc_config** %7, align 8
  %126 = call i32 @smc_set_configuration(i32 %124, %struct.smc_config* %125)
  ret i32 %126
}

declare dso_local i32 @memset(%struct.smc_timing*, i32, i32) #1

declare dso_local i32 @smc_set_timing(%struct.smc_config*, %struct.smc_timing*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @smc_set_configuration(i32, %struct.smc_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
