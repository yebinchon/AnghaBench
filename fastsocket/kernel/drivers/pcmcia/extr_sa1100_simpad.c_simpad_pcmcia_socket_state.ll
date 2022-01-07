; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_simpad.c_simpad_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_simpad.c_simpad_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i64, i64 }

@GPLR = common dso_local global i64 0, align 8
@GPIO_CF_CD = common dso_local global i64 0, align 8
@GPIO_CF_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @simpad_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simpad_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %7 = load i64, i64* @GPLR, align 8
  store i64 %7, i64* %5, align 8
  %8 = call i64 (...) @get_cs3_shadow()
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @GPIO_CF_CD, align 8
  %11 = and i64 %9, %10
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @GPIO_CF_IRQ, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %24 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %26 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %28 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, 12
  %33 = icmp eq i64 %32, 12
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %36 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %35, i32 0, i32 4
  store i32 0, i32* %36, align 8
  %37 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %38 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %40, i32 0, i32 4
  store i32 1, i32* %41, align 8
  %42 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %43 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %34
  ret void
}

declare dso_local i64 @get_cs3_shadow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
