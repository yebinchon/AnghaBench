; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/x86/extr_core.c_rewrite_hypercall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/x86/extr_core.c_rewrite_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__const.rewrite_hypercall.insn = private unnamed_addr constant [3 x i32] [i32 205, i32 31, i32 144], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lg_cpu*)* @rewrite_hypercall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite_hypercall(%struct.lg_cpu* %0) #0 {
  %2 = alloca %struct.lg_cpu*, align 8
  %3 = alloca [3 x i32], align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %2, align 8
  %4 = bitcast [3 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([3 x i32]* @__const.rewrite_hypercall.insn to i8*), i64 12, i1 false)
  %5 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %6 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %7 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %8 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @guest_pa(%struct.lg_cpu* %6, i32 %11)
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %14 = call i32 @__lgwrite(%struct.lg_cpu* %5, i32 %12, i32* %13, i32 12)
  %15 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %16 = call i32 @guest_pagetable_clear_all(%struct.lg_cpu* %15)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__lgwrite(%struct.lg_cpu*, i32, i32*, i32) #2

declare dso_local i32 @guest_pa(%struct.lg_cpu*, i32) #2

declare dso_local i32 @guest_pagetable_clear_all(%struct.lg_cpu*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
