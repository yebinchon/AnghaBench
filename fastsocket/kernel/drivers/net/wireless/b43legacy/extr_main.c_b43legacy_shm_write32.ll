; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_shm_write32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_shm_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_SHM_SHARED = common dso_local global i64 0, align 8
@B43legacy_MMIO_SHM_DATA_UNALIGNED = common dso_local global i32 0, align 4
@B43legacy_MMIO_SHM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_shm_write32(%struct.b43legacy_wldev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @B43legacy_SHM_SHARED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = and i64 %13, 1
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @B43legacy_WARN_ON(i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = and i64 %18, 3
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %12
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = ashr i64 %24, 2
  %26 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %22, i64 %23, i64 %25)
  %27 = call i32 (...) @mmiowb()
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %29 = load i32, i32* @B43legacy_MMIO_SHM_DATA_UNALIGNED, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 65535
  %33 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %28, i32 %29, i32 %32)
  %34 = call i32 (...) @mmiowb()
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = ashr i64 %37, 2
  %39 = add nsw i64 %38, 1
  %40 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %35, i64 %36, i64 %39)
  %41 = call i32 (...) @mmiowb()
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %43 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 65535
  %46 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %42, i32 %43, i32 %45)
  br label %60

47:                                               ; preds = %12
  %48 = load i64, i64* %7, align 8
  %49 = ashr i64 %48, 2
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %47, %4
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %51, i64 %52, i64 %53)
  %55 = call i32 (...) @mmiowb()
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %57 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %50, %21
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev*, i64, i64) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
