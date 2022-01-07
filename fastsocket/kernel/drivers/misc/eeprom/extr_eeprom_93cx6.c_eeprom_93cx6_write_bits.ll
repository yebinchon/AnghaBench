; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_write_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_write_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32, i32 (%struct.eeprom_93cx6*)*, i64, i32 (%struct.eeprom_93cx6*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*, i32, i32)* @eeprom_93cx6_write_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eeprom_93cx6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %9 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %8, i32 0, i32 3
  %10 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %9, align 8
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %12 = call i32 %10(%struct.eeprom_93cx6* %11)
  %13 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %14 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %16 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %42, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub i32 %23, 1
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %32 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %34 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %33, i32 0, i32 1
  %35 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %34, align 8
  %36 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %37 = call i32 %35(%struct.eeprom_93cx6* %36)
  %38 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %39 = call i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %38)
  %40 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %41 = call i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %40)
  br label %42

42:                                               ; preds = %21
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %47 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %49 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %48, i32 0, i32 1
  %50 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %49, align 8
  %51 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %52 = call i32 %50(%struct.eeprom_93cx6* %51)
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
