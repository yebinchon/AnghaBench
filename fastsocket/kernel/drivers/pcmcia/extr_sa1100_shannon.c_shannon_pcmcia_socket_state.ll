; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_shannon.c_shannon_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_shannon.c_shannon_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i32, i32 }

@GPLR = common dso_local global i64 0, align 8
@SHANNON_GPIO_EJECT_0 = common dso_local global i64 0, align 8
@SHANNON_GPIO_RDY_0 = common dso_local global i64 0, align 8
@SHANNON_GPIO_EJECT_1 = common dso_local global i64 0, align 8
@SHANNON_GPIO_RDY_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @shannon_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shannon_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %6 = load i64, i64* @GPLR, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %8 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %64 [
    i32 0, label %10
    i32 1, label %37
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SHANNON_GPIO_EJECT_0, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  %17 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %18 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @SHANNON_GPIO_RDY_0, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %26 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %28 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %27, i32 0, i32 6
  store i32 0, i32* %28, align 4
  %29 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %32 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %34 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %33, i32 0, i32 4
  store i32 1, i32* %34, align 4
  %35 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %36 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %35, i32 0, i32 5
  store i32 0, i32* %36, align 4
  br label %64

37:                                               ; preds = %2
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @SHANNON_GPIO_EJECT_1, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 1
  %44 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %45 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @SHANNON_GPIO_RDY_1, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %53 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %55 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %54, i32 0, i32 6
  store i32 0, i32* %55, align 4
  %56 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %57 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %56, i32 0, i32 2
  store i32 1, i32* %57, align 4
  %58 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %59 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %61 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %60, i32 0, i32 4
  store i32 1, i32* %61, align 4
  %62 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %63 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %62, i32 0, i32 5
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %2, %37, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
