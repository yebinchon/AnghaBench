; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_rs64_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_rs64_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_counter_config = type { i64 }

@SPRN_SIAR = common dso_local global i32 0, align 4
@MSR_PMM = common dso_local global i32 0, align 4
@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i32* null, align 8
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_PMXE = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_counter_config*)* @rs64_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs64_handle_interrupt(%struct.pt_regs* %0, %struct.op_counter_config* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %4, align 8
  %10 = load i32, i32* @SPRN_SIAR, align 4
  %11 = call i8* @mfspr(i32 %10)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @is_kernel_addr(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @mfmsr()
  %16 = load i32, i32* @MSR_PMM, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mtmsrd(i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %54, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @num_counters, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @classic_ctr_read(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %29, i64 %31
  %33 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @oprofile_add_ext_sample(i64 %37, %struct.pt_regs* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** @reset_value, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @classic_ctr_write(i32 %42, i32 %47)
  br label %52

49:                                               ; preds = %28
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @classic_ctr_write(i32 %50, i32 0)
  br label %52

52:                                               ; preds = %49, %36
  br label %53

53:                                               ; preds = %52, %23
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i32, i32* @SPRN_MMCR0, align 4
  %59 = call i8* @mfspr(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @MMCR0_PMXE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @MMCR0_FC, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @SPRN_MMCR0, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @mtspr(i32 %68, i32 %69)
  ret void
}

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @is_kernel_addr(i64) #1

declare dso_local i32 @mtmsrd(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @classic_ctr_read(i32) #1

declare dso_local i32 @oprofile_add_ext_sample(i64, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @classic_ctr_write(i32, i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
