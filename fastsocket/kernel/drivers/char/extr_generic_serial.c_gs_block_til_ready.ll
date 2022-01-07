; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.gs_port = type { %struct.tty_port }
%struct.tty_port = type { i32, i32, i32, i32, i32, i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@GS_DEBUG_BTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Entering gs_block_till_ready.\0A\00", align 1
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"after hung up\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"after nonblock\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"after add waitq.\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"CD is now %d.\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"signal_pending is now: %d (%lx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Got out of the loop. (%d)\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_block_til_ready(i8* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.gs_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty_struct*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.gs_port*
  store %struct.gs_port* %14, %struct.gs_port** %6, align 8
  %15 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %16 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %15, i32 0, i32 0
  store %struct.tty_port* %16, %struct.tty_port** %7, align 8
  %17 = load i32, i32* @wait, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %19 = call i32 @DECLARE_WAITQUEUE(i32 %17, %struct.TYPE_4__* %18)
  store i32 0, i32* %9, align 4
  %20 = call i32 (...) @func_enter()
  %21 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %22 = icmp ne %struct.tty_port* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %220

24:                                               ; preds = %2
  %25 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %26 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 6
  %27 = load %struct.tty_struct*, %struct.tty_struct** %26, align 8
  store %struct.tty_struct* %27, %struct.tty_struct** %11, align 8
  %28 = load i32, i32* @GS_DEBUG_BTR, align 4
  %29 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = call i64 @tty_hung_up_p(%struct.file* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %35 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ASYNC_CLOSING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33, %24
  %41 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %42 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %41, i32 0, i32 5
  %43 = call i32 @interruptible_sleep_on(i32* %42)
  %44 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %45 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %220

53:                                               ; preds = %40
  %54 = load i32, i32* @ERESTARTSYS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %220

56:                                               ; preds = %33
  %57 = load i32, i32* @GS_DEBUG_BTR, align 4
  %58 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @O_NONBLOCK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TTY_IO_ERROR, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65, %56
  %74 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %75 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %76 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  store i32 0, i32* %3, align 4
  br label %220

79:                                               ; preds = %65
  %80 = load i32, i32* @GS_DEBUG_BTR, align 4
  %81 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %83 = call i64 @C_CLOCAL(%struct.tty_struct* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %79
  store i32 0, i32* %8, align 4
  %87 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %88 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %87, i32 0, i32 4
  %89 = call i32 @add_wait_queue(i32* %88, i32* @wait)
  %90 = load i32, i32* @GS_DEBUG_BTR, align 4
  %91 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %93 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %92, i32 0, i32 2
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = call i64 @tty_hung_up_p(%struct.file* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %86
  %100 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %101 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %86
  %105 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %106 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %110 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %109, i32 0, i32 2
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %104, %175
  %114 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %115 = call i32 @tty_port_carrier_raised(%struct.tty_port* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @GS_DEBUG_BTR, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %120 = call i32 @set_current_state(i32 %119)
  %121 = load %struct.file*, %struct.file** %5, align 8
  %122 = call i64 @tty_hung_up_p(%struct.file* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %113
  %125 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %126 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %124, %113
  %132 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %133 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %144

141:                                              ; preds = %131
  %142 = load i32, i32* @ERESTARTSYS, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %138
  br label %177

145:                                              ; preds = %124
  %146 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %147 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ASYNC_CLOSING, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155, %152
  br label %177

159:                                              ; preds = %155, %145
  %160 = load i32, i32* @GS_DEBUG_BTR, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %162 = call i64 @signal_pending(%struct.TYPE_4__* %161)
  %163 = trunc i64 %162 to i32
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = bitcast i32* %165 to i64*
  %167 = load i64, i64* %166, align 4
  %168 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %163, i64 %167)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %170 = call i64 @signal_pending(%struct.TYPE_4__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %159
  %173 = load i32, i32* @ERESTARTSYS, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %8, align 4
  br label %177

175:                                              ; preds = %159
  %176 = call i32 (...) @schedule()
  br label %113

177:                                              ; preds = %172, %158, %144
  %178 = load i32, i32* @GS_DEBUG_BTR, align 4
  %179 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %180 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @TASK_RUNNING, align 4
  %184 = call i32 @set_current_state(i32 %183)
  %185 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %186 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %185, i32 0, i32 4
  %187 = call i32 @remove_wait_queue(i32* %186, i32* @wait)
  %188 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %189 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %188, i32 0, i32 2
  %190 = load i64, i64* %12, align 8
  %191 = call i32 @spin_lock_irqsave(i32* %189, i64 %190)
  %192 = load %struct.file*, %struct.file** %5, align 8
  %193 = call i64 @tty_hung_up_p(%struct.file* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %177
  %196 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %197 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %177
  %201 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %202 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %200
  %208 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %209 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %210 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207, %200
  %214 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %215 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %214, i32 0, i32 2
  %216 = load i64, i64* %12, align 8
  %217 = call i32 @spin_unlock_irqrestore(i32* %215, i64 %216)
  %218 = call i32 (...) @func_exit()
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %213, %73, %53, %50, %23
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @gs_dprintk(i32, i8*, ...) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i64 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_port_carrier_raised(%struct.tty_port*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
