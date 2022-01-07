; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_decode_config0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_decode_config0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32 }

@MIPS_CONF_MT = common dso_local global i32 0, align 4
@MIPS_CPU_TLB = common dso_local global i32 0, align 4
@MIPS_CONF_AT = common dso_local global i32 0, align 4
@MIPS_CONF_AR = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R1 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R2 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R1 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R2 = common dso_local global i32 0, align 4
@MIPS_CONF_M = common dso_local global i32 0, align 4
@unknown_isa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_config0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_config0(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  %6 = call i32 (...) @read_c0_config()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MIPS_CONF_MT, align 4
  %9 = and i32 %7, %8
  %10 = lshr i32 %9, 7
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @MIPS_CPU_TLB, align 4
  %14 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MIPS_CONF_AT, align 4
  %21 = and i32 %19, %20
  %22 = lshr i32 %21, 13
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %54 [
    i32 0, label %24
    i32 2, label %39
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MIPS_CONF_AR, align 4
  %27 = and i32 %25, %26
  %28 = lshr i32 %27, 10
  switch i32 %28, label %37 [
    i32 0, label %29
    i32 1, label %33
  ]

29:                                               ; preds = %24
  %30 = load i32, i32* @MIPS_CPU_ISA_M32R1, align 4
  %31 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @MIPS_CPU_ISA_M32R2, align 4
  %35 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %36 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %38

37:                                               ; preds = %24
  br label %59

38:                                               ; preds = %33, %29
  br label %55

39:                                               ; preds = %18
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MIPS_CONF_AR, align 4
  %42 = and i32 %40, %41
  %43 = lshr i32 %42, 10
  switch i32 %43, label %52 [
    i32 0, label %44
    i32 1, label %48
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* @MIPS_CPU_ISA_M64R1, align 4
  %46 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %47 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @MIPS_CPU_ISA_M64R2, align 4
  %50 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %51 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %53

52:                                               ; preds = %39
  br label %59

53:                                               ; preds = %48, %44
  br label %55

54:                                               ; preds = %18
  br label %59

55:                                               ; preds = %53, %38
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MIPS_CONF_M, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %54, %52, %37
  %60 = load i32, i32* @unknown_isa, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @panic(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @panic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
