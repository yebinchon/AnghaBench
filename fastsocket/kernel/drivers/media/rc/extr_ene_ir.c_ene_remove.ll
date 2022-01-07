; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.ene_device = type { i32, i32, i32, i32 }

@ENE_IO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @ene_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_remove(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.ene_device*, align 8
  %4 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %6 = call %struct.ene_device* @pnp_get_drvdata(%struct.pnp_dev* %5)
  store %struct.ene_device* %6, %struct.ene_device** %3, align 8
  %7 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %8 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %7, i32 0, i32 3
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %12 = call i32 @ene_rx_disable(%struct.ene_device* %11)
  %13 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %14 = call i32 @ene_rx_restore_hw_buffer(%struct.ene_device* %13)
  %15 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %16 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %15, i32 0, i32 3
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %20 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.ene_device* %22)
  %24 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %25 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ENE_IO_SIZE, align 4
  %28 = call i32 @release_region(i32 %26, i32 %27)
  %29 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %30 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rc_unregister_device(i32 %31)
  %33 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %34 = call i32 @kfree(%struct.ene_device* %33)
  ret void
}

declare dso_local %struct.ene_device* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ene_rx_disable(%struct.ene_device*) #1

declare dso_local i32 @ene_rx_restore_hw_buffer(%struct.ene_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.ene_device*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
