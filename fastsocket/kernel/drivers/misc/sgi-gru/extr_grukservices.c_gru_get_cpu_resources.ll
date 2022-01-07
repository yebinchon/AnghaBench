; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_get_cpu_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_get_cpu_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i8*, i8* }

@GRU_NUM_KERNEL_DSR_BYTES = common dso_local global i32 0, align 4
@GRU_HANDLE_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8**)* @gru_get_cpu_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_get_cpu_resources(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.gru_blade_state*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GRU_NUM_KERNEL_DSR_BYTES, align 4
  %11 = icmp sgt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = call i32 (...) @preempt_disable()
  %15 = call %struct.gru_blade_state* @gru_lock_kernel_context(i32 -1)
  store %struct.gru_blade_state* %15, %struct.gru_blade_state** %7, align 8
  %16 = call i32 (...) @uv_blade_processor_id()
  store i32 %16, i32* %8, align 4
  %17 = load %struct.gru_blade_state*, %struct.gru_blade_state** %7, align 8
  %18 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GRU_HANDLE_STRIDE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %19, i64 %23
  %25 = load i8**, i8*** %5, align 8
  store i8* %24, i8** %25, align 8
  %26 = load %struct.gru_blade_state*, %struct.gru_blade_state** %7, align 8
  %27 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GRU_NUM_KERNEL_DSR_BYTES, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %28, i64 %32
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.gru_blade_state* @gru_lock_kernel_context(i32) #1

declare dso_local i32 @uv_blade_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
