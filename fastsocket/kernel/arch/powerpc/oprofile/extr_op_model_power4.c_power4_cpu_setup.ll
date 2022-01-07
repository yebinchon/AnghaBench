; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power4_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power4_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i32 }

@mmcr0_val = common dso_local global i32 0, align 4
@mmcra_val = common dso_local global i64 0, align 8
@MMCR0_FC = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FCM1 = common dso_local global i32 0, align 4
@MMCR0_PMXE = common dso_local global i32 0, align 4
@MMCR0_FCECE = common dso_local global i32 0, align 4
@MMCR0_PMC1CE = common dso_local global i32 0, align 4
@MMCR0_PMCjCE = common dso_local global i32 0, align 4
@SPRN_MMCR1 = common dso_local global i32 0, align 4
@mmcr1_val = common dso_local global i64 0, align 8
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@SPRN_MMCRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"setup on cpu %d, mmcr0 %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"setup on cpu %d, mmcr1 %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"setup on cpu %d, mmcra %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @power4_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power4_cpu_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %5 = load i32, i32* @mmcr0_val, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @mmcra_val, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i32 (...) @ppc_enable_pmcs()
  %8 = load i32, i32* @MMCR0_FC, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SPRN_MMCR0, align 4
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = call i32 @mtspr(i32 %11, i64 %13)
  %15 = load i32, i32* @MMCR0_FCM1, align 4
  %16 = load i32, i32* @MMCR0_PMXE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MMCR0_FCECE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @MMCR0_PMC1CE, align 4
  %23 = load i32, i32* @MMCR0_PMCjCE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @SPRN_MMCR0, align 4
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = call i32 @mtspr(i32 %27, i64 %29)
  %31 = load i32, i32* @SPRN_MMCR1, align 4
  %32 = load i64, i64* @mmcr1_val, align 8
  %33 = call i32 @mtspr(i32 %31, i64 %32)
  %34 = call i64 (...) @mmcra_must_set_sample()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %38 = load i64, i64* %4, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %36, %1
  %41 = load i32, i32* @SPRN_MMCRA, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @mtspr(i32 %41, i64 %42)
  %44 = call i32 (...) @smp_processor_id()
  %45 = load i32, i32* @SPRN_MMCR0, align 4
  %46 = call i32 @mfspr(i32 %45)
  %47 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  %48 = call i32 (...) @smp_processor_id()
  %49 = load i32, i32* @SPRN_MMCR1, align 4
  %50 = call i32 @mfspr(i32 %49)
  %51 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50)
  %52 = call i32 (...) @smp_processor_id()
  %53 = load i32, i32* @SPRN_MMCRA, align 4
  %54 = call i32 @mfspr(i32 %53)
  %55 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %54)
  ret i32 0
}

declare dso_local i32 @ppc_enable_pmcs(...) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i64 @mmcra_must_set_sample(...) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
