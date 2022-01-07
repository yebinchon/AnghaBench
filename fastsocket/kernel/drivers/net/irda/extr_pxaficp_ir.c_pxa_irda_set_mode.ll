; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_pxaficp_ir.c_pxa_irda_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_pxaficp_ir.c_pxa_irda_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_irda = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 (i32, i32)* }

@IR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_irda*, i32)* @pxa_irda_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_irda_set_mode(%struct.pxa_irda* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_irda*, align 8
  %4 = alloca i32, align 4
  store %struct.pxa_irda* %0, %struct.pxa_irda** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pxa_irda*, %struct.pxa_irda** %3, align 8
  %6 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = icmp ne i32 (i32, i32)* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.pxa_irda*, %struct.pxa_irda** %3, align 8
  %13 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.pxa_irda*, %struct.pxa_irda** %3, align 8
  %18 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 %16(i32 %19, i32 %20)
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.pxa_irda*, %struct.pxa_irda** %3, align 8
  %24 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @gpio_is_valid(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = load %struct.pxa_irda*, %struct.pxa_irda** %3, align 8
  %32 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IR_OFF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.pxa_irda*, %struct.pxa_irda** %3, align 8
  %43 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = xor i32 %41, %49
  %51 = call i32 @gpio_set_value(i32 %35, i32 %50)
  br label %52

52:                                               ; preds = %30, %22
  %53 = load %struct.pxa_irda*, %struct.pxa_irda** %3, align 8
  %54 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pxa2xx_transceiver_mode(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %11
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @pxa2xx_transceiver_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
