; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_cm_x270.c_cmx270_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_cm_x270.c_cmx270_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }

@GPIO_PCMCIA_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PCCard reset\00", align 1
@PCMCIA_S0_RDYINT = common dso_local global i32 0, align 4
@irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @cmx270_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmx270_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %5 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %13 = call i32 @gpio_direction_output(i32 %12, i32 0)
  %14 = load i32, i32* @PCMCIA_S0_RDYINT, align 4
  %15 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %16 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %18 = load i32, i32* @irqs, align 4
  %19 = load i32, i32* @irqs, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @soc_pcmcia_request_irqs(%struct.soc_pcmcia_socket* %17, i32 %18, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %11
  %25 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %26 = call i32 @gpio_free(i32 %25)
  br label %27

27:                                               ; preds = %24, %11
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @soc_pcmcia_request_irqs(%struct.soc_pcmcia_socket*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
