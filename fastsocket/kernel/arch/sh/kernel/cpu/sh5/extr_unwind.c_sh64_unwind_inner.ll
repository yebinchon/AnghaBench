; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh5/extr_unwind.c_sh64_unwind_inner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh5/extr_unwind.c_sh64_unwind_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64* }

@syscall_ret = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SYSCALL\0A\00", align 1
@ret_from_syscall = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SYSCALL (PREEMPTED)\0A\00", align 1
@ret_from_exception = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"EXCEPTION\0A\00", align 1
@ret_from_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"IRQ\0A\00", align 1
@__MEMORY_START = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"[<%08lx>] \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unable to lookup previous stack frame\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @sh64_unwind_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_unwind_inner(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, -2
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 14
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %100, %1
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %21, and (i64 ptrtoint (i32* @syscall_ret to i64), i64 -2)
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @unwind_nested(i64 %25, i64 %26)
  br label %103

28:                                               ; preds = %20
  %29 = load i64, i64* %3, align 8
  %30 = icmp eq i64 %29, and (i64 ptrtoint (i32* @ret_from_syscall to i64), i64 -2)
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @unwind_nested(i64 %33, i64 %34)
  br label %103

36:                                               ; preds = %28
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %37, and (i64 ptrtoint (i32* @ret_from_exception to i64), i64 -2)
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @unwind_nested(i64 %41, i64 %42)
  br label %103

44:                                               ; preds = %36
  %45 = load i64, i64* %3, align 8
  %46 = icmp eq i64 %45, and (i64 ptrtoint (i32* @ret_from_irq to i64), i64 -2)
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @unwind_nested(i64 %49, i64 %50)
  br label %103

52:                                               ; preds = %44
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @__MEMORY_START, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @__MEMORY_START, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64, i64* %3, align 8
  %62 = and i64 %61, 3
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %4, align 8
  %66 = and i64 %65, 7
  %67 = icmp eq i64 %66, 0
  br label %68

68:                                               ; preds = %64, %60, %56, %52
  %69 = phi i1 [ false, %60 ], [ false, %56 ], [ false, %52 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %3, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @print_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %68
  %82 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 18
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  br label %88

87:                                               ; preds = %68
  store i64 0, i64* %9, align 8
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %3, align 8
  %91 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %92 = call i64 @lookup_prev_stack_frame(i64 %89, i64 %90, i64* %8, i64* %9, %struct.pt_regs* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  store i32 8, i32* %5, align 4
  %95 = load i64, i64* %9, align 8
  %96 = and i64 %95, -2
  store i64 %96, i64* %3, align 8
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %4, align 8
  br label %100

98:                                               ; preds = %88
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %101

100:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %20

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %47, %39, %31, %23
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @unwind_nested(i64, i64) #1

declare dso_local i32 @print_symbol(i8*, i64) #1

declare dso_local i64 @lookup_prev_stack_frame(i64, i64, i64*, i64*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
