; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_handle_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_handle_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sio_port = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"status = %x...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sio_port*, i32)* @m32r_sio_handle_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m32r_sio_handle_port(%struct.uart_sio_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_sio_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_sio_port* %0, %struct.uart_sio_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DEBUG_INTR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %12 = call i32 @receive_chars(%struct.uart_sio_port* %11, i32* %4)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %19 = call i32 @transmit_chars(%struct.uart_sio_port* %18)
  br label %20

20:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @DEBUG_INTR(i8*, i32) #1

declare dso_local i32 @receive_chars(%struct.uart_sio_port*, i32*) #1

declare dso_local i32 @transmit_chars(%struct.uart_sio_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
