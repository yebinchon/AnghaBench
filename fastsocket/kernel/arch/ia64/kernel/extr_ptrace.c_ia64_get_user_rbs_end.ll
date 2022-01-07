; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_ia64_get_user_rbs_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_ia64_get_user_rbs_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64, i32, i64 }

@IA64_RBS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia64_get_user_rbs_end(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = bitcast %struct.task_struct* %14 to i64*
  %16 = load i32, i32* @IA64_RBS_OFFSET, align 4
  %17 = sdiv i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  store i64* %19, i64** %7, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %8, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 19
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %25, i64 %30
  %32 = call i64 @ia64_rse_num_regs(i64* %24, i64* %31)
  store i64 %32, i64* %10, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = call i64 @in_syscall(%struct.pt_regs* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i64, i64* %9, align 8
  %38 = and i64 %37, 127
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %44

41:                                               ; preds = %3
  %42 = load i64, i64* %9, align 8
  %43 = and i64 %42, 9223372036854775807
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i64*, i64** %6, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @ia64_rse_skip_regs(i64* %51, i64 %52)
  ret i64 %53
}

declare dso_local i64 @ia64_rse_num_regs(i64*, i64*) #1

declare dso_local i64 @in_syscall(%struct.pt_regs*) #1

declare dso_local i64 @ia64_rse_skip_regs(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
