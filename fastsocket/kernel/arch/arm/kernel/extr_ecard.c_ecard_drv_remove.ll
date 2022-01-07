; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_drv_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.expansion_card = type { i32*, i32*, i64 }
%struct.ecard_driver = type { i32 (%struct.expansion_card*)* }

@ecard_default_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ecard_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecard_drv_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.expansion_card*, align 8
  %4 = alloca %struct.ecard_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.expansion_card* @ECARD_DEV(%struct.device* %5)
  store %struct.expansion_card* %6, %struct.expansion_card** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ecard_driver* @ECARD_DRV(i32 %9)
  store %struct.ecard_driver* %10, %struct.ecard_driver** %4, align 8
  %11 = load %struct.ecard_driver*, %struct.ecard_driver** %4, align 8
  %12 = getelementptr inbounds %struct.ecard_driver, %struct.ecard_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.expansion_card*)*, i32 (%struct.expansion_card*)** %12, align 8
  %14 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %15 = call i32 %13(%struct.expansion_card* %14)
  %16 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %17 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %19 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %18, i32 0, i32 1
  store i32* @ecard_default_ops, i32** %19, align 8
  %20 = call i32 (...) @barrier()
  %21 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %22 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  ret i32 0
}

declare dso_local %struct.expansion_card* @ECARD_DEV(%struct.device*) #1

declare dso_local %struct.ecard_driver* @ECARD_DRV(i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
