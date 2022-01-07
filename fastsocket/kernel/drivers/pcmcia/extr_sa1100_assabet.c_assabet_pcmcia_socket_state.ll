; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_assabet.c_assabet_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_assabet.c_assabet_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i64, i64 }

@GPLR = common dso_local global i64 0, align 8
@ASSABET_GPIO_CF_CD = common dso_local global i64 0, align 8
@ASSABET_GPIO_CF_IRQ = common dso_local global i64 0, align 8
@ASSABET_GPIO_CF_BVD1 = common dso_local global i64 0, align 8
@ASSABET_GPIO_CF_BVD2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @assabet_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assabet_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %6 = load i64, i64* @GPLR, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @ASSABET_GPIO_CF_CD, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  %13 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %14 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ASSABET_GPIO_CF_IRQ, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @ASSABET_GPIO_CF_BVD1, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ASSABET_GPIO_CF_BVD2, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %38 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %40 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %42 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %41, i32 0, i32 4
  store i32 1, i32* %42, align 8
  %43 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %44 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
