; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_7450.c_fsl7450_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_7450.c_fsl7450_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_counter_config = type { i64 }

@MSR_PMM = common dso_local global i32 0, align 4
@SPRN_SIAR = common dso_local global i32 0, align 4
@num_pmcs = common dso_local global i32 0, align 4
@oprofile_running = common dso_local global i64 0, align 8
@reset_value = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_counter_config*)* @fsl7450_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl7450_handle_interrupt(%struct.pt_regs* %0, %struct.op_counter_config* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %4, align 8
  %9 = call i32 (...) @mfmsr()
  %10 = load i32, i32* @MSR_PMM, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @mtmsr(i32 %11)
  %13 = load i32, i32* @SPRN_SIAR, align 4
  %14 = call i64 @mfspr(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @is_kernel_addr(i64 %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %55, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @num_pmcs, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @classic_ctr_read(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load i64, i64* @oprofile_running, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %30, i64 %32
  %34 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @oprofile_add_ext_sample(i64 %38, %struct.pt_regs* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** @reset_value, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @classic_ctr_write(i32 %43, i32 %48)
  br label %53

50:                                               ; preds = %29, %26
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @classic_ctr_write(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %50, %37
  br label %54

54:                                               ; preds = %53, %21
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %17

58:                                               ; preds = %17
  %59 = call i32 (...) @pmc_start_ctrs()
  ret void
}

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local i32 @is_kernel_addr(i64) #1

declare dso_local i32 @classic_ctr_read(i32) #1

declare dso_local i32 @oprofile_add_ext_sample(i64, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @classic_ctr_write(i32, i32) #1

declare dso_local i32 @pmc_start_ctrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
