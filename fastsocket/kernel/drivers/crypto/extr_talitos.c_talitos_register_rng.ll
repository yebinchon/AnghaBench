; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_register_rng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_register_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@talitos_rng_init = common dso_local global i32 0, align 4
@talitos_rng_data_present = common dso_local global i32 0, align 4
@talitos_rng_data_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @talitos_register_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_register_rng(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.talitos_private*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %4)
  store %struct.talitos_private* %5, %struct.talitos_private** %3, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call i32 @dev_driver_string(%struct.device* %6)
  %8 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %9 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @talitos_rng_init, align 4
  %12 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %13 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @talitos_rng_data_present, align 4
  %16 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %17 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @talitos_rng_data_read, align 4
  %20 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %21 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = ptrtoint %struct.device* %23 to i64
  %25 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %26 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %29 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %28, i32 0, i32 0
  %30 = call i32 @hwrng_register(%struct.TYPE_2__* %29)
  ret i32 %30
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_driver_string(%struct.device*) #1

declare dso_local i32 @hwrng_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
