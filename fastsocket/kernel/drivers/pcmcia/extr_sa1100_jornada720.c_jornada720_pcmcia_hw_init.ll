; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_jornada720.c_jornada720_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_jornada720.c_jornada720_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }

@GPIO_A0 = common dso_local global i32 0, align 4
@GPIO_A1 = common dso_local global i32 0, align 4
@GPIO_A2 = common dso_local global i32 0, align 4
@GPIO_A3 = common dso_local global i32 0, align 4
@GRER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @jornada720_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada720_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %4 = load i32, i32* @GPIO_A0, align 4
  %5 = load i32, i32* @GPIO_A1, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @GPIO_A2, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @GPIO_A3, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @GRER, align 4
  %12 = or i32 %11, 2
  store i32 %12, i32* @GRER, align 4
  %13 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %14 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SA1111_DEV(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @sa1111_set_io_dir(i32 %16, i32 %17, i32 0, i32 0)
  %19 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %20 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SA1111_DEV(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @sa1111_set_io(i32 %22, i32 %23, i32 0)
  %25 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %26 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SA1111_DEV(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @sa1111_set_sleep_io(i32 %28, i32 %29, i32 0)
  %31 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %32 = call i32 @sa1111_pcmcia_hw_init(%struct.soc_pcmcia_socket* %31)
  ret i32 %32
}

declare dso_local i32 @sa1111_set_io_dir(i32, i32, i32, i32) #1

declare dso_local i32 @SA1111_DEV(i32) #1

declare dso_local i32 @sa1111_set_io(i32, i32, i32) #1

declare dso_local i32 @sa1111_set_sleep_io(i32, i32, i32) #1

declare dso_local i32 @sa1111_pcmcia_hw_init(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
