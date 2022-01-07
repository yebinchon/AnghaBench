; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pci.c_ssb_pci_read32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pci.c_ssb_pci_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i64, %struct.ssb_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, i64)* @ssb_pci_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pci_read32(%struct.ssb_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %8 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %7, i32 0, i32 0
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %8, align 8
  store %struct.ssb_bus* %9, %struct.ssb_bus** %6, align 8
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %11 = call i32 @ssb_pci_assert_buspower(%struct.ssb_bus* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 1
  %18 = load %struct.ssb_device*, %struct.ssb_device** %17, align 8
  %19 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %20 = icmp ne %struct.ssb_device* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %26 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %27 = call i32 @ssb_pci_switch_core(%struct.ssb_bus* %25, %struct.ssb_device* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %39

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %34 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread32(i64 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %30, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ssb_pci_assert_buspower(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_pci_switch_core(%struct.ssb_bus*, %struct.ssb_device*) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
