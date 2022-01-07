; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_stargate2.c_sg2_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_stargate2.c_sg2_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.pcmcia_state = type { i32, i32, i32, i64, i64, i64, i64 }

@SG2_S0_GPIO_DETECT = common dso_local global i32 0, align 4
@SG2_S0_GPIO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @sg2_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg2_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %5 = load i32, i32* @SG2_S0_GPIO_DETECT, align 4
  %6 = call i32 @gpio_get_value(i32 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @SG2_S0_GPIO_READY, align 4
  %13 = call i32 @gpio_get_value(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %19 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %21 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %23 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %25 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %27 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %29 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
