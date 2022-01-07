; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { %struct.TYPE_8__, %struct.tty_port, %struct.uart_port* }
%struct.TYPE_8__ = type { i8* }
%struct.tty_port = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.uart_port = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)* }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@ASYNC_DSR_FLOW = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@ASYNCB_INITIALIZED = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_state*, i32)* @uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_startup(%struct.uart_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.uart_state* %0, %struct.uart_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %11 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %10, i32 0, i32 2
  %12 = load %struct.uart_port*, %struct.uart_port** %11, align 8
  store %struct.uart_port* %12, %struct.uart_port** %6, align 8
  %13 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %14 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %13, i32 0, i32 1
  store %struct.tty_port* %14, %struct.tty_port** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %16 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

22:                                               ; preds = %2
  %23 = load i32, i32* @TTY_IO_ERROR, align 4
  %24 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %25 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %23, i32* %27)
  %29 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT_UNKNOWN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %172

35:                                               ; preds = %22
  %36 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %37 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i64 @get_zeroed_page(i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %172

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %53 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %56 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %55, i32 0, i32 0
  %57 = call i32 @uart_circ_clear(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %49, %35
  %59 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %62, align 8
  %64 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %65 = call i32 %63(%struct.uart_port* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %162

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %73 = call i32 @uart_change_speed(%struct.uart_state* %72, i32* null)
  %74 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %75 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CBAUD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %86 = load i32, i32* @TIOCM_RTS, align 4
  %87 = load i32, i32* @TIOCM_DTR, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @uart_set_mctrl(%struct.uart_port* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %71
  br label %91

91:                                               ; preds = %90, %68
  %92 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %93 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %91
  %99 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 1
  %101 = call i32 @spin_lock_irq(i32* %100)
  %102 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %103 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %105, align 8
  %107 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %108 = call i32 %106(%struct.uart_port* %107)
  %109 = load i32, i32* @TIOCM_CTS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %98
  %113 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %114 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %98
  %118 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock_irq(i32* %119)
  br label %121

121:                                              ; preds = %117, %91
  %122 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %123 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ASYNC_DSR_FLOW, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %121
  %129 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %130 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %129, i32 0, i32 1
  %131 = call i32 @spin_lock_irq(i32* %130)
  %132 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %133 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %135, align 8
  %137 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %138 = call i32 %136(%struct.uart_port* %137)
  %139 = load i32, i32* @TIOCM_DSR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %128
  %143 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %144 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %128
  %148 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %149 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock_irq(i32* %149)
  br label %151

151:                                              ; preds = %147, %121
  %152 = load i32, i32* @ASYNCB_INITIALIZED, align 4
  %153 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %154 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %153, i32 0, i32 0
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  %156 = load i32, i32* @TTY_IO_ERROR, align 4
  %157 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %158 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %157, i32 0, i32 1
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = call i32 @clear_bit(i32 %156, i32* %160)
  br label %162

162:                                              ; preds = %151, %58
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %167 = call i64 @capable(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %169, %165, %162
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %46, %34, %21
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @uart_circ_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @uart_change_speed(%struct.uart_state*, i32*) #1

declare dso_local i32 @uart_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
