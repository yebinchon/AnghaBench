; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_e740.c_e740_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_e740.c_e740_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i64, i64 }

@GPIO_E740_PCMCIA_CD0 = common dso_local global i32 0, align 4
@GPIO_E740_PCMCIA_RDY0 = common dso_local global i32 0, align 4
@GPIO_E740_PCMCIA_CD1 = common dso_local global i32 0, align 4
@GPIO_E740_PCMCIA_RDY1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @e740_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e740_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %5 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %6 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* @GPIO_E740_PCMCIA_CD0, align 4
  %11 = call i64 @gpio_get_value(i32 %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  %15 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @GPIO_E740_PCMCIA_RDY0, align 4
  %18 = call i64 @gpio_get_value(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %23 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* @GPIO_E740_PCMCIA_CD1, align 4
  %26 = call i64 @gpio_get_value(i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %31 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @GPIO_E740_PCMCIA_RDY1, align 4
  %33 = call i64 @gpio_get_value(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %38 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %24, %9
  %40 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %43 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %45 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %44, i32 0, i32 4
  store i32 1, i32* %45, align 8
  %46 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %47 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %49 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i64 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
