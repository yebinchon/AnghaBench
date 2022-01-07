; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

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
define dso_local void @gdb_regs_to_pt_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = load i64, i64* @_R0, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* @_R1, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* @_R2, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* @_R3, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* @_R4, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* @_R5, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = load i64, i64* @_R6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* @_R7, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 7
  store i64 %50, i64* %52, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* @_R8, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 8
  store i64 %56, i64* %58, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* @_R9, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* @_R10, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 10
  store i64 %68, i64* %70, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = load i64, i64* @_FP, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 11
  store i64 %74, i64* %76, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i64, i64* @_IP, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 12
  store i64 %80, i64* %82, align 8
  %83 = load i64*, i64** %3, align 8
  %84 = load i64, i64* @_SPT, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 13
  store i64 %86, i64* %88, align 8
  %89 = load i64*, i64** %3, align 8
  %90 = load i64, i64* @_LR, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 14
  store i64 %92, i64* %94, align 8
  %95 = load i64*, i64** %3, align 8
  %96 = load i64, i64* @_PC, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %100 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %99, i32 0, i32 15
  store i64 %98, i64* %100, align 8
  %101 = load i64*, i64** %3, align 8
  %102 = load i64, i64* @_CPSR, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 16
  store i64 %104, i64* %106, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
