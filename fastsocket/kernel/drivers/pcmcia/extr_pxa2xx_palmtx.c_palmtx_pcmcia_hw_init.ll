; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_palmtx.c_palmtx_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_palmtx.c_palmtx_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }

@GPIO_NR_PALMTX_PCMCIA_POWER1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PCMCIA PWR1\00", align 1
@GPIO_NR_PALMTX_PCMCIA_POWER2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"PCMCIA PWR2\00", align 1
@GPIO_NR_PALMTX_PCMCIA_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"PCMCIA RST\00", align 1
@GPIO_NR_PALMTX_PCMCIA_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"PCMCIA RDY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @palmtx_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmtx_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %5 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER1, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %69

10:                                               ; preds = %1
  %11 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER1, align 4
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %66

16:                                               ; preds = %10
  %17 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER2, align 4
  %18 = call i32 @gpio_request(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %66

22:                                               ; preds = %16
  %23 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER2, align 4
  %24 = call i32 @gpio_direction_output(i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %63

28:                                               ; preds = %22
  %29 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_RESET, align 4
  %30 = call i32 @gpio_request(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %63

34:                                               ; preds = %28
  %35 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_RESET, align 4
  %36 = call i32 @gpio_direction_output(i32 %35, i32 1)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %60

40:                                               ; preds = %34
  %41 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_READY, align 4
  %42 = call i32 @gpio_request(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %60

46:                                               ; preds = %40
  %47 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_READY, align 4
  %48 = call i32 @gpio_direction_input(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_READY, align 4
  %54 = call i32 @gpio_to_irq(i32 %53)
  %55 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %56 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %2, align 4
  br label %71

57:                                               ; preds = %51
  %58 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_READY, align 4
  %59 = call i32 @gpio_free(i32 %58)
  br label %60

60:                                               ; preds = %57, %45, %39
  %61 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_RESET, align 4
  %62 = call i32 @gpio_free(i32 %61)
  br label %63

63:                                               ; preds = %60, %33, %27
  %64 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER2, align 4
  %65 = call i32 @gpio_free(i32 %64)
  br label %66

66:                                               ; preds = %63, %21, %15
  %67 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER1, align 4
  %68 = call i32 @gpio_free(i32 %67)
  br label %69

69:                                               ; preds = %66, %9
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %52
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
