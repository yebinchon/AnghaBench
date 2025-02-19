; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_close_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_close_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.moxa_port* }
%struct.moxa_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @moxa_close_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxa_close_port(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.moxa_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.moxa_port*, %struct.moxa_port** %5, align 8
  store %struct.moxa_port* %6, %struct.moxa_port** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = call i32 @moxa_shut_down(%struct.tty_struct* %7)
  %9 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %10 = call i32 @MoxaPortFlushData(%struct.moxa_port* %9, i32 2)
  %11 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %14 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %12
  store i32 %17, i32* %15, align 4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  store %struct.moxa_port* null, %struct.moxa_port** %19, align 8
  %20 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %21 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %20, i32 0, i32 0
  %22 = call i32 @tty_port_tty_set(%struct.TYPE_2__* %21, i32* null)
  ret void
}

declare dso_local i32 @moxa_shut_down(%struct.tty_struct*) #1

declare dso_local i32 @MoxaPortFlushData(%struct.moxa_port*, i32) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
