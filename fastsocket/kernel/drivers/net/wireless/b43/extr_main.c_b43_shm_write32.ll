; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_shm_write32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_shm_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_SHM_SHARED = common dso_local global i64 0, align 8
@B43_MMIO_SHM_DATA_UNALIGNED = common dso_local global i32 0, align 4
@B43_MMIO_SHM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_shm_write32(%struct.b43_wldev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @B43_SHM_SHARED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = and i64 %13, 1
  %15 = call i32 @B43_WARN_ON(i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 3
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = ashr i64 %22, 2
  %24 = call i32 @b43_shm_control_word(%struct.b43_wldev* %20, i64 %21, i64 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = load i32, i32* @B43_MMIO_SHM_DATA_UNALIGNED, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 65535
  %29 = call i32 @b43_write16(%struct.b43_wldev* %25, i32 %26, i32 %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = ashr i64 %32, 2
  %34 = add nsw i64 %33, 1
  %35 = call i32 @b43_shm_control_word(%struct.b43_wldev* %30, i64 %31, i64 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %37 = load i32, i32* @B43_MMIO_SHM_DATA, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 65535
  %41 = call i32 @b43_write16(%struct.b43_wldev* %36, i32 %37, i32 %40)
  br label %54

42:                                               ; preds = %12
  %43 = load i64, i64* %7, align 8
  %44 = ashr i64 %43, 2
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %42, %4
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @b43_shm_control_word(%struct.b43_wldev* %46, i64 %47, i64 %48)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %51 = load i32, i32* @B43_MMIO_SHM_DATA, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @b43_write32(%struct.b43_wldev* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %19
  ret void
}

declare dso_local i32 @B43_WARN_ON(i64) #1

declare dso_local i32 @b43_shm_control_word(%struct.b43_wldev*, i64, i64) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
