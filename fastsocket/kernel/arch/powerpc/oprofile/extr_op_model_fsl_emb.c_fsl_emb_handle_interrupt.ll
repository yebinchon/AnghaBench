; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_fsl_emb_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_fsl_emb_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.op_counter_config = type { i64 }

@MSR_PMM = common dso_local global i32 0, align 4
@num_counters = common dso_local global i32 0, align 4
@oprofile_running = common dso_local global i64 0, align 8
@reset_value = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_counter_config*)* @fsl_emb_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_emb_handle_interrupt(%struct.pt_regs* %0, %struct.op_counter_config* %1) #0 {
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
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @is_kernel_addr(i64 %16)
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %56, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @num_counters, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ctr_read(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load i64, i64* @oprofile_running, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %31, i64 %33
  %35 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @oprofile_add_ext_sample(i64 %39, %struct.pt_regs* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** @reset_value, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ctr_write(i32 %44, i32 %49)
  br label %54

51:                                               ; preds = %30, %27
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ctr_write(i32 %52, i32 0)
  br label %54

54:                                               ; preds = %51, %38
  br label %55

55:                                               ; preds = %54, %22
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %18

59:                                               ; preds = %18
  %60 = call i32 @pmc_start_ctrs(i32 1)
  ret void
}

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @is_kernel_addr(i64) #1

declare dso_local i32 @ctr_read(i32) #1

declare dso_local i32 @oprofile_add_ext_sample(i64, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @ctr_write(i32, i32) #1

declare dso_local i32 @pmc_start_ctrs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
