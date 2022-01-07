; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_fsl_emb_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_fsl_emb_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i32, i32, i32 }

@num_counters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @fsl_emb_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_emb_cpu_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %4 = call i32 (...) @pmc_stop_ctrs()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @num_counters, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @init_pmc_stop(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %13, i64 %15
  %17 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set_pmc_event(i32 %12, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %21, i64 %23
  %25 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %27, i64 %29
  %31 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @set_pmc_user_kernel(i32 %20, i32 %26, i32 %32)
  br label %34

34:                                               ; preds = %9
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @pmc_stop_ctrs(...) #1

declare dso_local i32 @init_pmc_stop(i32) #1

declare dso_local i32 @set_pmc_event(i32, i32) #1

declare dso_local i32 @set_pmc_user_kernel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
