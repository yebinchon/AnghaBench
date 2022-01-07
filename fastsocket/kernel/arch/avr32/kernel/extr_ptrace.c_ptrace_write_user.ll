; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_ptrace.c_ptrace_write_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_ptrace.c_ptrace_write_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"ptrace_write_user(%s[%u], %#lx, %#lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  invalid offset 0x%08lx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @ptrace_write_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_write_user(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %15, i64 %16, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = and i64 %19, 3
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp uge i64 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %3
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %22
  %31 = load i64, i64* %6, align 8
  %32 = icmp uge i64 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %43

34:                                               ; preds = %30
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = call i64 @get_user_regs(%struct.task_struct* %35)
  %37 = inttoptr i64 %36 to i64*
  store i64* %37, i64** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = udiv i64 %40, 8
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %38, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %33, %25
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @get_user_regs(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
