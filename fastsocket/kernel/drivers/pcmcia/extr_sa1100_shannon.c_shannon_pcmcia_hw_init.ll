; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_shannon.c_shannon_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1100_shannon.c_shannon_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64, i32 }

@SHANNON_GPIO_EJECT_0 = common dso_local global i32 0, align 4
@SHANNON_GPIO_EJECT_1 = common dso_local global i32 0, align 4
@SHANNON_GPIO_RDY_0 = common dso_local global i32 0, align 4
@SHANNON_GPIO_RDY_1 = common dso_local global i32 0, align 4
@GPDR = common dso_local global i32 0, align 4
@GAFR = common dso_local global i32 0, align 4
@SHANNON_IRQ_GPIO_RDY_1 = common dso_local global i32 0, align 4
@SHANNON_IRQ_GPIO_RDY_0 = common dso_local global i32 0, align 4
@irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @shannon_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shannon_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %3 = load i32, i32* @SHANNON_GPIO_EJECT_0, align 4
  %4 = load i32, i32* @SHANNON_GPIO_EJECT_1, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SHANNON_GPIO_RDY_0, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SHANNON_GPIO_RDY_1, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @GPDR, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* @GPDR, align 4
  %13 = load i32, i32* @SHANNON_GPIO_EJECT_0, align 4
  %14 = load i32, i32* @SHANNON_GPIO_EJECT_1, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SHANNON_GPIO_RDY_0, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SHANNON_GPIO_RDY_1, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @GAFR, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @GAFR, align 4
  %23 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %24 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @SHANNON_IRQ_GPIO_RDY_1, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @SHANNON_IRQ_GPIO_RDY_0, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %34 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %36 = load i32, i32* @irqs, align 4
  %37 = load i32, i32* @irqs, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @soc_pcmcia_request_irqs(%struct.soc_pcmcia_socket* %35, i32 %36, i32 %38)
  ret i32 %39
}

declare dso_local i32 @soc_pcmcia_request_irqs(%struct.soc_pcmcia_socket*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
