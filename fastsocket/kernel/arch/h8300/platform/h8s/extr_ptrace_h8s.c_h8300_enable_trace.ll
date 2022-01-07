; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_ptrace_h8s.c_h8300_enable_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_ptrace_h8s.c_h8300_enable_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EXR_TRACE = common dso_local global i16 0, align 2
@h8300_register_offset = common dso_local global i64* null, align 8
@PT_EXR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h8300_enable_trace(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load i16, i16* @EXR_TRACE, align 2
  %4 = zext i16 %3 to i32
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64*, i64** @h8300_register_offset, align 8
  %10 = load i64, i64* @PT_EXR, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %8, %12
  %14 = inttoptr i64 %13 to i16*
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, %4
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %14, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
