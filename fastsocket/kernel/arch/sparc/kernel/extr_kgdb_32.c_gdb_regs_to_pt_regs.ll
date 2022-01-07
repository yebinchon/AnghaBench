; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_32.c_gdb_regs_to_pt_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_32.c_gdb_regs_to_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i64, i64, i64, i64 }
%struct.reg_window32 = type { i64*, i64* }

@GDB_G1 = common dso_local global i32 0, align 4
@UREG_G1 = common dso_local global i32 0, align 4
@GDB_PSR = common dso_local global i64 0, align 8
@PSR_CWP = common dso_local global i64 0, align 8
@GDB_PC = common dso_local global i64 0, align 8
@GDB_NPC = common dso_local global i64 0, align 8
@GDB_Y = common dso_local global i64 0, align 8
@UREG_FP = common dso_local global i64 0, align 8
@GDB_L0 = common dso_local global i32 0, align 4
@GDB_I0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_regs_to_pt_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.reg_window32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 15
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load i64*, i64** %3, align 8
  %13 = load i32, i32* @GDB_G1, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %12, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* @UREG_G1, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  store i64 %18, i64* %26, align 8
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = load i64, i64* @GDB_PSR, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PSR_CWP, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = load i64, i64* @GDB_PSR, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PSR_CWP, align 8
  %50 = xor i64 %49, -1
  %51 = and i64 %48, %50
  %52 = load i64, i64* %7, align 8
  %53 = or i64 %51, %52
  %54 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %39, %30
  %57 = load i64*, i64** %3, align 8
  %58 = load i64, i64* @GDB_PC, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i64*, i64** %3, align 8
  %64 = load i64, i64* @GDB_NPC, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i64*, i64** %3, align 8
  %70 = load i64, i64* @GDB_Y, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @UREG_FP, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.reg_window32*
  store %struct.reg_window32* %81, %struct.reg_window32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %99, %56
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i64*, i64** %3, align 8
  %87 = load i32, i32* @GDB_L0, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.reg_window32*, %struct.reg_window32** %5, align 8
  %94 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %82

102:                                              ; preds = %82
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 8
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load i64*, i64** %3, align 8
  %108 = load i32, i32* @GDB_I0, align 4
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.reg_window32*, %struct.reg_window32** %5, align 8
  %115 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %103

123:                                              ; preds = %103
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
