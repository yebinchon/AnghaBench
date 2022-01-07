; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sx4.c_pdc_port_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sx4.c_pdc_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.pdc_port_priv*, %struct.TYPE_2__* }
%struct.pdc_port_priv = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @pdc_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pdc_port_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = call i32 @ata_port_start(%struct.ata_port* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pdc_port_priv* @devm_kzalloc(%struct.device* %19, i32 8, i32 %20)
  store %struct.pdc_port_priv* %21, %struct.pdc_port_priv** %5, align 8
  %22 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %23 = icmp ne %struct.pdc_port_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %30 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @dmam_alloc_coherent(%struct.device* %28, i32 128, i32* %30, i32 %31)
  %33 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %34 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %36 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %27
  %43 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 0
  store %struct.pdc_port_priv* %43, %struct.pdc_port_priv** %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %39, %24, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ata_port_start(%struct.ata_port*) #1

declare dso_local %struct.pdc_port_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
