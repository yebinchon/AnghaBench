; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_64.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_64.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.pt_regs* }
%struct.pt_regs = type { i32, i8** }

@THREAD_SIZE = common dso_local global i64 0, align 8
@SR_FD = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@current = common dso_local global i32* null, align 8
@last_task_used_math = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %12 = load i64, i64* @THREAD_SIZE, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %14 = call i64 @task_stack_page(%struct.task_struct* %13)
  %15 = add i64 %12, %14
  %16 = inttoptr i64 %15 to %struct.pt_regs*
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i64 -1
  store %struct.pt_regs* %17, %struct.pt_regs** %11, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %20 = bitcast %struct.pt_regs* %18 to i8*
  %21 = bitcast %struct.pt_regs* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %23 = call i64 @user_mode(%struct.pt_regs* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @neff_sign_extend(i64 %26)
  %28 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 15
  store i8* %27, i8** %31, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store %struct.pt_regs* %32, %struct.pt_regs** %35, align 8
  br label %46

36:                                               ; preds = %5
  %37 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %38 = call i64 @task_stack_page(%struct.task_struct* %37)
  %39 = load i64, i64* @THREAD_SIZE, align 8
  %40 = add i64 %38, %39
  %41 = call i8* @neff_sign_extend(i64 %40)
  %42 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 15
  store i8* %41, i8** %45, align 8
  br label %46

46:                                               ; preds = %36, %25
  %47 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 9
  store i8* null, i8** %50, align 8
  %51 = load i32, i32* @SR_FD, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %57 = ptrtoint %struct.pt_regs* %56 to i64
  %58 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* @ret_from_fork, align 8
  %62 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i8* @neff_sign_extend(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
