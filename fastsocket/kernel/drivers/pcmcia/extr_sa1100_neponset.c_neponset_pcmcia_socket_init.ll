; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_neponset.c_neponset_pcmcia_socket_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_neponset.c_neponset_pcmcia_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }

@NCR_A0VPP = common dso_local global i32 0, align 4
@NCR_A1VPP = common dso_local global i32 0, align 4
@NCR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*)* @neponset_pcmcia_socket_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neponset_pcmcia_socket_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %3 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @NCR_A0VPP, align 4
  %9 = load i32, i32* @NCR_A1VPP, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @NCR_0, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @NCR_0, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %16 = call i32 @sa1111_pcmcia_socket_init(%struct.soc_pcmcia_socket* %15)
  ret void
}

declare dso_local i32 @sa1111_pcmcia_socket_init(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
