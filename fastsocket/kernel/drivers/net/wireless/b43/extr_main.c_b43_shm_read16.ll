; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_shm_read16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_shm_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_SHM_SHARED = common dso_local global i64 0, align 8
@B43_MMIO_SHM_DATA_UNALIGNED = common dso_local global i32 0, align 4
@B43_MMIO_SHM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @b43_shm_read16(%struct.b43_wldev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @B43_SHM_SHARED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = and i64 %12, 1
  %14 = call i32 @B43_WARN_ON(i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = and i64 %15, 3
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = ashr i64 %21, 2
  %23 = call i32 @b43_shm_control_word(%struct.b43_wldev* %19, i64 %20, i64 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %25 = load i32, i32* @B43_MMIO_SHM_DATA_UNALIGNED, align 4
  %26 = call i64 @b43_read16(%struct.b43_wldev* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  br label %38

27:                                               ; preds = %11
  %28 = load i64, i64* %6, align 8
  %29 = ashr i64 %28, 2
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @b43_shm_control_word(%struct.b43_wldev* %31, i64 %32, i64 %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %36 = load i32, i32* @B43_MMIO_SHM_DATA, align 4
  %37 = call i64 @b43_read16(%struct.b43_wldev* %35, i32 %36)
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %30, %18
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local i32 @B43_WARN_ON(i64) #1

declare dso_local i32 @b43_shm_control_word(%struct.b43_wldev*, i64, i64) #1

declare dso_local i64 @b43_read16(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
