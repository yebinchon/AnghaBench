; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_ptrace_h8s.c_h8300_put_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_ptrace_h8s.c_h8300_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@h8300_register_offset = common dso_local global i64* null, align 8
@CCR_MASK = common dso_local global i16 0, align 2
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h8300_put_reg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %61 [
    i32 128, label %10
    i32 130, label %17
    i32 129, label %58
  ]

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = sub i64 %11, 16
  %13 = sub i64 %12, 2
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  br label %17

17:                                               ; preds = %3, %10
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** @h8300_register_offset, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %21, %26
  %28 = inttoptr i64 %27 to i16*
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %8, align 2
  %30 = load i16, i16* @CCR_MASK, align 2
  %31 = zext i16 %30 to i32
  %32 = xor i32 %31, -1
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, %32
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %8, align 2
  %37 = load i16, i16* @CCR_MASK, align 2
  %38 = zext i16 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load i16, i16* %8, align 2
  %42 = zext i16 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i16
  %47 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** @h8300_register_offset, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %50, %55
  %57 = inttoptr i64 %56 to i16*
  store i16 %46, i16* %57, align 2
  br label %74

58:                                               ; preds = %3
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %3
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** @h8300_register_offset, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %66, %71
  %73 = inttoptr i64 %72 to i64*
  store i64 %62, i64* %73, align 8
  br label %74

74:                                               ; preds = %61, %17
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
