; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_64.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kgdb_64.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i64, i64 }
%struct.reg_window = type { i64*, i64* }

@GDB_G0 = common dso_local global i32 0, align 4
@GDB_G6 = common dso_local global i32 0, align 4
@GDB_G7 = common dso_local global i64 0, align 8
@GDB_O0 = common dso_local global i32 0, align 4
@GDB_SP = common dso_local global i32 0, align 4
@GDB_O7 = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@GDB_L0 = common dso_local global i32 0, align 4
@GDB_I0 = common dso_local global i32 0, align 4
@GDB_F0 = common dso_local global i32 0, align 4
@GDB_F62 = common dso_local global i32 0, align 4
@ret_from_syscall = external dso_local global i32, align 4
@switch_to_pc = external dso_local global i32, align 4
@GDB_PC = common dso_local global i64 0, align 8
@GDB_NPC = common dso_local global i64 0, align 8
@TI_FLAG_BYTE_CWP = common dso_local global i64 0, align 8
@TSTATE_PRIV = common dso_local global i64 0, align 8
@TSTATE_IE = common dso_local global i64 0, align 8
@GDB_STATE = common dso_local global i64 0, align 8
@GDB_FSR = common dso_local global i64 0, align 8
@GDB_FPRS = common dso_local global i64 0, align 8
@GDB_Y = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca %struct.reg_window*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %10)
  store %struct.thread_info* %11, %struct.thread_info** %5, align 8
  %12 = load i32, i32* @GDB_G0, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %22, %2
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @GDB_G6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i64*, i64** %3, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %27 = ptrtoint %struct.thread_info* %26 to i64
  %28 = load i64*, i64** %3, align 8
  %29 = load i32, i32* @GDB_G6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %27, i64* %31, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = ptrtoint %struct.task_struct* %32 to i64
  %34 = load i64*, i64** %3, align 8
  %35 = load i64, i64* @GDB_G7, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* @GDB_O0, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %47, %25
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @GDB_SP, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64*, i64** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %38

50:                                               ; preds = %38
  %51 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %52 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = load i32, i32* @GDB_SP, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %53, i64* %57, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = load i64, i64* @GDB_O7, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 0, i64* %60, align 8
  %61 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %62 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @STACK_BIAS, align 8
  %65 = add i64 %63, %64
  %66 = inttoptr i64 %65 to %struct.reg_window*
  store %struct.reg_window* %66, %struct.reg_window** %6, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %84, %50
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.reg_window*, %struct.reg_window** %6, align 8
  %72 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %3, align 8
  %79 = load i32, i32* @GDB_L0, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %78, i64 %82
  store i64 %77, i64* %83, align 8
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %67

87:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %105, %87
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 8
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load %struct.reg_window*, %struct.reg_window** %6, align 8
  %93 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %3, align 8
  %100 = load i32, i32* @GDB_I0, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %99, i64 %103
  store i64 %98, i64* %104, align 8
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %88

108:                                              ; preds = %88
  %109 = load i32, i32* @GDB_F0, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %119, %108
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @GDB_F62, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i64*, i64** %3, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %110

122:                                              ; preds = %110
  %123 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %124 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i64 ptrtoint (i32* @ret_from_syscall to i64), i64* %7, align 8
  br label %129

128:                                              ; preds = %122
  store i64 ptrtoint (i32* @switch_to_pc to i64), i64* %7, align 8
  br label %129

129:                                              ; preds = %128, %127
  %130 = load i64, i64* %7, align 8
  %131 = load i64*, i64** %3, align 8
  %132 = load i64, i64* @GDB_PC, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  store i64 %130, i64* %133, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, 4
  %136 = load i64*, i64** %3, align 8
  %137 = load i64, i64* @GDB_NPC, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64 %135, i64* %138, align 8
  %139 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %140 = call i64* @__thread_flag_byte_ptr(%struct.thread_info* %139)
  %141 = load i64, i64* @TI_FLAG_BYTE_CWP, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %8, align 8
  %144 = load i64, i64* @TSTATE_PRIV, align 8
  %145 = load i64, i64* @TSTATE_IE, align 8
  %146 = or i64 %144, %145
  %147 = load i64, i64* %8, align 8
  %148 = or i64 %146, %147
  %149 = load i64*, i64** %3, align 8
  %150 = load i64, i64* @GDB_STATE, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  store i64 %148, i64* %151, align 8
  %152 = load i64*, i64** %3, align 8
  %153 = load i64, i64* @GDB_FSR, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  store i64 0, i64* %154, align 8
  %155 = load i64*, i64** %3, align 8
  %156 = load i64, i64* @GDB_FPRS, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 0, i64* %157, align 8
  %158 = load i64*, i64** %3, align 8
  %159 = load i64, i64* @GDB_Y, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  store i64 0, i64* %160, align 8
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64* @__thread_flag_byte_ptr(%struct.thread_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
