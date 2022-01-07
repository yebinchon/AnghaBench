; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_chipset_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_chipset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i32, i32, i32 (%struct.sja1000_priv*, i32, i32)* }

@REG_CDR = common dso_local global i32 0, align 4
@CDR_PELICAN = common dso_local global i32 0, align 4
@REG_ACCC0 = common dso_local global i32 0, align 4
@REG_ACCC1 = common dso_local global i32 0, align 4
@REG_ACCC2 = common dso_local global i32 0, align 4
@REG_ACCC3 = common dso_local global i32 0, align 4
@REG_ACCM0 = common dso_local global i32 0, align 4
@REG_ACCM1 = common dso_local global i32 0, align 4
@REG_ACCM2 = common dso_local global i32 0, align 4
@REG_ACCM3 = common dso_local global i32 0, align 4
@REG_OCR = common dso_local global i32 0, align 4
@OCR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @chipset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipset_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.sja1000_priv* %5, %struct.sja1000_priv** %3, align 8
  %6 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %7 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %6, i32 0, i32 2
  %8 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %7, align 8
  %9 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %10 = load i32, i32* @REG_CDR, align 4
  %11 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %12 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CDR_PELICAN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 %8(%struct.sja1000_priv* %9, i32 %10, i32 %15)
  %17 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %18 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %17, i32 0, i32 2
  %19 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %18, align 8
  %20 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %21 = load i32, i32* @REG_ACCC0, align 4
  %22 = call i32 %19(%struct.sja1000_priv* %20, i32 %21, i32 0)
  %23 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %24 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %23, i32 0, i32 2
  %25 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %24, align 8
  %26 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %27 = load i32, i32* @REG_ACCC1, align 4
  %28 = call i32 %25(%struct.sja1000_priv* %26, i32 %27, i32 0)
  %29 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %30 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %29, i32 0, i32 2
  %31 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %30, align 8
  %32 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %33 = load i32, i32* @REG_ACCC2, align 4
  %34 = call i32 %31(%struct.sja1000_priv* %32, i32 %33, i32 0)
  %35 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %35, i32 0, i32 2
  %37 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %36, align 8
  %38 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %39 = load i32, i32* @REG_ACCC3, align 4
  %40 = call i32 %37(%struct.sja1000_priv* %38, i32 %39, i32 0)
  %41 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %42 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %41, i32 0, i32 2
  %43 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %42, align 8
  %44 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %45 = load i32, i32* @REG_ACCM0, align 4
  %46 = call i32 %43(%struct.sja1000_priv* %44, i32 %45, i32 255)
  %47 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %48 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %47, i32 0, i32 2
  %49 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %48, align 8
  %50 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %51 = load i32, i32* @REG_ACCM1, align 4
  %52 = call i32 %49(%struct.sja1000_priv* %50, i32 %51, i32 255)
  %53 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %54 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %53, i32 0, i32 2
  %55 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %54, align 8
  %56 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %57 = load i32, i32* @REG_ACCM2, align 4
  %58 = call i32 %55(%struct.sja1000_priv* %56, i32 %57, i32 255)
  %59 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %60 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %59, i32 0, i32 2
  %61 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %60, align 8
  %62 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %63 = load i32, i32* @REG_ACCM3, align 4
  %64 = call i32 %61(%struct.sja1000_priv* %62, i32 %63, i32 255)
  %65 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %66 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %65, i32 0, i32 2
  %67 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %66, align 8
  %68 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %69 = load i32, i32* @REG_OCR, align 4
  %70 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %71 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @OCR_MODE_NORMAL, align 4
  %74 = or i32 %72, %73
  %75 = call i32 %67(%struct.sja1000_priv* %68, i32 %69, i32 %74)
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
