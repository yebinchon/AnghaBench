; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }

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
@GDB_DS = common dso_local global i64 0, align 8
@GDB_ES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_regs_to_pt_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i8**, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = bitcast i64* %6 to i8**
  store i8** %7, i8*** %5, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* @GDB_AX, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* @GDB_BX, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i64*, i64** %3, align 8
  %21 = load i64, i64* @GDB_CX, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = load i64, i64* @GDB_DX, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = load i64, i64* @GDB_SI, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = load i64*, i64** %3, align 8
  %39 = load i64, i64* @GDB_DI, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = load i64, i64* @GDB_BP, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 6
  store i64 %47, i64* %49, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = load i64, i64* @GDB_PC, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 7
  store i64 %53, i64* %55, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = load i64, i64* @GDB_R8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 12
  store i64 %59, i64* %61, align 8
  %62 = load i64*, i64** %3, align 8
  %63 = load i64, i64* @GDB_R9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 13
  store i64 %65, i64* %67, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = load i64, i64* @GDB_R10, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 14
  store i64 %71, i64* %73, align 8
  %74 = load i64*, i64** %3, align 8
  %75 = load i64, i64* @GDB_R11, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 15
  store i64 %77, i64* %79, align 8
  %80 = load i64*, i64** %3, align 8
  %81 = load i64, i64* @GDB_R12, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 16
  store i64 %83, i64* %85, align 8
  %86 = load i64*, i64** %3, align 8
  %87 = load i64, i64* @GDB_R13, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 17
  store i64 %89, i64* %91, align 8
  %92 = load i64*, i64** %3, align 8
  %93 = load i64, i64* @GDB_R14, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 18
  store i64 %95, i64* %97, align 8
  %98 = load i64*, i64** %3, align 8
  %99 = load i64, i64* @GDB_R15, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 19
  store i64 %101, i64* %103, align 8
  %104 = load i8**, i8*** %5, align 8
  %105 = load i64, i64* @GDB_PS, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 8
  store i64 %108, i64* %110, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = load i64, i64* @GDB_CS, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 11
  store i64 %115, i64* %117, align 8
  %118 = load i8**, i8*** %5, align 8
  %119 = load i64, i64* @GDB_SS, align 8
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %123 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %122, i32 0, i32 20
  store i8* %121, i8** %123, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
