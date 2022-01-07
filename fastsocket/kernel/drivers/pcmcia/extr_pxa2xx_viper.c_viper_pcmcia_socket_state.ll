; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_viper.c_viper_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_viper.c_viper_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i64, i64 }

@VIPER_CF_CD_GPIO = common dso_local global i32 0, align 4
@VIPER_CF_RDY_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @viper_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viper_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %5 = load i32, i32* @VIPER_CF_CD_GPIO, align 4
  %6 = call i64 @gpio_get_value(i32 %5)
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 0, i32 1
  %10 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @VIPER_CF_RDY_GPIO, align 4
  %13 = call i64 @gpio_get_value(i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %18 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %20 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %19, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %24 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %26 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %25, i32 0, i32 4
  store i32 1, i32* %26, align 8
  %27 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %28 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i64 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
