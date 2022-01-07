; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_shm_write16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_shm_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_SHM_SHARED = common dso_local global i64 0, align 8
@B43_MMIO_SHM_DATA_UNALIGNED = common dso_local global i32 0, align 4
@B43_MMIO_SHM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_shm_write16(%struct.b43_wldev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @B43_SHM_SHARED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = and i64 %13, 1
  %15 = call i32 @B43_WARN_ON(i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 3
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = ashr i64 %22, 2
  %24 = call i32 @b43_shm_control_word(%struct.b43_wldev* %20, i64 %21, i64 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = load i32, i32* @B43_MMIO_SHM_DATA_UNALIGNED, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @b43_write16(%struct.b43_wldev* %25, i32 %26, i64 %27)
  br label %41

29:                                               ; preds = %12
  %30 = load i64, i64* %7, align 8
  %31 = ashr i64 %30, 2
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %29, %4
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @b43_shm_control_word(%struct.b43_wldev* %33, i64 %34, i64 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %38 = load i32, i32* @B43_MMIO_SHM_DATA, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @b43_write16(%struct.b43_wldev* %37, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @B43_WARN_ON(i64) #1

declare dso_local i32 @b43_shm_control_word(%struct.b43_wldev*, i64, i64) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
