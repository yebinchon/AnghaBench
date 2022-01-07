; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pt_regs }
%struct.pt_regs = type { i32*, i64, i64, i64 }

@THREAD_SZ_ALGN = common dso_local global i64 0, align 8
@ret_from_kernel_thread = external dso_local constant i8*, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4
@PER_HPUX = common dso_local global i64 0, align 8
@child_return = external dso_local constant i8*, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.pt_regs* %15, %struct.pt_regs** %11, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = call i8* @task_stack_page(%struct.task_struct* %16)
  store i8* %17, i8** %12, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %20 = bitcast %struct.pt_regs* %18 to i8*
  %21 = bitcast %struct.pt_regs* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 28
  store i32 0, i32* %25, align 4
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %28, label %55

28:                                               ; preds = %5
  %29 = load i8*, i8** %12, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i64, i64* @THREAD_SZ_ALGN, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 2
  store i64 ptrtoint (i8** @ret_from_kernel_thread to i64), i64* %36, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 26
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 26
  store i32 %41, i32* %45, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 25
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 25
  store i32 %50, i32* %54, align 4
  br label %101

55:                                               ; preds = %5
  %56 = load i8*, i8** %12, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 21
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @THREAD_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = add i64 %57, %66
  %68 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 30
  store i32 %71, i32* %75, align 4
  %76 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PER_HPUX, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %55
  %82 = call i32 (...) @BUG()
  br label %86

83:                                               ; preds = %55
  %84 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 2
  store i64 ptrtoint (i8** @child_return to i64), i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %81
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @CLONE_SETTLS, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 23
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %91, %86
  br label %101

101:                                              ; preds = %100, %28
  ret i32 0
}

declare dso_local i8* @task_stack_page(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
