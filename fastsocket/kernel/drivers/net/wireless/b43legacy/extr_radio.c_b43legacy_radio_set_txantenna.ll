; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_set_txantenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_set_txantenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_radio_set_txantenna(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %9 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %10 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %8, i32 %9, i32 34)
  %11 = and i32 %10, 64767
  store i32 %11, i32* %5, align 4
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %13 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %12, i32 %13, i32 34, i32 %16)
  %18 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %19 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %20 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %18, i32 %19, i32 936)
  %21 = and i32 %20, 64767
  store i32 %21, i32* %5, align 4
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %23 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %22, i32 %23, i32 936, i32 %26)
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %30 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %28, i32 %29, i32 84)
  %31 = and i32 %30, 64767
  store i32 %31, i32* %5, align 4
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %33 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %32, i32 %33, i32 84, i32 %36)
  ret void
}

declare dso_local i32 @b43legacy_shm_read16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
