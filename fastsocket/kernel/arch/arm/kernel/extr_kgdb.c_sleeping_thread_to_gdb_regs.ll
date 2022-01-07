; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@GDB_MAX_REGS = common dso_local global i32 0, align 4
@_R0 = common dso_local global i64 0, align 8
@_R1 = common dso_local global i64 0, align 8
@_R2 = common dso_local global i64 0, align 8
@_R3 = common dso_local global i64 0, align 8
@_R4 = common dso_local global i64 0, align 8
@_R5 = common dso_local global i64 0, align 8
@_R6 = common dso_local global i64 0, align 8
@_R7 = common dso_local global i64 0, align 8
@_R8 = common dso_local global i64 0, align 8
@_R9 = common dso_local global i64 0, align 8
@_R10 = common dso_local global i64 0, align 8
@_FP = common dso_local global i64 0, align 8
@_IP = common dso_local global i64 0, align 8
@_SPT = common dso_local global i64 0, align 8
@_LR = common dso_local global i64 0, align 8
@_PC = common dso_local global i64 0, align 8
@_CPSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = icmp eq %struct.task_struct* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %128

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GDB_MAX_REGS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %24)
  store %struct.pt_regs* %25, %struct.pt_regs** %5, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* @_R0, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 %28, i64* %31, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* @_R1, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %34, i64* %37, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = load i64, i64* @_R2, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* @_R3, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %46, i64* %49, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* @_R4, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %52, i64* %55, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* @_R5, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %58, i64* %61, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* @_R6, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = load i64, i64* @_R7, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %70, i64* %73, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i64, i64* @_R8, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  %80 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %3, align 8
  %84 = load i64, i64* @_R9, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %82, i64* %85, align 8
  %86 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %3, align 8
  %90 = load i64, i64* @_R10, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %88, i64* %91, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 11
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %3, align 8
  %96 = load i64, i64* @_FP, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %94, i64* %97, align 8
  %98 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 12
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %3, align 8
  %102 = load i64, i64* @_IP, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %100, i64* %103, align 8
  %104 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 13
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %3, align 8
  %108 = load i64, i64* @_SPT, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %106, i64* %109, align 8
  %110 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 14
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %3, align 8
  %114 = load i64, i64* @_LR, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  %116 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 15
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %3, align 8
  %120 = load i64, i64* @_PC, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %118, i64* %121, align 8
  %122 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %123 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %122, i32 0, i32 16
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %3, align 8
  %126 = load i64, i64* @_CPSR, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  store i64 %124, i64* %127, align 8
  br label %128

128:                                              ; preds = %23, %9
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
