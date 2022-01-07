; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_palmtx.c_palmtx_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_palmtx.c_palmtx_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i64, i64 }

@GPIO_NR_PALMTX_PCMCIA_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @palmtx_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmtx_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %5 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %6 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_READY, align 4
  %8 = call i32 @gpio_get_value(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %14 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %15, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %18 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %17, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %20 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %21, i32 0, i32 4
  store i32 1, i32* %22, align 8
  %23 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %24 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
