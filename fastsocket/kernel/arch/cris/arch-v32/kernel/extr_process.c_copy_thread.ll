; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__, i64, i32*, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pt_regs = type { i32, i64 }
%struct.switch_stack = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@CLONE_SETTLS = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.switch_stack*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %14 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %13)
  store %struct.pt_regs* %14, %struct.pt_regs** %11, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %17 = bitcast %struct.pt_regs* %15 to i8*
  %18 = bitcast %struct.pt_regs* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %5
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @CLONE_SETTLS, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %39 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %29, %5
  %42 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %43 = bitcast %struct.pt_regs* %42 to %struct.switch_stack*
  %44 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %43, i64 -1
  store %struct.switch_stack* %44, %struct.switch_stack** %12, align 8
  %45 = load %struct.switch_stack*, %struct.switch_stack** %12, align 8
  %46 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* @ret_from_fork, align 8
  %48 = load %struct.switch_stack*, %struct.switch_stack** %12, align 8
  %49 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.switch_stack*, %struct.switch_stack** %12, align 8
  %55 = ptrtoint %struct.switch_stack* %54 to i64
  %56 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  ret i32 0
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
