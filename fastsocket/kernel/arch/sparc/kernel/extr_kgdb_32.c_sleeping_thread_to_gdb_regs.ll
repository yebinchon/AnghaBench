; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_32.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_32.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i64, i64, i64, i64 }
%struct.reg_window32 = type { i64*, i64* }

@GDB_G0 = common dso_local global i32 0, align 4
@GDB_G6 = common dso_local global i32 0, align 4
@GDB_G7 = common dso_local global i64 0, align 8
@GDB_O0 = common dso_local global i32 0, align 4
@GDB_SP = common dso_local global i32 0, align 4
@GDB_O7 = common dso_local global i64 0, align 8
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
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca %struct.reg_window32*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %8)
  store %struct.thread_info* %9, %struct.thread_info** %5, align 8
  %10 = load i32, i32* @GDB_G0, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GDB_G6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %25 = ptrtoint %struct.thread_info* %24 to i64
  %26 = load i64*, i64** %3, align 8
  %27 = load i32, i32* @GDB_G6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %25, i64* %29, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = load i64, i64* @GDB_G7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @GDB_O0, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %43, %23
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GDB_SP, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64*, i64** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %48 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = load i32, i32* @GDB_SP, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %49, i64* %53, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = load i64, i64* @GDB_O7, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 0, i64* %56, align 8
  %57 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %58 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.reg_window32*
  store %struct.reg_window32* %60, %struct.reg_window32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %78, %46
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %66 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %3, align 8
  %73 = load i32, i32* @GDB_L0, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  store i64 %71, i64* %77, align 8
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %61

81:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %99, %81
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %87 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %3, align 8
  %94 = load i32, i32* @GDB_I0, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  store i64 %92, i64* %98, align 8
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %82

102:                                              ; preds = %82
  %103 = load i32, i32* @GDB_F0, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %113, %102
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @GDB_F31, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i64*, i64** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %104

116:                                              ; preds = %104
  %117 = load i64*, i64** %3, align 8
  %118 = load i64, i64* @GDB_Y, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 0, i64* %119, align 8
  %120 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %121 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %3, align 8
  %124 = load i64, i64* @GDB_PSR, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64 %122, i64* %125, align 8
  %126 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %127 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %3, align 8
  %130 = load i64, i64* @GDB_WIM, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  store i64 %128, i64* %131, align 8
  %132 = load i64*, i64** %3, align 8
  %133 = load i64, i64* @GDB_TBR, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64 ptrtoint (i32* @trapbase to i64), i64* %134, align 8
  %135 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %136 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %3, align 8
  %139 = load i64, i64* @GDB_PC, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 %137, i64* %140, align 8
  %141 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %142 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 4
  %145 = load i64*, i64** %3, align 8
  %146 = load i64, i64* @GDB_NPC, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  store i64 %144, i64* %147, align 8
  %148 = load i64*, i64** %3, align 8
  %149 = load i64, i64* @GDB_FSR, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 0, i64* %150, align 8
  %151 = load i64*, i64** %3, align 8
  %152 = load i64, i64* @GDB_CSR, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  store i64 0, i64* %153, align 8
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
