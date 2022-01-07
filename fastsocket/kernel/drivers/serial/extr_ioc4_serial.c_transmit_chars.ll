; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__, %struct.uart_state* }
%struct.TYPE_6__ = type { i32 }
%struct.uart_state = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.ioc4_port = type { i32 }

@N_ALL_OUTPUT = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@N_OUTPUT_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca %struct.ioc4_port*, align 8
  %10 = alloca %struct.uart_state*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call %struct.ioc4_port* @get_ioc4_port(%struct.uart_port* %11, i32 0)
  store %struct.ioc4_port* %12, %struct.ioc4_port** %9, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = icmp ne %struct.uart_port* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %131

16:                                               ; preds = %1
  %17 = load %struct.ioc4_port*, %struct.ioc4_port** %9, align 8
  %18 = icmp ne %struct.ioc4_port* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %131

20:                                               ; preds = %16
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  %23 = load %struct.uart_state*, %struct.uart_state** %22, align 8
  store %struct.uart_state* %23, %struct.uart_state** %10, align 8
  %24 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %25 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.tty_struct*, %struct.tty_struct** %26, align 8
  store %struct.tty_struct* %27, %struct.tty_struct** %8, align 8
  %28 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %29 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %28, i32 0, i32 0
  %30 = call i64 @uart_circ_empty(%struct.TYPE_7__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = call i64 @uart_tx_stopped(%struct.uart_port* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %20
  %37 = load %struct.ioc4_port*, %struct.ioc4_port** %9, align 8
  %38 = load i32, i32* @N_ALL_OUTPUT, align 4
  %39 = call i32 @set_notification(%struct.ioc4_port* %37, i32 %38, i32 0)
  br label %131

40:                                               ; preds = %32
  %41 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %42 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %5, align 4
  %45 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %46 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %50 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to i8*
  store i8* %56, i8** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %40
  %61 = load i32, i32* @UART_XMIT_SIZE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %61, %62
  br label %68

64:                                               ; preds = %40
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %63, %60 ], [ %67, %64 ]
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = load %struct.ioc4_port*, %struct.ioc4_port** %9, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @do_write(%struct.ioc4_port* %73, i8* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @UART_XMIT_SIZE, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %98 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %101 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = bitcast i32* %106 to i8*
  store i8* %107, i8** %7, align 8
  br label %108

108:                                              ; preds = %79, %72
  br label %109

109:                                              ; preds = %108, %68
  %110 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %111 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %110, i32 0, i32 0
  %112 = call i64 @uart_circ_chars_pending(%struct.TYPE_7__* %111)
  %113 = load i64, i64* @WAKEUP_CHARS, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %117 = call i32 @uart_write_wakeup(%struct.uart_port* %116)
  br label %118

118:                                              ; preds = %115, %109
  %119 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %120 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %119, i32 0, i32 0
  %121 = call i64 @uart_circ_empty(%struct.TYPE_7__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.ioc4_port*, %struct.ioc4_port** %9, align 8
  %125 = load i32, i32* @N_OUTPUT_LOWAT, align 4
  %126 = call i32 @set_notification(%struct.ioc4_port* %124, i32 %125, i32 0)
  br label %131

127:                                              ; preds = %118
  %128 = load %struct.ioc4_port*, %struct.ioc4_port** %9, align 8
  %129 = load i32, i32* @N_OUTPUT_LOWAT, align 4
  %130 = call i32 @set_notification(%struct.ioc4_port* %128, i32 %129, i32 1)
  br label %131

131:                                              ; preds = %15, %19, %36, %127, %123
  ret void
}

declare dso_local %struct.ioc4_port* @get_ioc4_port(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.TYPE_7__*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @set_notification(%struct.ioc4_port*, i32, i32) #1

declare dso_local i32 @do_write(%struct.ioc4_port*, i8*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
