; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_arch_dup_task_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_arch_dup_task_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_dup_task_struct(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = bitcast %struct.task_struct* %7 to i8*
  %10 = bitcast %struct.task_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.fpu*
  %15 = call i64 @fpu_allocated(%struct.fpu* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.fpu*
  %26 = call i32 @fpu_alloc(%struct.fpu* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %17
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.fpu*
  %36 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to %struct.fpu*
  %40 = call i32 @fpu_copy(%struct.fpu* %35, %struct.fpu* %39)
  br label %41

41:                                               ; preds = %31, %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @fpu_allocated(%struct.fpu*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @fpu_alloc(%struct.fpu*) #2

declare dso_local i32 @fpu_copy(%struct.fpu*, %struct.fpu*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
