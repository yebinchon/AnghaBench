; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_decode_config3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_decode_config3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32 }

@MIPS_CONF3_SM = common dso_local global i32 0, align 4
@MIPS_ASE_SMARTMIPS = common dso_local global i32 0, align 4
@MIPS_CONF3_DSP = common dso_local global i32 0, align 4
@MIPS_ASE_DSP = common dso_local global i32 0, align 4
@MIPS_CONF3_VINT = common dso_local global i32 0, align 4
@MIPS_CPU_VINT = common dso_local global i32 0, align 4
@MIPS_CONF3_VEIC = common dso_local global i32 0, align 4
@MIPS_CPU_VEIC = common dso_local global i32 0, align 4
@MIPS_CONF3_MT = common dso_local global i32 0, align 4
@MIPS_ASE_MIPSMT = common dso_local global i32 0, align 4
@MIPS_CONF3_ULRI = common dso_local global i32 0, align 4
@MIPS_CPU_ULRI = common dso_local global i32 0, align 4
@MIPS_CONF_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_config3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_config3(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %4 = call i32 (...) @read_c0_config3()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MIPS_CONF3_SM, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @MIPS_ASE_SMARTMIPS, align 4
  %11 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %12 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MIPS_CONF3_DSP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @MIPS_ASE_DSP, align 4
  %22 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MIPS_CONF3_VINT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @MIPS_CPU_VINT, align 4
  %33 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %34 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MIPS_CONF3_VEIC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @MIPS_CPU_VEIC, align 4
  %44 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @MIPS_CONF3_MT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @MIPS_ASE_MIPSMT, align 4
  %55 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %56 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @MIPS_CONF3_ULRI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @MIPS_CPU_ULRI, align 4
  %66 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %67 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @MIPS_CONF_M, align 4
  %73 = and i32 %71, %72
  ret i32 %73
}

declare dso_local i32 @read_c0_config3(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
