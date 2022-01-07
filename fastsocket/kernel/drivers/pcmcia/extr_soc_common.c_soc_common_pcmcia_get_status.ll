; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.soc_pcmcia_socket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32*)* @soc_common_pcmcia_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_common_pcmcia_get_status(%struct.pcmcia_socket* %0, i32* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %7 = call %struct.soc_pcmcia_socket* @to_soc_pcmcia_socket(%struct.pcmcia_socket* %6)
  store %struct.soc_pcmcia_socket* %7, %struct.soc_pcmcia_socket** %5, align 8
  %8 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %9 = call i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket* %8)
  %10 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %11 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %13 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  ret i32 0
}

declare dso_local %struct.soc_pcmcia_socket* @to_soc_pcmcia_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
