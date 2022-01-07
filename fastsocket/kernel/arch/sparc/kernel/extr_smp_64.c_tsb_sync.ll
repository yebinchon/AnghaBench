; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_tsb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_tsb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trap_per_cpu = type { i64 }
%struct.mm_struct = type { i32 }

@trap_block = common dso_local global %struct.trap_per_cpu* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tsb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsb_sync(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.trap_per_cpu*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.trap_per_cpu*, %struct.trap_per_cpu** @trap_block, align 8
  %6 = call i64 (...) @raw_smp_processor_id()
  %7 = getelementptr inbounds %struct.trap_per_cpu, %struct.trap_per_cpu* %5, i64 %6
  store %struct.trap_per_cpu* %7, %struct.trap_per_cpu** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mm_struct*
  store %struct.mm_struct* %9, %struct.mm_struct** %4, align 8
  %10 = load %struct.trap_per_cpu*, %struct.trap_per_cpu** %3, align 8
  %11 = getelementptr inbounds %struct.trap_per_cpu, %struct.trap_per_cpu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @__pa(i32 %15)
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %20 = call i32 @tsb_context_switch(%struct.mm_struct* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i64 @raw_smp_processor_id(...) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @tsb_context_switch(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
