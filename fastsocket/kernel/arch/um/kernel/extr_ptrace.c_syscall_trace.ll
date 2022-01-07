; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_ptrace.c_syscall_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_ptrace.c_syscall_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.uml_pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@PT_DTRACE = common dso_local global i32 0, align 4
@HOST_AUDIT_ARCH = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@PT_PTRACED = common dso_local global i32 0, align 4
@PT_TRACESYSGOOD = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscall_trace(%struct.uml_pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.uml_pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uml_pt_regs* %0, %struct.uml_pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PT_DTRACE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ false, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @HOST_AUDIT_ARCH, align 4
  %29 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %30 = call i32 @UPT_SYSCALL_NR(%struct.uml_pt_regs* %29)
  %31 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %32 = call i32 @UPT_SYSCALL_ARG1(%struct.uml_pt_regs* %31)
  %33 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %34 = call i32 @UPT_SYSCALL_ARG2(%struct.uml_pt_regs* %33)
  %35 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %36 = call i32 @UPT_SYSCALL_ARG3(%struct.uml_pt_regs* %35)
  %37 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %38 = call i32 @UPT_SYSCALL_ARG4(%struct.uml_pt_regs* %37)
  %39 = call i32 @audit_syscall_entry(i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38)
  br label %47

40:                                               ; preds = %24
  %41 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %42 = call i32 @UPT_SYSCALL_RET(%struct.uml_pt_regs* %41)
  %43 = call i32 @AUDITSC_RESULT(i32 %42)
  %44 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %45 = call i32 @UPT_SYSCALL_RET(%struct.uml_pt_regs* %44)
  %46 = call i32 @audit_syscall_exit(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %40, %27
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %53 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %3, align 8
  %54 = call i32 @send_sigtrap(%struct.TYPE_4__* %52, %struct.uml_pt_regs* %53, i32 0)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %57 = call i32 @test_thread_flag(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %99

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PT_PTRACED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %99

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PT_TRACESYSGOOD, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @SIGTRAP, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 128, i32 0
  %79 = or i32 %74, %78
  %80 = call i32 @ptrace_notify(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i32, i32* @TIF_SIGPENDING, align 4
  %85 = call i32 @set_thread_flag(i32 %84)
  br label %86

86:                                               ; preds = %83, %68
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %96 = call i32 @send_sig(i64 %94, %struct.TYPE_4__* %95, i32 1)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %59, %67, %91, %86
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_syscall_entry(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UPT_SYSCALL_NR(%struct.uml_pt_regs*) #1

declare dso_local i32 @UPT_SYSCALL_ARG1(%struct.uml_pt_regs*) #1

declare dso_local i32 @UPT_SYSCALL_ARG2(%struct.uml_pt_regs*) #1

declare dso_local i32 @UPT_SYSCALL_ARG3(%struct.uml_pt_regs*) #1

declare dso_local i32 @UPT_SYSCALL_ARG4(%struct.uml_pt_regs*) #1

declare dso_local i32 @audit_syscall_exit(i32, i32) #1

declare dso_local i32 @AUDITSC_RESULT(i32) #1

declare dso_local i32 @UPT_SYSCALL_RET(%struct.uml_pt_regs*) #1

declare dso_local i32 @send_sigtrap(%struct.TYPE_4__*, %struct.uml_pt_regs*, i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @ptrace_notify(i32) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @send_sig(i64, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
