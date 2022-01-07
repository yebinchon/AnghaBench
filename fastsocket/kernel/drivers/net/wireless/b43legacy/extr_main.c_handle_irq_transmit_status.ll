; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_handle_irq_transmit_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_handle_irq_transmit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }
%struct.b43legacy_txstatus = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@B43legacy_MMIO_XMITSTAT_0 = common dso_local global i32 0, align 4
@B43legacy_MMIO_XMITSTAT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @handle_irq_transmit_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_irq_transmit_status(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43legacy_txstatus, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  br label %7

7:                                                ; preds = %1, %15
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = load i32, i32* @B43legacy_MMIO_XMITSTAT_0, align 4
  %10 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %73

15:                                               ; preds = %7
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %17 = load i32, i32* @B43legacy_MMIO_XMITSTAT_1, align 4
  %18 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 16
  %21 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 65535
  %24 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 16711680
  %27 = ashr i32 %26, 16
  %28 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 65535
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 61440
  %33 = ashr i32 %32, 12
  %34 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 3840
  %37 = ashr i32 %36, 8
  %38 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 28
  %41 = ashr i32 %40, 2
  %42 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 6
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 7
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 32
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %6, i32 0, i32 9
  store i32 %69, i32* %70, align 4
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %72 = call i32 @b43legacy_handle_txstatus(%struct.b43legacy_wldev* %71, %struct.b43legacy_txstatus* %6)
  br label %7

73:                                               ; preds = %14
  ret void
}

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_handle_txstatus(%struct.b43legacy_wldev*, %struct.b43legacy_txstatus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
