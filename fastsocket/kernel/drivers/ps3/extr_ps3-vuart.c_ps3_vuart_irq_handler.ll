; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3-vuart.c_ps3_vuart_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3-vuart.c_ps3_vuart_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vuart_bus_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@PORT_COUNT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ps3_vuart_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3_vuart_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vuart_bus_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.vuart_bus_priv*
  store %struct.vuart_bus_priv* %8, %struct.vuart_bus_priv** %5, align 8
  %9 = load %struct.vuart_bus_priv*, %struct.vuart_bus_priv** %5, align 8
  %10 = icmp ne %struct.vuart_bus_priv* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  br label %14

14:                                               ; preds = %2, %32
  %15 = load %struct.vuart_bus_priv*, %struct.vuart_bus_priv** %5, align 8
  %16 = getelementptr inbounds %struct.vuart_bus_priv, %struct.vuart_bus_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @dump_ports_bmp(%struct.TYPE_2__* %17)
  %19 = load i32, i32* @BITS_PER_LONG, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.vuart_bus_priv*, %struct.vuart_bus_priv** %5, align 8
  %22 = getelementptr inbounds %struct.vuart_bus_priv, %struct.vuart_bus_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__ilog2(i32 %25)
  %27 = sub nsw i32 %20, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BITS_PER_LONG, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %57

32:                                               ; preds = %14
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PORT_COUNT, align 4
  %35 = icmp uge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.vuart_bus_priv*, %struct.vuart_bus_priv** %5, align 8
  %39 = getelementptr inbounds %struct.vuart_bus_priv, %struct.vuart_bus_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.vuart_bus_priv*, %struct.vuart_bus_priv** %5, align 8
  %50 = getelementptr inbounds %struct.vuart_bus_priv, %struct.vuart_bus_priv* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ps3_vuart_handle_port_interrupt(i32 %55)
  br label %14

57:                                               ; preds = %31
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dump_ports_bmp(%struct.TYPE_2__*) #1

declare dso_local i32 @__ilog2(i32) #1

declare dso_local i32 @ps3_vuart_handle_port_interrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
