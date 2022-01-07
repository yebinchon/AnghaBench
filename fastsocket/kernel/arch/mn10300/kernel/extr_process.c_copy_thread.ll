; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pt_regs* }
%struct.pt_regs = type { i64, i64, %struct.pt_regs*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.task_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, %struct.pt_regs*, %struct.pt_regs* }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8
@EPSW_FE = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@__frame = common dso_local global %struct.TYPE_8__* null, align 8
@ret_from_fork = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca %struct.pt_regs*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.pt_regs*, %struct.pt_regs** %17, align 8
  store %struct.pt_regs* %18, %struct.pt_regs** %13, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %20 = call i64 @task_stack_page(%struct.task_struct* %19)
  %21 = load i64, i64* @THREAD_SIZE, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = sub i64 %23, 32
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = inttoptr i64 %25 to %struct.pt_regs*
  store %struct.pt_regs* %26, %struct.pt_regs** %11, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  store %struct.pt_regs* %27, %struct.pt_regs** %30, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %33 = bitcast %struct.pt_regs* %31 to i8*
  %34 = bitcast %struct.pt_regs* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @EPSW_FE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i64, i64* %14, align 8
  %45 = sub i64 %44, 12
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @CLONE_SETTLS, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %5
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__frame, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %5
  %57 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  store %struct.pt_regs* %57, %struct.pt_regs** %12, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %60 = icmp ne %struct.pt_regs* %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load i64, i64* %14, align 8
  %63 = sub i64 %62, 32
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = inttoptr i64 %64 to %struct.pt_regs*
  store %struct.pt_regs* %65, %struct.pt_regs** %12, align 8
  %66 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %68 = bitcast %struct.pt_regs* %66 to i8*
  %69 = bitcast %struct.pt_regs* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 32, i1 false)
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 2
  store %struct.pt_regs* %73, %struct.pt_regs** %75, align 8
  %76 = load i64, i64* %14, align 8
  %77 = sub i64 %76, 12
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %61, %56
  %79 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %80 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store %struct.pt_regs* %79, %struct.pt_regs** %82, align 8
  %83 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %84 = ptrtoint %struct.pt_regs* %83 to i64
  %85 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %86 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* @ret_from_fork, align 8
  %93 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* @ret_from_fork, align 8
  %97 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  store i64 %100, i64* %103, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
