; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at91.c_set_smc_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at91.c_set_smc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.at91_ide_info = type { i32, i32 }
%struct.ata_timing = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [62 x i8] c"ATA timings: nrd_setup = %lu nrd_pulse = %lu nrd_cycle = %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"ATA timings: nwe_setup = %lu nwe_pulse = %lu nwe_cycle = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"ATA timings: ncs_read_setup = %lu ncs_read_pulse = %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"ATA timings: ncs_write_setup = %lu ncs_write_pulse = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.at91_ide_info*, %struct.ata_timing*)* @set_smc_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_smc_timing(%struct.device* %0, %struct.at91_ide_info* %1, %struct.ata_timing* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.at91_ide_info*, align 8
  %6 = alloca %struct.ata_timing*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.at91_ide_info* %1, %struct.at91_ide_info** %5, align 8
  store %struct.ata_timing* %2, %struct.ata_timing** %6, align 8
  %21 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %22 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %25 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %28 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %31 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.at91_ide_info*, %struct.at91_ide_info** %5, align 8
  %34 = getelementptr inbounds %struct.at91_ide_info, %struct.at91_ide_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @clk_get_rate(i32 %35)
  store i64 %36, i64* %20, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %20, align 8
  %39 = call i64 @calc_mck_cycles(i64 %37, i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %20, align 8
  %42 = call i64 @calc_mck_cycles(i64 %40, i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %20, align 8
  %45 = call i64 @calc_mck_cycles(i64 %43, i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %20, align 8
  %48 = call i64 @calc_mck_cycles(i64 %46, i64 %47)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %3
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 2
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %57, %3
  store i64 1, i64* %18, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %61, 2
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %18, align 8
  store i64 %66, i64* %16, align 8
  %67 = load i64, i64* %19, align 8
  store i64 %67, i64* %17, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %70, i64 %71)
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %75, i64 %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %19, align 8
  %81 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %79, i64 %80)
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %17, align 8
  %85 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %84)
  %86 = load %struct.at91_ide_info*, %struct.at91_ide_info** %5, align 8
  %87 = getelementptr inbounds %struct.at91_ide_info, %struct.at91_ide_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @AT91_SMC_SETUP(i32 %88)
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @AT91_SMC_NWESETUP_(i64 %90)
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @AT91_SMC_NRDSETUP_(i64 %92)
  %94 = or i32 %91, %93
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @AT91_SMC_NCS_WRSETUP_(i64 %95)
  %97 = or i32 %94, %96
  %98 = load i64, i64* %18, align 8
  %99 = call i32 @AT91_SMC_NCS_RDSETUP_(i64 %98)
  %100 = or i32 %97, %99
  %101 = call i32 @at91_sys_write(i32 %89, i32 %100)
  %102 = load %struct.at91_ide_info*, %struct.at91_ide_info** %5, align 8
  %103 = getelementptr inbounds %struct.at91_ide_info, %struct.at91_ide_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @AT91_SMC_PULSE(i32 %104)
  %106 = load i64, i64* %15, align 8
  %107 = call i32 @AT91_SMC_NWEPULSE_(i64 %106)
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @AT91_SMC_NRDPULSE_(i64 %108)
  %110 = or i32 %107, %109
  %111 = load i64, i64* %17, align 8
  %112 = call i32 @AT91_SMC_NCS_WRPULSE_(i64 %111)
  %113 = or i32 %110, %112
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @AT91_SMC_NCS_RDPULSE_(i64 %114)
  %116 = or i32 %113, %115
  %117 = call i32 @at91_sys_write(i32 %105, i32 %116)
  %118 = load %struct.at91_ide_info*, %struct.at91_ide_info** %5, align 8
  %119 = getelementptr inbounds %struct.at91_ide_info, %struct.at91_ide_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @AT91_SMC_CYCLE(i32 %120)
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @AT91_SMC_NWECYCLE_(i64 %122)
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @AT91_SMC_NRDCYCLE_(i64 %124)
  %126 = or i32 %123, %125
  %127 = call i32 @at91_sys_write(i32 %121, i32 %126)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @calc_mck_cycles(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, ...) #1

declare dso_local i32 @at91_sys_write(i32, i32) #1

declare dso_local i32 @AT91_SMC_SETUP(i32) #1

declare dso_local i32 @AT91_SMC_NWESETUP_(i64) #1

declare dso_local i32 @AT91_SMC_NRDSETUP_(i64) #1

declare dso_local i32 @AT91_SMC_NCS_WRSETUP_(i64) #1

declare dso_local i32 @AT91_SMC_NCS_RDSETUP_(i64) #1

declare dso_local i32 @AT91_SMC_PULSE(i32) #1

declare dso_local i32 @AT91_SMC_NWEPULSE_(i64) #1

declare dso_local i32 @AT91_SMC_NRDPULSE_(i64) #1

declare dso_local i32 @AT91_SMC_NCS_WRPULSE_(i64) #1

declare dso_local i32 @AT91_SMC_NCS_RDPULSE_(i64) #1

declare dso_local i32 @AT91_SMC_CYCLE(i32) #1

declare dso_local i32 @AT91_SMC_NWECYCLE_(i64) #1

declare dso_local i32 @AT91_SMC_NRDCYCLE_(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
