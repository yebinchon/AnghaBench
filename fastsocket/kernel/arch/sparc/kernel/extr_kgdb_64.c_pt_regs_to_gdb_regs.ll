; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_64.c_pt_regs_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_64.c_pt_regs_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i64, i64, i64, i64 }
%struct.reg_window = type { i64*, i64* }

@GDB_G0 = common dso_local global i64 0, align 8
@UREG_G1 = common dso_local global i32 0, align 4
@GDB_G1 = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@GDB_L0 = common dso_local global i32 0, align 4
@GDB_I0 = common dso_local global i32 0, align 4
@GDB_F0 = common dso_local global i32 0, align 4
@GDB_F62 = common dso_local global i32 0, align 4
@GDB_PC = common dso_local global i64 0, align 8
@GDB_NPC = common dso_local global i64 0, align 8
@GDB_STATE = common dso_local global i64 0, align 8
@GDB_FSR = common dso_local global i64 0, align 8
@GDB_FPRS = common dso_local global i64 0, align 8
@GDB_Y = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_regs_to_gdb_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.reg_window*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* @GDB_G0, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 15
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* @UREG_G1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i32, i32* @GDB_G1, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  store i64 %22, i64* %28, align 8
  br label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @UREG_FP, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @STACK_BIAS, align 8
  %40 = add i64 %38, %39
  %41 = inttoptr i64 %40 to %struct.reg_window*
  store %struct.reg_window* %41, %struct.reg_window** %5, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %59, %32
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.reg_window*, %struct.reg_window** %5, align 8
  %47 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i32, i32* @GDB_L0, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  store i64 %52, i64* %58, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %42

62:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.reg_window*, %struct.reg_window** %5, align 8
  %68 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %3, align 8
  %75 = load i32, i32* @GDB_I0, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  store i64 %73, i64* %79, align 8
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %63

83:                                               ; preds = %63
  %84 = load i32, i32* @GDB_F0, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %94, %83
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @GDB_F62, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i64*, i64** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %85

97:                                               ; preds = %85
  %98 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %3, align 8
  %102 = load i64, i64* @GDB_PC, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %100, i64* %103, align 8
  %104 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %3, align 8
  %108 = load i64, i64* @GDB_NPC, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %106, i64* %109, align 8
  %110 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %3, align 8
  %114 = load i64, i64* @GDB_STATE, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  %116 = load i64*, i64** %3, align 8
  %117 = load i64, i64* @GDB_FSR, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 0, i64* %118, align 8
  %119 = load i64*, i64** %3, align 8
  %120 = load i64, i64* @GDB_FPRS, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 0, i64* %121, align 8
  %122 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %123 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %3, align 8
  %126 = load i64, i64* @GDB_Y, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  store i64 %124, i64* %127, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
