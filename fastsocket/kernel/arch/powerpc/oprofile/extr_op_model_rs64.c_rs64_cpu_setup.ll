; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_rs64_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_rs64_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i32 }

@MMCR0_FC = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@SPRN_MMCR1 = common dso_local global i32 0, align 4
@CPU_FTR_MMCRA = common dso_local global i32 0, align 4
@SPRN_MMCRA = common dso_local global i32 0, align 4
@MMCR0_FCM1 = common dso_local global i32 0, align 4
@MMCR0_PMXE = common dso_local global i32 0, align 4
@MMCR0_FCECE = common dso_local global i32 0, align 4
@MMCR0_PMC1CE = common dso_local global i32 0, align 4
@MMCR0_PMCjCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"setup on cpu %d, mmcr0 %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"setup on cpu %d, mmcr1 %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @rs64_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs64_cpu_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %4 = load i32, i32* @MMCR0_FC, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @SPRN_MMCR0, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @mtspr(i32 %5, i32 %6)
  %8 = load i32, i32* @SPRN_MMCR1, align 4
  %9 = call i32 @mtspr(i32 %8, i32 0)
  %10 = load i32, i32* @CPU_FTR_MMCRA, align 4
  %11 = call i64 @cpu_has_feature(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @SPRN_MMCRA, align 4
  %15 = call i32 @mtspr(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @MMCR0_FCM1, align 4
  %18 = load i32, i32* @MMCR0_PMXE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MMCR0_FCECE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @MMCR0_PMC1CE, align 4
  %25 = load i32, i32* @MMCR0_PMCjCE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @SPRN_MMCR0, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mtspr(i32 %29, i32 %30)
  %32 = call i32 (...) @smp_processor_id()
  %33 = load i32, i32* @SPRN_MMCR0, align 4
  %34 = call i32 @mfspr(i32 %33)
  %35 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  %36 = call i32 (...) @smp_processor_id()
  %37 = load i32, i32* @SPRN_MMCR1, align 4
  %38 = call i32 @mfspr(i32 %37)
  %39 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  ret i32 0
}

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
