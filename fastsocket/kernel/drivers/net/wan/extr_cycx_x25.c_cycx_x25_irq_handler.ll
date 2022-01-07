; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cycx_device = type { i32, i32, i64 }
%struct.cycx_x25_cmd = type { i32 }

@X25_RXMBOX_OFFS = common dso_local global i32 0, align 4
@WAN_CONNECTED = common dso_local global i32 0, align 4
@WAN_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cycx_device*)* @cycx_x25_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cycx_x25_irq_handler(%struct.cycx_device* %0) #0 {
  %2 = alloca %struct.cycx_device*, align 8
  %3 = alloca %struct.cycx_x25_cmd, align 4
  %4 = alloca i32, align 4
  store %struct.cycx_device* %0, %struct.cycx_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %6 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %8 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %10 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %9, i32 0, i32 1
  %11 = load i32, i32* @X25_RXMBOX_OFFS, align 4
  %12 = call i32 @cycx_peek(i32* %10, i32 %11, %struct.cycx_x25_cmd* %3, i32 4)
  %13 = getelementptr inbounds %struct.cycx_x25_cmd, %struct.cycx_x25_cmd* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %47 [
    i32 134, label %15
    i32 137, label %18
    i32 129, label %21
    i32 128, label %24
    i32 136, label %27
    i32 135, label %30
    i32 132, label %33
    i32 133, label %36
    i32 130, label %39
    i32 131, label %43
  ]

15:                                               ; preds = %1
  %16 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %17 = call i32 @cycx_x25_irq_rx(%struct.cycx_device* %16, %struct.cycx_x25_cmd* %3)
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %20 = call i32 @cycx_x25_irq_tx(%struct.cycx_device* %19, %struct.cycx_x25_cmd* %3)
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %23 = call i32 @cycx_x25_irq_log(%struct.cycx_device* %22, %struct.cycx_x25_cmd* %3)
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %26 = call i32 @cycx_x25_irq_stat(%struct.cycx_device* %25, %struct.cycx_x25_cmd* %3)
  br label %50

27:                                               ; preds = %1
  %28 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %29 = call i32 @cycx_x25_irq_connect_confirm(%struct.cycx_device* %28, %struct.cycx_x25_cmd* %3)
  br label %50

30:                                               ; preds = %1
  %31 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %32 = call i32 @cycx_x25_irq_connect(%struct.cycx_device* %31, %struct.cycx_x25_cmd* %3)
  br label %50

33:                                               ; preds = %1
  %34 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %35 = call i32 @cycx_x25_irq_disconnect(%struct.cycx_device* %34, %struct.cycx_x25_cmd* %3)
  br label %50

36:                                               ; preds = %1
  %37 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %38 = call i32 @cycx_x25_irq_disconnect_confirm(%struct.cycx_device* %37, %struct.cycx_x25_cmd* %3)
  br label %50

39:                                               ; preds = %1
  %40 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %41 = load i32, i32* @WAN_CONNECTED, align 4
  %42 = call i32 @cycx_set_state(%struct.cycx_device* %40, i32 %41)
  br label %50

43:                                               ; preds = %1
  %44 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %45 = load i32, i32* @WAN_DISCONNECTED, align 4
  %46 = call i32 @cycx_set_state(%struct.cycx_device* %44, i32 %45)
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %49 = call i32 @cycx_x25_irq_spurious(%struct.cycx_device* %48, %struct.cycx_x25_cmd* %3)
  br label %50

50:                                               ; preds = %47, %43, %39, %36, %33, %30, %27, %24, %21, %18, %15
  %51 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %52 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %51, i32 0, i32 1
  %53 = call i32 @cycx_poke(i32* %52, i32 0, i32* %4, i32 4)
  %54 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %55 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %54, i32 0, i32 1
  %56 = load i32, i32* @X25_RXMBOX_OFFS, align 4
  %57 = call i32 @cycx_poke(i32* %55, i32 %56, i32* %4, i32 4)
  %58 = load %struct.cycx_device*, %struct.cycx_device** %2, align 8
  %59 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  ret void
}

declare dso_local i32 @cycx_peek(i32*, i32, %struct.cycx_x25_cmd*, i32) #1

declare dso_local i32 @cycx_x25_irq_rx(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_x25_irq_tx(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_x25_irq_log(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_x25_irq_stat(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_x25_irq_connect_confirm(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_x25_irq_connect(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_x25_irq_disconnect(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_x25_irq_disconnect_confirm(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_set_state(%struct.cycx_device*, i32) #1

declare dso_local i32 @cycx_x25_irq_spurious(%struct.cycx_device*, %struct.cycx_x25_cmd*) #1

declare dso_local i32 @cycx_poke(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
