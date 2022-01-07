; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64* }

@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %10)
  store %struct.thread_info* %11, %struct.thread_info** %6, align 8
  %12 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %13 = ptrtoint %struct.thread_info* %12 to i64
  %14 = load i64, i64* @THREAD_SIZE, align 8
  %15 = add i64 %13, %14
  %16 = sub i64 %15, 32
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to %struct.pt_regs*
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i64 -1
  store %struct.pt_regs* %19, %struct.pt_regs** %8, align 8
  %20 = load i64*, i64** %3, align 8
  %21 = bitcast i64* %20 to i32*
  store i32* %21, i32** %9, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %36, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 6
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %22

39:                                               ; preds = %22
  store i32 16, i32* %5, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 24
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 6
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %40

57:                                               ; preds = %40
  store i32 24, i32* %5, align 4
  br label %58

58:                                               ; preds = %64, %57
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 28
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %9, align 8
  store i32 0, i32* %62, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %58

67:                                               ; preds = %58
  store i32 28, i32* %5, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 6
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %68

85:                                               ; preds = %68
  %86 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  %92 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %98 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  %110 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  %116 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
