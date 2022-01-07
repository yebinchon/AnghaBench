; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_shm_read16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_shm_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_SHM_SHARED = common dso_local global i64 0, align 8
@B43legacy_MMIO_SHM_DATA_UNALIGNED = common dso_local global i32 0, align 4
@B43legacy_MMIO_SHM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @b43legacy_shm_read16(%struct.b43legacy_wldev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @B43legacy_SHM_SHARED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = and i64 %13, 1
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @B43legacy_WARN_ON(i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = and i64 %18, 3
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = ashr i64 %24, 2
  %26 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %22, i64 %23, i64 %25)
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %28 = load i32, i32* @B43legacy_MMIO_SHM_DATA_UNALIGNED, align 4
  %29 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %4, align 8
  br label %43

31:                                               ; preds = %12
  %32 = load i64, i64* %7, align 8
  %33 = ashr i64 %32, 2
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %35, i64 %36, i64 %37)
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %40 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %41 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %39, i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %34, %21
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev*, i64, i64) #1

declare dso_local i64 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
