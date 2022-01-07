; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_frame_init_from_blocked_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_frame_init_from_blocked_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_frame_info = type { i32 }
%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pt_regs }
%struct.pt_regs = type { i32, i32*, i32, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unwind_frame_init_from_blocked_task(%struct.unwind_frame_info* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.unwind_frame_info*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.unwind_frame_info* %0, %struct.unwind_frame_info** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.pt_regs* %9, %struct.pt_regs** %5, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.pt_regs* @kmalloc(i32 32, i32 %10)
  store %struct.pt_regs* %11, %struct.pt_regs** %6, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %13 = icmp ne %struct.pt_regs* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = bitcast %struct.pt_regs* %16 to i8*
  %19 = bitcast %struct.pt_regs* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 30
  store i32 %22, i32* %26, align 4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %3, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %37 = call i32 @unwind_frame_init(%struct.unwind_frame_info* %34, %struct.task_struct* %35, %struct.pt_regs* %36)
  %38 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %39 = call i32 @kfree(%struct.pt_regs* %38)
  br label %40

40:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.pt_regs* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unwind_frame_init(%struct.unwind_frame_info*, %struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @kfree(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
