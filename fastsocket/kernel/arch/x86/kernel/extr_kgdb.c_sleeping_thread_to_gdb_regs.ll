; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@GDB_AX = common dso_local global i64 0, align 8
@GDB_BX = common dso_local global i64 0, align 8
@GDB_CX = common dso_local global i64 0, align 8
@GDB_DX = common dso_local global i64 0, align 8
@GDB_SI = common dso_local global i64 0, align 8
@GDB_DI = common dso_local global i64 0, align 8
@GDB_BP = common dso_local global i64 0, align 8
@GDB_PS = common dso_local global i64 0, align 8
@__KERNEL_CS = common dso_local global i8* null, align 8
@GDB_CS = common dso_local global i64 0, align 8
@__KERNEL_DS = common dso_local global i8* null, align 8
@GDB_SS = common dso_local global i64 0, align 8
@GDB_PC = common dso_local global i64 0, align 8
@GDB_R8 = common dso_local global i64 0, align 8
@GDB_R9 = common dso_local global i64 0, align 8
@GDB_R10 = common dso_local global i64 0, align 8
@GDB_R11 = common dso_local global i64 0, align 8
@GDB_R12 = common dso_local global i64 0, align 8
@GDB_R13 = common dso_local global i64 0, align 8
@GDB_R14 = common dso_local global i64 0, align 8
@GDB_R15 = common dso_local global i64 0, align 8
@GDB_SP = common dso_local global i64 0, align 8
@GDB_DS = common dso_local global i64 0, align 8
@GDB_ES = common dso_local global i64 0, align 8
@GDB_FS = common dso_local global i64 0, align 8
@GDB_GS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load i64*, i64** %3, align 8
  store i64* %6, i64** %5, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* @GDB_AX, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* @GDB_BX, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 0, i64* %12, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* @GDB_CX, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* @GDB_DX, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %3, align 8
  %20 = load i64, i64* @GDB_SI, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* @GDB_DI, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = load i64, i64* @GDB_BP, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %31, i64* %34, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* @GDB_PS, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  %46 = load i8*, i8** @__KERNEL_CS, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* @GDB_CS, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %47, i64* %50, align 8
  %51 = load i8*, i8** @__KERNEL_DS, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64*, i64** %5, align 8
  %54 = load i64, i64* @GDB_SS, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %52, i64* %55, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = load i64, i64* @GDB_PC, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* @GDB_R8, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i64*, i64** %3, align 8
  %63 = load i64, i64* @GDB_R9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 0, i64* %64, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* @GDB_R10, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = load i64, i64* @GDB_R11, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 0, i64* %70, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = load i64, i64* @GDB_R12, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 0, i64* %73, align 8
  %74 = load i64*, i64** %3, align 8
  %75 = load i64, i64* @GDB_R13, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i64, i64* @GDB_R14, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 0, i64* %79, align 8
  %80 = load i64*, i64** %3, align 8
  %81 = load i64, i64* @GDB_R15, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 0, i64* %82, align 8
  %83 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %3, align 8
  %89 = load i64, i64* @GDB_SP, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %87, i64* %90, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
