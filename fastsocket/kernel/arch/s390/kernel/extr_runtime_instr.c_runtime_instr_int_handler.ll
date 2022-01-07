; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_runtime_instr.c_runtime_instr_int_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_runtime_instr.c_runtime_instr_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.siginfo = type { i64, i32, i32 }

@S390_lowcore = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CPU_MF_INT_RI_MASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SIGRTMIN = common dso_local global i64 0, align 8
@SIGRTMAX = common dso_local global i64 0, align 8
@SI_QUEUE = common dso_local global i32 0, align 4
@CPU_MF_INT_RI_BUF_FULL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@CPU_MF_INT_RI_HALTED = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @runtime_instr_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runtime_instr_int_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siginfo, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @S390_lowcore, i32 0, i32 0), align 4
  %5 = load i32, i32* @CPU_MF_INT_RI_MASK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %65

16:                                               ; preds = %9
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIGRTMIN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIGRTMAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %16
  %31 = call i32 @WARN_ON_ONCE(i32 1)
  br label %65

32:                                               ; preds = %23
  %33 = call i32 @memset(%struct.siginfo* %3, i32 0, i32 16)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @SI_QUEUE, align 4
  %40 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @S390_lowcore, i32 0, i32 0), align 4
  %42 = load i32, i32* @CPU_MF_INT_RI_BUF_FULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @ENOBUFS, align 4
  %47 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  br label %58

48:                                               ; preds = %32
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @S390_lowcore, i32 0, i32 0), align 4
  %50 = load i32, i32* @CPU_MF_INT_RI_HALTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @ECANCELED, align 4
  %55 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  br label %57

56:                                               ; preds = %48
  br label %65

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %64 = call i32 @send_sig_info(i64 %62, %struct.siginfo* %3, %struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %58, %56, %30, %15, %8
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memset(%struct.siginfo*, i32, i32) #1

declare dso_local i32 @send_sig_info(i64, %struct.siginfo*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
