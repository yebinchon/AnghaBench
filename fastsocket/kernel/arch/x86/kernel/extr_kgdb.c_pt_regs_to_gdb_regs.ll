; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@GDB_AX = common dso_local global i64 0, align 8
@GDB_BX = common dso_local global i64 0, align 8
@GDB_CX = common dso_local global i64 0, align 8
@GDB_DX = common dso_local global i64 0, align 8
@GDB_SI = common dso_local global i64 0, align 8
@GDB_DI = common dso_local global i64 0, align 8
@GDB_BP = common dso_local global i64 0, align 8
@GDB_PC = common dso_local global i64 0, align 8
@GDB_R8 = common dso_local global i64 0, align 8
@GDB_R9 = common dso_local global i64 0, align 8
@GDB_R10 = common dso_local global i64 0, align 8
@GDB_R11 = common dso_local global i64 0, align 8
@GDB_R12 = common dso_local global i64 0, align 8
@GDB_R13 = common dso_local global i64 0, align 8
@GDB_R14 = common dso_local global i64 0, align 8
@GDB_R15 = common dso_local global i64 0, align 8
@GDB_PS = common dso_local global i64 0, align 8
@GDB_CS = common dso_local global i64 0, align 8
@GDB_SS = common dso_local global i64 0, align 8
@GDB_SP = common dso_local global i64 0, align 8
@GDB_DS = common dso_local global i64 0, align 8
@GDB_ES = common dso_local global i64 0, align 8
@GDB_FS = common dso_local global i64 0, align 8
@GDB_GS = common dso_local global i64 0, align 8
@__KERNEL_DS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_regs_to_gdb_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load i64*, i64** %3, align 8
  store i64* %6, i64** %5, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* @GDB_AX, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 %9, i64* %12, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* @GDB_BX, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 %15, i64* %18, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* @GDB_CX, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %24, align 8
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* @GDB_DX, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %27, i64* %30, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = load i64, i64* @GDB_SI, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 %33, i64* %36, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = load i64, i64* @GDB_DI, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = load i64, i64* @GDB_BP, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %3, align 8
  %53 = load i64, i64* @GDB_PC, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %54, align 8
  %55 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 13
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = load i64, i64* @GDB_R8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 14
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %3, align 8
  %65 = load i64, i64* @GDB_R9, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 15
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %3, align 8
  %71 = load i64, i64* @GDB_R10, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %69, i64* %72, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 16
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %3, align 8
  %77 = load i64, i64* @GDB_R11, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %75, i64* %78, align 8
  %79 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 17
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %3, align 8
  %83 = load i64, i64* @GDB_R12, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  %85 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 18
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %3, align 8
  %89 = load i64, i64* @GDB_R13, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %87, i64* %90, align 8
  %91 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %92 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %91, i32 0, i32 19
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %3, align 8
  %95 = load i64, i64* @GDB_R14, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  %97 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %98 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %97, i32 0, i32 20
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %3, align 8
  %101 = load i64, i64* @GDB_R15, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64 %99, i64* %102, align 8
  %103 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %5, align 8
  %107 = load i64, i64* @GDB_PS, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %105, i64* %108, align 8
  %109 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 11
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %5, align 8
  %113 = load i64, i64* @GDB_CS, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %111, i64* %114, align 8
  %115 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %116 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %115, i32 0, i32 21
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %5, align 8
  %119 = load i64, i64* @GDB_SS, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  store i64 %117, i64* %120, align 8
  %121 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 12
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %3, align 8
  %125 = load i64, i64* @GDB_SP, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %123, i64* %126, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
