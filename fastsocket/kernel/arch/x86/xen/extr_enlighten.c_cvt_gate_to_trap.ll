; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_cvt_gate_to_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_cvt_gate_to_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.trap_info = type { i32, i64, i32, i32 }

@GATE_TRAP = common dso_local global i64 0, align 8
@GATE_INTERRUPT = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@double_fault = common dso_local global i64 0, align 8
@int3 = common dso_local global i64 0, align 8
@machine_check = common dso_local global i64 0, align 8
@nmi = common dso_local global i64 0, align 8
@stack_segment = common dso_local global i64 0, align 8
@xen_debug = common dso_local global i64 0, align 8
@xen_int3 = common dso_local global i64 0, align 8
@xen_stack_segment = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, %struct.trap_info*)* @cvt_gate_to_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvt_gate_to_trap(i32 %0, %struct.TYPE_5__* %1, %struct.trap_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.trap_info*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.trap_info* %2, %struct.trap_info** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GATE_TRAP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GATE_INTERRUPT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %50

21:                                               ; preds = %14, %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.trap_info*, %struct.trap_info** %7, align 8
  %24 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = call i64 @gate_offset(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.trap_info*, %struct.trap_info** %7, align 8
  %29 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = call i32 @gate_segment(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %30)
  %32 = load %struct.trap_info*, %struct.trap_info** %7, align 8
  %33 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.trap_info*, %struct.trap_info** %7, align 8
  %38 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GATE_INTERRUPT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %21
  %45 = load %struct.trap_info*, %struct.trap_info** %7, align 8
  %46 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, 4
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %21
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @gate_offset(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @gate_segment(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
