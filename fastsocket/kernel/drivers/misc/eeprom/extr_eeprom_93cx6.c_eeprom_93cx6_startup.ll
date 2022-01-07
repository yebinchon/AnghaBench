; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32, i32 (%struct.eeprom_93cx6*)*, i64, i64, i64, i32 (%struct.eeprom_93cx6*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*)* @eeprom_93cx6_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_93cx6_startup(%struct.eeprom_93cx6* %0) #0 {
  %2 = alloca %struct.eeprom_93cx6*, align 8
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %2, align 8
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %4 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5
  %5 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %4, align 8
  %6 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %7 = call i32 %5(%struct.eeprom_93cx6* %6)
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %9 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %11 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %13 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %15 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %17 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %16, i32 0, i32 1
  %18 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %17, align 8
  %19 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %20 = call i32 %18(%struct.eeprom_93cx6* %19)
  %21 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %22 = call i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %21)
  %23 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %24 = call i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %23)
  ret void
}

declare dso_local i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6*) #1

declare dso_local i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
