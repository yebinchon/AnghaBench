; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_palmtc.c_palmtc_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_palmtc.c_palmtc_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }

@GPIO_NR_PALMTC_PCMCIA_POWER1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PCMCIA PWR1\00", align 1
@GPIO_NR_PALMTC_PCMCIA_POWER2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"PCMCIA PWR2\00", align 1
@GPIO_NR_PALMTC_PCMCIA_POWER3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"PCMCIA PWR3\00", align 1
@GPIO_NR_PALMTC_PCMCIA_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"PCMCIA RST\00", align 1
@GPIO_NR_PALMTC_PCMCIA_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"PCMCIA RDY\00", align 1
@GPIO_NR_PALMTC_PCMCIA_PWRREADY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"PCMCIA PWRRDY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @palmtc_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmtc_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %5 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER1, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %99

10:                                               ; preds = %1
  %11 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER1, align 4
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %96

16:                                               ; preds = %10
  %17 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER2, align 4
  %18 = call i32 @gpio_request(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %96

22:                                               ; preds = %16
  %23 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER2, align 4
  %24 = call i32 @gpio_direction_output(i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %93

28:                                               ; preds = %22
  %29 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER3, align 4
  %30 = call i32 @gpio_request(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %93

34:                                               ; preds = %28
  %35 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER3, align 4
  %36 = call i32 @gpio_direction_output(i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %90

40:                                               ; preds = %34
  %41 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_RESET, align 4
  %42 = call i32 @gpio_request(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %90

46:                                               ; preds = %40
  %47 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_RESET, align 4
  %48 = call i32 @gpio_direction_output(i32 %47, i32 1)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %87

52:                                               ; preds = %46
  %53 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_READY, align 4
  %54 = call i32 @gpio_request(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %87

58:                                               ; preds = %52
  %59 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_READY, align 4
  %60 = call i32 @gpio_direction_input(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %84

64:                                               ; preds = %58
  %65 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_PWRREADY, align 4
  %66 = call i32 @gpio_request(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %84

70:                                               ; preds = %64
  %71 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_PWRREADY, align 4
  %72 = call i32 @gpio_direction_input(i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_READY, align 4
  %78 = call i32 @IRQ_GPIO(i32 %77)
  %79 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %80 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %2, align 4
  br label %101

81:                                               ; preds = %75
  %82 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_PWRREADY, align 4
  %83 = call i32 @gpio_free(i32 %82)
  br label %84

84:                                               ; preds = %81, %69, %63
  %85 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_READY, align 4
  %86 = call i32 @gpio_free(i32 %85)
  br label %87

87:                                               ; preds = %84, %57, %51
  %88 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_RESET, align 4
  %89 = call i32 @gpio_free(i32 %88)
  br label %90

90:                                               ; preds = %87, %45, %39
  %91 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER3, align 4
  %92 = call i32 @gpio_free(i32 %91)
  br label %93

93:                                               ; preds = %90, %33, %27
  %94 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER2, align 4
  %95 = call i32 @gpio_free(i32 %94)
  br label %96

96:                                               ; preds = %93, %21, %15
  %97 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER1, align 4
  %98 = call i32 @gpio_free(i32 %97)
  br label %99

99:                                               ; preds = %96, %9
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %76
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @IRQ_GPIO(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
