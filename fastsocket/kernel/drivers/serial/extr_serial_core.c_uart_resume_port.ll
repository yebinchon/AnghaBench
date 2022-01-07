; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_resume_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_resume_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ktermios* }
%struct.ktermios = type { i64, i32, i32 }
%struct.uart_port = type { i32, i32, i32, %struct.uart_ops*, %struct.TYPE_4__*, i64, i32, i32 }
%struct.uart_ops = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)* }
%struct.ktermios.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.device = type { i32 }
%struct.uart_match = type { %struct.uart_driver*, %struct.uart_port* }

@console_suspend_enabled = common dso_local global i32 0, align 4
@serial_match_port = common dso_local global i32 0, align 4
@ASYNC_SUSPENDED = common dso_local global i32 0, align 4
@ASYNCB_INITIALIZED = common dso_local global i32 0, align 4
@ASYNCB_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_resume_port(%struct.uart_driver* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_driver*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.uart_match, align 8
  %10 = alloca %struct.ktermios, align 8
  %11 = alloca %struct.uart_ops*, align 8
  %12 = alloca i32, align 4
  store %struct.uart_driver* %0, %struct.uart_driver** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  %13 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %14 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %13, i32 0, i32 0
  %15 = load %struct.uart_state*, %struct.uart_state** %14, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %15, i64 %19
  store %struct.uart_state* %20, %struct.uart_state** %6, align 8
  %21 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %22 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %21, i32 0, i32 0
  store %struct.tty_port* %22, %struct.tty_port** %7, align 8
  %23 = getelementptr inbounds %struct.uart_match, %struct.uart_match* %9, i32 0, i32 0
  %24 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %25 = bitcast %struct.uart_port* %24 to %struct.uart_driver*
  store %struct.uart_driver* %25, %struct.uart_driver** %23, align 8
  %26 = getelementptr inbounds %struct.uart_match, %struct.uart_match* %9, i32 0, i32 1
  %27 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %28 = bitcast %struct.uart_driver* %27 to %struct.uart_port*
  store %struct.uart_port* %28, %struct.uart_port** %26, align 8
  %29 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %30 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* @console_suspend_enabled, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %2
  %35 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %36 = call i64 @uart_console(%struct.uart_port* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = call i32 @memset(%struct.ktermios* %10, i32 0, i32 16)
  %40 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %51 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.ktermios*, %struct.ktermios** %54, align 8
  %56 = bitcast %struct.ktermios* %10 to i8*
  %57 = bitcast %struct.ktermios* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  br label %65

58:                                               ; preds = %38
  %59 = call i32 @tty_termios_input_baud_rate(%struct.ktermios* %10)
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = call i32 @tty_termios_baud_rate(%struct.ktermios* %10)
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 3
  %68 = load %struct.uart_ops*, %struct.uart_ops** %67, align 8
  %69 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %68, i32 0, i32 3
  %70 = load i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)*, i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)** %69, align 8
  %71 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %72 = bitcast %struct.ktermios* %10 to %struct.ktermios.0*
  %73 = call i32 %70(%struct.uart_port* %71, %struct.ktermios.0* %72, i32* null)
  %74 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %75 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  store i32 0, i32* %3, align 4
  br label %189

77:                                               ; preds = %34, %2
  %78 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @serial_match_port, align 4
  %82 = call %struct.device* @device_find_child(i32 %80, %struct.uart_match* %9, i32 %81)
  store %struct.device* %82, %struct.device** %8, align 8
  %83 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %77
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = call i64 @device_may_wakeup(%struct.device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %93 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @disable_irq_wake(i32 %94)
  %96 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %97 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 0, i32* %3, align 4
  br label %189

99:                                               ; preds = %87, %77
  %100 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %103 = call i64 @uart_console(%struct.uart_port* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %107 = call i32 @uart_change_pm(%struct.uart_state* %106, i32 0)
  %108 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 3
  %110 = load %struct.uart_ops*, %struct.uart_ops** %109, align 8
  %111 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %110, i32 0, i32 3
  %112 = load i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)*, i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)** %111, align 8
  %113 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %114 = bitcast %struct.ktermios* %10 to %struct.ktermios.0*
  %115 = call i32 %112(%struct.uart_port* %113, %struct.ktermios.0* %114, i32* null)
  %116 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %117 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %116, i32 0, i32 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = call i32 @console_start(%struct.TYPE_4__* %118)
  br label %120

120:                                              ; preds = %105, %99
  %121 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %122 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ASYNC_SUSPENDED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %185

127:                                              ; preds = %120
  %128 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %129 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %128, i32 0, i32 3
  %130 = load %struct.uart_ops*, %struct.uart_ops** %129, align 8
  store %struct.uart_ops* %130, %struct.uart_ops** %11, align 8
  %131 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %132 = call i32 @uart_change_pm(%struct.uart_state* %131, i32 0)
  %133 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 1
  %135 = call i32 @spin_lock_irq(i32* %134)
  %136 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %137 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %136, i32 0, i32 2
  %138 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %137, align 8
  %139 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %140 = call i32 %138(%struct.uart_port* %139, i32 0)
  %141 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %142 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %141, i32 0, i32 1
  %143 = call i32 @spin_unlock_irq(i32* %142)
  %144 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %145 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %144, i32 0, i32 0
  %146 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %145, align 8
  %147 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %148 = call i32 %146(%struct.uart_port* %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %177

151:                                              ; preds = %127
  %152 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %153 = call i32 @uart_change_speed(%struct.uart_state* %152, i32* null)
  %154 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %155 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %154, i32 0, i32 1
  %156 = call i32 @spin_lock_irq(i32* %155)
  %157 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %158 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %157, i32 0, i32 2
  %159 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %158, align 8
  %160 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %161 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 %159(%struct.uart_port* %160, i32 %163)
  %165 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %166 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %165, i32 0, i32 1
  %167 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %166, align 8
  %168 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %169 = call i32 %167(%struct.uart_port* %168)
  %170 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %171 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %170, i32 0, i32 1
  %172 = call i32 @spin_unlock_irq(i32* %171)
  %173 = load i32, i32* @ASYNCB_INITIALIZED, align 4
  %174 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %175 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %174, i32 0, i32 0
  %176 = call i32 @set_bit(i32 %173, i32* %175)
  br label %180

177:                                              ; preds = %127
  %178 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %179 = call i32 @uart_shutdown(%struct.uart_state* %178)
  br label %180

180:                                              ; preds = %177, %151
  %181 = load i32, i32* @ASYNCB_SUSPENDED, align 4
  %182 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %183 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %182, i32 0, i32 0
  %184 = call i32 @clear_bit(i32 %181, i32* %183)
  br label %185

185:                                              ; preds = %180, %120
  %186 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %187 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %186, i32 0, i32 1
  %188 = call i32 @mutex_unlock(i32* %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %91, %65
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @memset(%struct.ktermios*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.device* @device_find_child(i32, %struct.uart_match*, i32) #1

declare dso_local i64 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @uart_change_pm(%struct.uart_state*, i32) #1

declare dso_local i32 @console_start(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @uart_change_speed(%struct.uart_state*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @uart_shutdown(%struct.uart_state*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
