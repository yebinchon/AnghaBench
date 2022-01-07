; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_signal.c_ia64_do_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_signal.c_ia64_do_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.sigscratch = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i64 }
%struct.k_sigaction = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TS_RESTORE_SIGMASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_11__* null, align 8
@EINTR = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@__NR_restart_syscall = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_do_signal(%struct.sigscratch* %0, i64 %1) #0 {
  %3 = alloca %struct.sigscratch*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.k_sigaction, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sigscratch* %0, %struct.sigscratch** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %13 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %17 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %16, i32 0, i32 0
  %18 = call i32 @user_mode(%struct.TYPE_9__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %223

21:                                               ; preds = %2
  %22 = call %struct.TYPE_10__* (...) @current_thread_info()
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TS_RESTORE_SIGMASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32* %30, i32** %6, align 8
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %150
  %36 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %37 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %36, i32 0, i32 0
  %38 = call i32 @get_signal_to_deliver(i32* %7, %struct.k_sigaction* %5, %struct.TYPE_9__* %37, i32* null)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %40 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %39, i32 0, i32 0
  %41 = call i64 @IS_IA32_PROCESS(%struct.TYPE_9__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %50, %49
  br label %54

54:                                               ; preds = %53, %43
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %57 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %61, %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %151

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @unlikely(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %137

71:                                               ; preds = %67
  %72 = load i64, i64* %9, align 8
  switch i64 %72, label %136 [
    i64 128, label %73
    i64 131, label %73
    i64 129, label %89
    i64 130, label %113
  ]

73:                                               ; preds = %71, %71
  %74 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %75 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %74, i32 0, i32 0
  %76 = call i64 @IS_IA32_PROCESS(%struct.TYPE_9__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EINTR, align 4
  %80 = sub nsw i32 0, %79
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @EINTR, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i32 [ %80, %78 ], [ %82, %81 ]
  %85 = sext i32 %84 to i64
  %86 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %87 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  br label %136

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %5, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SA_RESTART, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %98 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %97, i32 0, i32 0
  %99 = call i64 @IS_IA32_PROCESS(%struct.TYPE_9__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @EINTR, align 4
  %103 = sub nsw i32 0, %102
  br label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @EINTR, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %103, %101 ], [ %105, %104 ]
  %108 = sext i32 %107 to i64
  %109 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %110 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  br label %136

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %71, %112
  %114 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %115 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %114, i32 0, i32 0
  %116 = call i64 @IS_IA32_PROCESS(%struct.TYPE_9__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %120 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %124 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %127 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 2
  store i32 %130, i32* %128, align 8
  br label %135

131:                                              ; preds = %113
  %132 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %133 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %132, i32 0, i32 0
  %134 = call i32 @ia64_decrement_ip(%struct.TYPE_9__* %133)
  br label %135

135:                                              ; preds = %131, %118
  store i64 0, i64* %8, align 8
  br label %136

136:                                              ; preds = %135, %71, %106, %83
  br label %137

137:                                              ; preds = %136, %67
  %138 = load i32, i32* %10, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %141 = call i64 @handle_signal(i32 %138, %struct.k_sigaction* %5, i32* %7, i32* %139, %struct.sigscratch* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i32, i32* @TS_RESTORE_SIGMASK, align 4
  %145 = xor i32 %144, -1
  %146 = call %struct.TYPE_10__* (...) @current_thread_info()
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %223

150:                                              ; preds = %137
  br label %35

151:                                              ; preds = %66
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %205

154:                                              ; preds = %151
  %155 = load i64, i64* %9, align 8
  %156 = icmp eq i64 %155, 131
  br i1 %156, label %166, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* %9, align 8
  %159 = icmp eq i64 %158, 129
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* %9, align 8
  %162 = icmp eq i64 %161, 130
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* %9, align 8
  %165 = icmp eq i64 %164, 128
  br i1 %165, label %166, label %204

166:                                              ; preds = %163, %160, %157, %154
  %167 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %168 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %167, i32 0, i32 0
  %169 = call i64 @IS_IA32_PROCESS(%struct.TYPE_9__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %166
  %172 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %173 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %177 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  store i64 %175, i64* %178, align 8
  %179 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %180 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 2
  store i32 %183, i32* %181, align 8
  %184 = load i64, i64* %9, align 8
  %185 = icmp eq i64 %184, 128
  br i1 %185, label %186, label %190

186:                                              ; preds = %171
  %187 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %188 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %186, %171
  br label %203

191:                                              ; preds = %166
  %192 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %193 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %192, i32 0, i32 0
  %194 = call i32 @ia64_decrement_ip(%struct.TYPE_9__* %193)
  %195 = load i64, i64* %9, align 8
  %196 = icmp eq i64 %195, 128
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load i32, i32* @__NR_restart_syscall, align 4
  %199 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %200 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  store i32 %198, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %191
  br label %203

203:                                              ; preds = %202, %190
  br label %204

204:                                              ; preds = %203, %163
  br label %205

205:                                              ; preds = %204, %151
  %206 = call %struct.TYPE_10__* (...) @current_thread_info()
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @TS_RESTORE_SIGMASK, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %205
  %213 = load i32, i32* @TS_RESTORE_SIGMASK, align 4
  %214 = xor i32 %213, -1
  %215 = call %struct.TYPE_10__* (...) @current_thread_info()
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* @SIG_SETMASK, align 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = call i32 @sigprocmask(i32 %219, i32* %221, i32* null)
  br label %223

223:                                              ; preds = %20, %143, %212, %205
  ret void
}

declare dso_local i32 @user_mode(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @current_thread_info(...) #1

declare dso_local i32 @get_signal_to_deliver(i32*, %struct.k_sigaction*, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @IS_IA32_PROCESS(%struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @ia64_decrement_ip(%struct.TYPE_9__*) #1

declare dso_local i64 @handle_signal(i32, %struct.k_sigaction*, i32*, i32*, %struct.sigscratch*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
