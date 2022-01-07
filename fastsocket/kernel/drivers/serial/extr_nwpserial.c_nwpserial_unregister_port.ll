; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_nwpserial.c_nwpserial_unregister_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_nwpserial.c_nwpserial_unregister_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwpserial_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@nwpserial_ports = common dso_local global %struct.nwpserial_port* null, align 8
@nwpserial_mutex = common dso_local global i32 0, align 4
@nwpserial_reg = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nwpserial_unregister_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nwpserial_port*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.nwpserial_port*, %struct.nwpserial_port** @nwpserial_ports, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %4, i64 %6
  store %struct.nwpserial_port* %7, %struct.nwpserial_port** %3, align 8
  %8 = call i32 @mutex_lock(i32* @nwpserial_mutex)
  %9 = load %struct.nwpserial_port*, %struct.nwpserial_port** %3, align 8
  %10 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %9, i32 0, i32 0
  %11 = call i32 @uart_remove_one_port(i32* @nwpserial_reg, %struct.TYPE_2__* %10)
  %12 = load i32, i32* @PORT_UNKNOWN, align 4
  %13 = load %struct.nwpserial_port*, %struct.nwpserial_port** %3, align 8
  %14 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = call i32 @mutex_unlock(i32* @nwpserial_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
