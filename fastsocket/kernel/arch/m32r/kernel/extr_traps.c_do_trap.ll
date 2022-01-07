; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_traps.c_do_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_traps.c_do_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, %struct.pt_regs*, i64, i32*)* @do_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_trap(i32 %0, i32 %1, i8* %2, %struct.pt_regs* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %15 = call i64 @user_mode(%struct.pt_regs* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %6
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %13, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %33 = call i32 @force_sig_info(i32 %30, i32* %31, %struct.task_struct* %32)
  br label %38

34:                                               ; preds = %17
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %37 = call i32 @force_sig(i32 %35, %struct.task_struct* %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %49

39:                                               ; preds = %6
  %40 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %41 = call i32 @fixup_exception(%struct.pt_regs* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @die(i8* %44, %struct.pt_regs* %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48, %38
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @force_sig_info(i32, i32*, %struct.task_struct*) #1

declare dso_local i32 @force_sig(i32, %struct.task_struct*) #1

declare dso_local i32 @fixup_exception(%struct.pt_regs*) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
