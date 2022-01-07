; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.uart_state = type { %struct.tty_port, %struct.uart_port* }
%struct.tty_port = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uart_port = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@CDTRDSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uart_state*)* @uart_block_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_block_til_ready(%struct.file* %0, %struct.uart_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.uart_state* %1, %struct.uart_state** %5, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = load i32, i32* @current, align 4
  %11 = call i32 @DECLARE_WAITQUEUE(i32 %9, i32 %10)
  %12 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %13 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %12, i32 0, i32 1
  %14 = load %struct.uart_port*, %struct.uart_port** %13, align 8
  store %struct.uart_port* %14, %struct.uart_port** %6, align 8
  %15 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %16 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %15, i32 0, i32 0
  store %struct.tty_port* %16, %struct.tty_port** %7, align 8
  %17 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %18 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %26 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 4
  %27 = call i32 @add_wait_queue(i32* %26, i32* @wait)
  br label %28

28:                                               ; preds = %2, %141
  %29 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %30 = call i32 @set_current_state(i32 %29)
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call i64 @tty_hung_up_p(%struct.file* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %36 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp eq %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %28
  br label %142

40:                                               ; preds = %34
  %41 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %42 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %142

48:                                               ; preds = %40
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %48
  %56 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %57 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CLOCAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %55
  %67 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %68 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TTY_IO_ERROR, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66, %55, %48
  br label %142

77:                                               ; preds = %66
  %78 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %79 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CBAUD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %77
  %89 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %90 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CDTRDSR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %88
  %100 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %101 = load i32, i32* @TIOCM_DTR, align 4
  %102 = call i32 @uart_set_mctrl(%struct.uart_port* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %88, %77
  %104 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 0
  %106 = call i32 @spin_lock_irq(i32* %105)
  %107 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %110, align 8
  %112 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %113 = call i32 %111(%struct.uart_port* %112)
  %114 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %117, align 8
  %119 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %120 = call i32 %118(%struct.uart_port* %119)
  store i32 %120, i32* %8, align 4
  %121 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock_irq(i32* %122)
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @TIOCM_CAR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %103
  br label %142

129:                                              ; preds = %103
  %130 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %131 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %130, i32 0, i32 5
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = call i32 (...) @schedule()
  %134 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %135 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %134, i32 0, i32 5
  %136 = call i32 @mutex_lock(i32* %135)
  %137 = load i32, i32* @current, align 4
  %138 = call i64 @signal_pending(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %142

141:                                              ; preds = %129
  br label %28

142:                                              ; preds = %140, %128, %76, %47, %39
  %143 = load i32, i32* @TASK_RUNNING, align 4
  %144 = call i32 @set_current_state(i32 %143)
  %145 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %146 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %145, i32 0, i32 4
  %147 = call i32 @remove_wait_queue(i32* %146, i32* @wait)
  %148 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %149 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %153 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* @current, align 4
  %157 = call i64 @signal_pending(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %142
  %160 = load i32, i32* @ERESTARTSYS, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %175

162:                                              ; preds = %142
  %163 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %164 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = icmp ne %struct.TYPE_6__* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load %struct.file*, %struct.file** %4, align 8
  %169 = call i64 @tty_hung_up_p(%struct.file* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167, %162
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %175

174:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %171, %159
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @uart_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
