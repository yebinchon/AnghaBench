; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_32.c_pt_regs_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_32.c_pt_regs_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i64, i64, i64, i64 }
%struct.reg_window32 = type { i64*, i64* }

@GDB_G0 = common dso_local global i64 0, align 8
@UREG_G1 = common dso_local global i32 0, align 4
@GDB_G1 = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8
@GDB_L0 = common dso_local global i32 0, align 4
@GDB_I0 = common dso_local global i32 0, align 4
@GDB_F0 = common dso_local global i32 0, align 4
@GDB_F31 = common dso_local global i32 0, align 4
@GDB_Y = common dso_local global i64 0, align 8
@GDB_PSR = common dso_local global i64 0, align 8
@GDB_WIM = common dso_local global i64 0, align 8
@trapbase = common dso_local global i32 0, align 4
@GDB_TBR = common dso_local global i64 0, align 8
@GDB_PC = common dso_local global i64 0, align 8
@GDB_NPC = common dso_local global i64 0, align 8
@GDB_FSR = common dso_local global i64 0, align 8
@GDB_CSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_regs_to_gdb_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.reg_window32*, align 8
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
  %39 = inttoptr i64 %38 to %struct.reg_window32*
  store %struct.reg_window32* %39, %struct.reg_window32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %57, %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.reg_window32*, %struct.reg_window32** %5, align 8
  %45 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = load i32, i32* @GDB_L0, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  store i64 %50, i64* %56, align 8
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %40

60:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.reg_window32*, %struct.reg_window32** %5, align 8
  %66 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %3, align 8
  %73 = load i32, i32* @GDB_I0, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  store i64 %71, i64* %77, align 8
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %61

81:                                               ; preds = %61
  %82 = load i32, i32* @GDB_F0, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %92, %81
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @GDB_F31, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i64*, i64** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %83

95:                                               ; preds = %83
  %96 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %3, align 8
  %100 = load i64, i64* @GDB_Y, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64 %98, i64* %101, align 8
  %102 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %3, align 8
  %106 = load i64, i64* @GDB_PSR, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64 %104, i64* %107, align 8
  %108 = load i64*, i64** %3, align 8
  %109 = load i64, i64* @GDB_WIM, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 0, i64* %110, align 8
  %111 = load i64*, i64** %3, align 8
  %112 = load i64, i64* @GDB_TBR, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64 ptrtoint (i32* @trapbase to i64), i64* %113, align 8
  %114 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %3, align 8
  %118 = load i64, i64* @GDB_PC, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %116, i64* %119, align 8
  %120 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %121 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %3, align 8
  %124 = load i64, i64* @GDB_NPC, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64 %122, i64* %125, align 8
  %126 = load i64*, i64** %3, align 8
  %127 = load i64, i64* @GDB_FSR, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load i64*, i64** %3, align 8
  %130 = load i64, i64* @GDB_CSR, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  store i64 0, i64* %131, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
