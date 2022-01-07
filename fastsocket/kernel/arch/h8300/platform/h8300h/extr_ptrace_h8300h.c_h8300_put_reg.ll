; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_h8300_put_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_h8300_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@h8300_register_offset = common dso_local global i64* null, align 8
@CCR_MASK = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h8300_put_reg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %56 [
    i32 128, label %9
    i32 129, label %15
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = sub i64 %10, 16
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  br label %15

15:                                               ; preds = %3, %9
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** @h8300_register_offset, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %19, %24
  %26 = inttoptr i64 %25 to i16*
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %7, align 2
  %28 = load i16, i16* @CCR_MASK, align 2
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, -1
  %31 = load i16, i16* %7, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %7, align 2
  %35 = load i16, i16* @CCR_MASK, align 2
  %36 = zext i16 %35 to i64
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i16, i16* %7, align 2
  %40 = zext i16 %39 to i64
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i16
  %45 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** @h8300_register_offset, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %48, %53
  %55 = inttoptr i64 %54 to i16*
  store i16 %44, i16* %55, align 2
  br label %69

56:                                               ; preds = %3
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** @h8300_register_offset, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = inttoptr i64 %67 to i64*
  store i64 %57, i64* %68, align 8
  br label %69

69:                                               ; preds = %56, %15
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
