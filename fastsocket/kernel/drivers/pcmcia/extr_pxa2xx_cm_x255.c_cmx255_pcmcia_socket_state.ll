; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_cm_x255.c_cmx255_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_cm_x255.c_cmx255_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i64, i64, i64 }

@GPIO_PCMCIA_S1_CD_VALID = common dso_local global i32 0, align 4
@GPIO_PCMCIA_S0_CD_VALID = common dso_local global i32 0, align 4
@GPIO_PCMCIA_S1_RDYINT = common dso_local global i32 0, align 4
@GPIO_PCMCIA_S0_RDYINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @cmx255_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmx255_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %7 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %8 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @GPIO_PCMCIA_S1_CD_VALID, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @GPIO_PCMCIA_S0_CD_VALID, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %18 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @GPIO_PCMCIA_S1_RDYINT, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @GPIO_PCMCIA_S0_RDYINT, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @gpio_get_value(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %33 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gpio_get_value(i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %43 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %45 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %47 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %49 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %51 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
