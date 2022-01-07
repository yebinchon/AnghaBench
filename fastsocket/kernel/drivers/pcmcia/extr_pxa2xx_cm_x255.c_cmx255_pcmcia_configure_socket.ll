; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_cm_x255.c_cmx255_pcmcia_configure_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_cm_x255.c_cmx255_pcmcia_configure_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SS_RESET = common dso_local global i32 0, align 4
@GPIO_PCMCIA_SKTSEL = common dso_local global i32 0, align 4
@GPIO_PCMCIA_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_3__*)* @cmx255_pcmcia_configure_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmx255_pcmcia_configure_socket(%struct.soc_pcmcia_socket* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %6 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %42 [
    i32 0, label %8
    i32 1, label %25
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SS_RESET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load i32, i32* @GPIO_PCMCIA_SKTSEL, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 0)
  %18 = call i32 @udelay(i32 1)
  %19 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %20 = call i32 @gpio_set_value(i32 %19, i32 1)
  %21 = call i32 @udelay(i32 10)
  %22 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %23 = call i32 @gpio_set_value(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %15, %8
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SS_RESET, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* @GPIO_PCMCIA_SKTSEL, align 4
  %34 = call i32 @gpio_set_value(i32 %33, i32 1)
  %35 = call i32 @udelay(i32 1)
  %36 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %37 = call i32 @gpio_set_value(i32 %36, i32 1)
  %38 = call i32 @udelay(i32 10)
  %39 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %40 = call i32 @gpio_set_value(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %32, %25
  br label %42

42:                                               ; preds = %2, %41, %24
  ret i32 0
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
