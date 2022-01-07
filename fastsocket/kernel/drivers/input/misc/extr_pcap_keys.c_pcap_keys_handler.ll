; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_pcap_keys.c_pcap_keys_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_pcap_keys.c_pcap_keys_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_keys = type { i32, i32 }

@PCAP_REG_PSTAT = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@KEY_HP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcap_keys_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_keys_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_keys*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pcap_keys*
  store %struct.pcap_keys* %9, %struct.pcap_keys** %5, align 8
  %10 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %11 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @irq_to_pcap(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %16 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCAP_REG_PSTAT, align 4
  %19 = call i32 @ezx_pcap_read(i32 %17, i32 %18, i32* %7)
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %45 [
    i32 128, label %25
    i32 129, label %35
  ]

25:                                               ; preds = %2
  %26 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %27 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KEY_POWER, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @input_report_key(i32 %28, i32 %29, i32 %33)
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %37 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KEY_HP, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @input_report_key(i32 %38, i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %2, %35, %25
  %46 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %47 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @input_sync(i32 %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @irq_to_pcap(i32, i32) #1

declare dso_local i32 @ezx_pcap_read(i32, i32, i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
