; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/kernel/extr_ptrace.c_arch_ptrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/kernel/extr_ptrace.c_arch_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@H8300_REGS_NO = common dso_local global i64 0, align 8
@PT_ORIG_ER0 = common dso_local global i64 0, align 8
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_ptrace(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  switch i64 %16, label %246 [
    i64 135, label %17
    i64 136, label %17
    i64 134, label %29
    i64 132, label %92
    i64 133, label %92
    i64 131, label %97
    i64 128, label %132
    i64 140, label %132
    i64 137, label %158
    i64 129, label %173
    i64 139, label %191
    i64 138, label %195
    i64 130, label %220
  ]

17:                                               ; preds = %4, %4
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @read_long(%struct.task_struct* %18, i64 %19, i64* %10)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %249

24:                                               ; preds = %17
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to i64*
  %28 = call i32 @put_user(i64 %25, i64* %27)
  store i32 %28, i32* %9, align 4
  br label %249

29:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, 3
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = icmp uge i64 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %33, %29
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %249

42:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  %43 = load i64, i64* %7, align 8
  %44 = ashr i64 %43, 2
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @H8300_REGS_NO, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @h8300_get_reg(%struct.task_struct* %49, i32 %51)
  store i64 %52, i64* %11, align 8
  br label %83

53:                                               ; preds = %42
  %54 = load i64, i64* %7, align 8
  switch i64 %54, label %79 [
    i64 49, label %55
    i64 50, label %61
    i64 51, label %67
    i64 52, label %73
  ]

55:                                               ; preds = %53
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %11, align 8
  br label %82

61:                                               ; preds = %53
  %62 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  br label %82

67:                                               ; preds = %53
  %68 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  br label %82

73:                                               ; preds = %53
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  br label %82

79:                                               ; preds = %53
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %73, %67, %61, %55
  br label %83

83:                                               ; preds = %82, %48
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %8, align 8
  %89 = inttoptr i64 %88 to i64*
  %90 = call i32 @put_user(i64 %87, i64* %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %86, %83
  br label %249

92:                                               ; preds = %4, %4
  %93 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @generic_ptrace_pokedata(%struct.task_struct* %93, i64 %94, i64 %95)
  store i32 %96, i32* %9, align 4
  br label %249

97:                                               ; preds = %4
  %98 = load i64, i64* %7, align 8
  %99 = and i64 %98, 3
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %7, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = icmp uge i64 %105, 4
  br i1 %106, label %107, label %110

107:                                              ; preds = %104, %101, %97
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %249

110:                                              ; preds = %104
  %111 = load i64, i64* %7, align 8
  %112 = ashr i64 %111, 2
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @PT_ORIG_ER0, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %249

119:                                              ; preds = %110
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @H8300_REGS_NO, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @h8300_put_reg(%struct.task_struct* %124, i32 %126, i64 %127)
  store i32 %128, i32* %9, align 4
  br label %249

129:                                              ; preds = %119
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %9, align 4
  br label %249

132:                                              ; preds = %4, %4
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @valid_signal(i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  br label %249

139:                                              ; preds = %132
  %140 = load i64, i64* %6, align 8
  %141 = icmp eq i64 %140, 128
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %144 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %145 = call i32 @set_tsk_thread_flag(%struct.task_struct* %143, i32 %144)
  br label %150

146:                                              ; preds = %139
  %147 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %148 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %149 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %153 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %155 = call i32 @wake_up_process(%struct.task_struct* %154)
  %156 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %157 = call i32 @h8300_disable_trace(%struct.task_struct* %156)
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %4, %150
  store i32 0, i32* %9, align 4
  %159 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %160 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @EXIT_ZOMBIE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %249

165:                                              ; preds = %158
  %166 = load i64, i64* @SIGKILL, align 8
  %167 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %168 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %170 = call i32 @h8300_disable_trace(%struct.task_struct* %169)
  %171 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %172 = call i32 @wake_up_process(%struct.task_struct* %171)
  br label %249

173:                                              ; preds = %4
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %9, align 4
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @valid_signal(i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  br label %249

180:                                              ; preds = %173
  %181 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %182 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %183 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %181, i32 %182)
  %184 = load i64, i64* %8, align 8
  %185 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %186 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %188 = call i32 @h8300_enable_trace(%struct.task_struct* %187)
  %189 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %190 = call i32 @wake_up_process(%struct.task_struct* %189)
  store i32 0, i32* %9, align 4
  br label %249

191:                                              ; preds = %4
  %192 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %193 = load i64, i64* %8, align 8
  %194 = call i32 @ptrace_detach(%struct.task_struct* %192, i64 %193)
  store i32 %194, i32* %9, align 4
  br label %249

195:                                              ; preds = %4
  store i32 0, i32* %12, align 4
  br label %196

196:                                              ; preds = %216, %195
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* @H8300_REGS_NO, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %196
  %202 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i64 @h8300_get_reg(%struct.task_struct* %202, i32 %203)
  store i64 %204, i64* %13, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* %8, align 8
  %207 = inttoptr i64 %206 to i64*
  %208 = call i32 @put_user(i64 %205, i64* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %201
  %211 = load i32, i32* @EFAULT, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %9, align 4
  br label %219

213:                                              ; preds = %201
  %214 = load i64, i64* %8, align 8
  %215 = add i64 %214, 8
  store i64 %215, i64* %8, align 8
  br label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %196

219:                                              ; preds = %210, %196
  store i32 0, i32* %9, align 4
  br label %249

220:                                              ; preds = %4
  store i32 0, i32* %14, align 4
  br label %221

221:                                              ; preds = %242, %220
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* @H8300_REGS_NO, align 8
  %225 = icmp slt i64 %223, %224
  br i1 %225, label %226, label %245

226:                                              ; preds = %221
  %227 = load i64, i64* %15, align 8
  %228 = load i64, i64* %8, align 8
  %229 = inttoptr i64 %228 to i64*
  %230 = call i32 @get_user(i64 %227, i64* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i32, i32* @EFAULT, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %9, align 4
  br label %245

235:                                              ; preds = %226
  %236 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %237 = load i32, i32* %14, align 4
  %238 = load i64, i64* %15, align 8
  %239 = call i32 @h8300_put_reg(%struct.task_struct* %236, i32 %237, i64 %238)
  %240 = load i64, i64* %8, align 8
  %241 = add i64 %240, 8
  store i64 %241, i64* %8, align 8
  br label %242

242:                                              ; preds = %235
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %14, align 4
  br label %221

245:                                              ; preds = %232, %221
  store i32 0, i32* %9, align 4
  br label %249

246:                                              ; preds = %4
  %247 = load i32, i32* @EIO, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %9, align 4
  br label %249

249:                                              ; preds = %246, %245, %219, %191, %180, %179, %165, %164, %138, %129, %123, %116, %107, %92, %91, %39, %24, %23
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  ret i64 %251
}

declare dso_local i32 @read_long(%struct.task_struct*, i64, i64*) #1

declare dso_local i32 @put_user(i64, i64*) #1

declare dso_local i64 @h8300_get_reg(%struct.task_struct*, i32) #1

declare dso_local i32 @generic_ptrace_pokedata(%struct.task_struct*, i64, i64) #1

declare dso_local i32 @h8300_put_reg(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @h8300_disable_trace(%struct.task_struct*) #1

declare dso_local i32 @h8300_enable_trace(%struct.task_struct*) #1

declare dso_local i32 @ptrace_detach(%struct.task_struct*, i64) #1

declare dso_local i32 @get_user(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
