; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_ptrace.c_arch_ptrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_ptrace.c_arch_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"PEEKTEXT/PEEKDATA at %08lX\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"POKETEXT/POKEDATA to %08lX\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"PEEKUSR/POKEUSR : 0x%08lx\0A\00", align 1
@PT_SIZE = common dso_local global i64 0, align 8
@PT_TEXT_ADDR = common dso_local global i64 0, align 8
@PT_DATA_ADDR = common dso_local global i64 0, align 8
@PT_TEXT_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"PTRACE_SYSCALL\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"PTRACE_SINGLESTEP\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PTRACE_CONT\0A\00", align 1
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"wakeup_process\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"PTRACE_KILL\0A\00", align 1
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"PTRACE_DETACH\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_ptrace(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  switch i64 %13, label %183 [
    i64 134, label %14
    i64 135, label %14
    i64 131, label %31
    i64 132, label %31
    i64 133, label %43
    i64 130, label %43
    i64 128, label %134
    i64 129, label %136
    i64 138, label %138
    i64 136, label %164
    i64 137, label %178
  ]

14:                                               ; preds = %4, %4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 (%struct.task_struct*, i64, ...) @access_process_vm(%struct.task_struct* %17, i64 %18, i64* %10, i64 8, i32 0)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %186

26:                                               ; preds = %14
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = inttoptr i64 %28 to i64*
  %30 = call i32 @put_user(i64 %27, i64* %29)
  store i32 %30, i32* %9, align 4
  br label %186

31:                                               ; preds = %4, %4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 0, i32* %9, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (%struct.task_struct*, i64, ...) @access_process_vm(%struct.task_struct* %34, i64 %35, i64* %8, i64 8, i32 1)
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %186

40:                                               ; preds = %31
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %186

43:                                               ; preds = %4, %4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  store i32 0, i32* %9, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @PT_SIZE, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %43
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %50, 133
  br i1 %51, label %52, label %94

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @PT_TEXT_ADDR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  br label %93

62:                                               ; preds = %52
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @PT_DATA_ADDR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  br label %92

72:                                               ; preds = %62
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @PT_TEXT_LEN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %83 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %81, %86
  store i64 %87, i64* %10, align 8
  br label %91

88:                                               ; preds = %72
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %76
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %56
  br label %122

94:                                               ; preds = %49, %43
  %95 = load i64, i64* %7, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @PT_SIZE, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = load i64, i64* %7, align 8
  %103 = and i64 %102, 3
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %108 = call i64* @reg_save_addr(i64 %106, %struct.task_struct* %107)
  store i64* %108, i64** %12, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp eq i64 %109, 133
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i64*, i64** %12, align 8
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %10, align 8
  br label %117

114:                                              ; preds = %105
  %115 = load i64, i64* %8, align 8
  %116 = load i64*, i64** %12, align 8
  store i64 %115, i64* %116, align 8
  br label %117

117:                                              ; preds = %114, %111
  br label %121

118:                                              ; preds = %101, %97, %94
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %117
  br label %122

122:                                              ; preds = %121, %93
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i64, i64* %6, align 8
  %127 = icmp eq i64 %126, 133
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %8, align 8
  %131 = inttoptr i64 %130 to i64*
  %132 = call i32 @put_user(i64 %129, i64* %131)
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %128, %125, %122
  br label %186

134:                                              ; preds = %4
  %135 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %4, %134
  %137 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %4, %136
  %139 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @valid_signal(i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  br label %186

146:                                              ; preds = %138
  %147 = load i64, i64* %6, align 8
  %148 = icmp eq i64 %147, 128
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %151 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %152 = call i32 @set_tsk_thread_flag(%struct.task_struct* %150, i32 %151)
  br label %157

153:                                              ; preds = %146
  %154 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %155 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %156 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i64, i64* %8, align 8
  %159 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %160 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %162 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %163 = call i32 @wake_up_process(%struct.task_struct* %162)
  store i32 0, i32* %9, align 4
  br label %186

164:                                              ; preds = %4
  %165 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %166 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %167 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @EXIT_ZOMBIE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %186

172:                                              ; preds = %164
  %173 = load i64, i64* @SIGKILL, align 8
  %174 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %175 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %177 = call i32 @wake_up_process(%struct.task_struct* %176)
  br label %186

178:                                              ; preds = %4
  %179 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %180 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @ptrace_detach(%struct.task_struct* %180, i64 %181)
  store i32 %182, i32* %9, align 4
  br label %186

183:                                              ; preds = %4
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %183, %178, %172, %171, %157, %145, %133, %40, %39, %26, %25
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  ret i64 %188
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, ...) #1

declare dso_local i32 @put_user(i64, i64*) #1

declare dso_local i64* @reg_save_addr(i64, %struct.task_struct*) #1

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @ptrace_detach(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
