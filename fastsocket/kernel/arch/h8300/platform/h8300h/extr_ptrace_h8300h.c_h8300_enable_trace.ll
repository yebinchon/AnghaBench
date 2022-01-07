; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_h8300_enable_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_h8300_enable_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16*, i16 }

@PT_PC = common dso_local global i32 0, align 4
@BREAKINST = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h8300_enable_trace(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i16*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = load i32, i32* @PT_PC, align 4
  %7 = call i64 @h8300_get_reg(%struct.task_struct* %5, i32 %6)
  %8 = inttoptr i64 %7 to i16*
  %9 = call i16* @getnextpc(%struct.task_struct* %4, i16* %8)
  store i16* %9, i16** %3, align 8
  %10 = load i16*, i16** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i16* %10, i16** %14, align 8
  %15 = load i16*, i16** %3, align 8
  %16 = load i16, i16* %15, align 2
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i16 %16, i16* %20, align 8
  %21 = load i16, i16* @BREAKINST, align 2
  %22 = load i16*, i16** %3, align 8
  store i16 %21, i16* %22, align 2
  ret void
}

declare dso_local i16* @getnextpc(%struct.task_struct*, i16*) #1

declare dso_local i64 @h8300_get_reg(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
