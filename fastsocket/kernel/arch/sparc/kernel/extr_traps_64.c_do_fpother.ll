; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_do_fpother.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_do_fpother.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpustate = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i32* }

@FPUSTATE = common dso_local global %struct.fpustate* null, align 8
@DIE_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fpu exception other\00", align 1
@SIGFPE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_fpother(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.fpustate*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.fpustate*, %struct.fpustate** @FPUSTATE, align 8
  store %struct.fpustate* %5, %struct.fpustate** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @DIE_TRAP, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = load i32, i32* @SIGFPE, align 4
  %9 = call i64 @notify_die(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %7, i32 0, i32 37, i32 %8)
  %10 = load i64, i64* @NOTIFY_STOP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %31

13:                                               ; preds = %1
  %14 = call %struct.TYPE_2__* (...) @current_thread_info()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 114688
  switch i32 %19, label %24 [
    i32 32768, label %20
    i32 49152, label %20
  ]

20:                                               ; preds = %13, %13
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = load %struct.fpustate*, %struct.fpustate** %3, align 8
  %23 = call i32 @do_mathemu(%struct.pt_regs* %21, %struct.fpustate* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %13, %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %31

28:                                               ; preds = %24
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = call i32 @do_fpe_common(%struct.pt_regs* %29)
  br label %31

31:                                               ; preds = %28, %27, %12
  ret void
}

declare dso_local i64 @notify_die(i32, i8*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @do_mathemu(%struct.pt_regs*, %struct.fpustate*) #1

declare dso_local i32 @do_fpe_common(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
