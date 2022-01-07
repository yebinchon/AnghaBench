; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mpc52xx_ata_priv* }
%struct.mpc52xx_ata_priv = type { i32 }
%struct.ata_device = type { i32, i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error: invalid PIO mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @mpc52xx_ata_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc52xx_ata_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.mpc52xx_ata_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %11, align 8
  store %struct.mpc52xx_ata_priv* %12, %struct.mpc52xx_ata_priv** %5, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XFER_PIO_0, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @mpc52xx_ata_compute_pio_timings(%struct.mpc52xx_ata_priv* %18, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %34 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mpc52xx_ata_apply_timings(%struct.mpc52xx_ata_priv* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  ret void
}

declare dso_local i32 @mpc52xx_ata_compute_pio_timings(%struct.mpc52xx_ata_priv*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mpc52xx_ata_apply_timings(%struct.mpc52xx_ata_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
