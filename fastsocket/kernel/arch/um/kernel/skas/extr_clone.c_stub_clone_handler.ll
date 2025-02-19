; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_clone.c_stub_clone_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_clone.c_stub_clone_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_data = type { i64, i32, i32, i32 }

@STUB_DATA = common dso_local global i32 0, align 4
@__NR_clone = common dso_local global i32 0, align 4
@CLONE_PARENT = common dso_local global i32 0, align 4
@CLONE_FILES = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@UM_KERN_PAGE_SIZE = common dso_local global i32 0, align 4
@__NR_ptrace = common dso_local global i32 0, align 4
@PTRACE_TRACEME = common dso_local global i32 0, align 4
@__NR_setitimer = common dso_local global i32 0, align 4
@ITIMER_VIRTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_clone_handler() #0 section ".__syscall_stub" {
  %1 = alloca %struct.stub_data*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @STUB_DATA, align 4
  %4 = sext i32 %3 to i64
  %5 = inttoptr i64 %4 to %struct.stub_data*
  store %struct.stub_data* %5, %struct.stub_data** %1, align 8
  %6 = load i32, i32* @__NR_clone, align 4
  %7 = load i32, i32* @CLONE_PARENT, align 4
  %8 = load i32, i32* @CLONE_FILES, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SIGCHLD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @STUB_DATA, align 4
  %13 = load i32, i32* @UM_KERN_PAGE_SIZE, align 4
  %14 = sdiv i32 %13, 2
  %15 = add nsw i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @stub_syscall2(i32 %6, i32 %11, i32 %18)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %48

23:                                               ; preds = %0
  %24 = load i32, i32* @__NR_ptrace, align 4
  %25 = load i32, i32* @PTRACE_TRACEME, align 4
  %26 = call i64 @stub_syscall4(i32 %24, i32 %25, i32 0, i32 0, i32 0)
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* %2, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %48

30:                                               ; preds = %23
  %31 = load i32, i32* @__NR_setitimer, align 4
  %32 = load i32, i32* @ITIMER_VIRTUAL, align 4
  %33 = load %struct.stub_data*, %struct.stub_data** %1, align 8
  %34 = getelementptr inbounds %struct.stub_data, %struct.stub_data* %33, i32 0, i32 3
  %35 = ptrtoint i32* %34 to i64
  %36 = call i64 @stub_syscall3(i32 %31, i32 %32, i64 %35, i32 0)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %48

40:                                               ; preds = %30
  %41 = load %struct.stub_data*, %struct.stub_data** %1, align 8
  %42 = getelementptr inbounds %struct.stub_data, %struct.stub_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stub_data*, %struct.stub_data** %1, align 8
  %45 = getelementptr inbounds %struct.stub_data, %struct.stub_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @remap_stack(i32 %43, i32 %46)
  br label %52

48:                                               ; preds = %39, %29, %22
  %49 = load i64, i64* %2, align 8
  %50 = load %struct.stub_data*, %struct.stub_data** %1, align 8
  %51 = getelementptr inbounds %struct.stub_data, %struct.stub_data* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = call i32 (...) @trap_myself()
  ret void
}

declare dso_local i64 @stub_syscall2(i32, i32, i32) #1

declare dso_local i64 @stub_syscall4(i32, i32, i32, i32, i32) #1

declare dso_local i64 @stub_syscall3(i32, i32, i64, i32) #1

declare dso_local i32 @remap_stack(i32, i32) #1

declare dso_local i32 @trap_myself(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
