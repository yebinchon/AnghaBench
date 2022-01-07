; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_set_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i32 }

@PCAP_REGISTER_READ_OP_BIT = common dso_local global i32 0, align 4
@PCAP_REGISTER_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@PCAP_REGISTER_VALUE_MASK = common dso_local global i32 0, align 4
@PCAP_REGISTER_WRITE_OP_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ezx_pcap_set_bits(%struct.pcap_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pcap_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcap_chip* %0, %struct.pcap_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @PCAP_REGISTER_READ_OP_BIT, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PCAP_REGISTER_ADDRESS_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %17 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %20 = call i32 @ezx_pcap_putget(%struct.pcap_chip* %19, i32* %10)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %44

24:                                               ; preds = %4
  %25 = load i32, i32* @PCAP_REGISTER_VALUE_MASK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @PCAP_REGISTER_WRITE_OP_BIT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PCAP_REGISTER_ADDRESS_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %43 = call i32 @ezx_pcap_putget(%struct.pcap_chip* %42, i32* %10)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %24, %23
  %45 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %46 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ezx_pcap_putget(%struct.pcap_chip*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
