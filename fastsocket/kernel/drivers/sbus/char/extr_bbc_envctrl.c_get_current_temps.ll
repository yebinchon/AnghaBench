; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_get_current_temps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_get_current_temps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_cpu_temperature = type { i64, i64, i32, i32, i64, i64 }

@MAX1617_AMB_TEMP = common dso_local global i32 0, align 4
@MAX1617_CPU_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_cpu_temperature*)* @get_current_temps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_current_temps(%struct.bbc_cpu_temperature* %0) #0 {
  %2 = alloca %struct.bbc_cpu_temperature*, align 8
  store %struct.bbc_cpu_temperature* %0, %struct.bbc_cpu_temperature** %2, align 8
  %3 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %4 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %7 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %6, i32 0, i32 5
  store i64 %5, i64* %7, align 8
  %8 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %9 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %12 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %11, i32 0, i32 0
  %13 = bitcast i64* %12 to i8*
  %14 = load i32, i32* @MAX1617_AMB_TEMP, align 4
  %15 = call i32 @bbc_i2c_readb(i32 %10, i8* %13, i32 %14)
  %16 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %17 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %20 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  %21 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %22 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %2, align 8
  %25 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %24, i32 0, i32 1
  %26 = bitcast i64* %25 to i8*
  %27 = load i32, i32* @MAX1617_CPU_TEMP, align 4
  %28 = call i32 @bbc_i2c_readb(i32 %23, i8* %26, i32 %27)
  ret void
}

declare dso_local i32 @bbc_i2c_readb(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
