; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_rate_memory_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_rate_memory_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_OFDM_RATE_6MB = common dso_local global i32 0, align 4
@B43_OFDM_RATE_12MB = common dso_local global i32 0, align 4
@B43_OFDM_RATE_18MB = common dso_local global i32 0, align 4
@B43_OFDM_RATE_24MB = common dso_local global i32 0, align 4
@B43_OFDM_RATE_36MB = common dso_local global i32 0, align 4
@B43_OFDM_RATE_48MB = common dso_local global i32 0, align 4
@B43_OFDM_RATE_54MB = common dso_local global i32 0, align 4
@B43_CCK_RATE_1MB = common dso_local global i32 0, align 4
@B43_CCK_RATE_2MB = common dso_local global i32 0, align 4
@B43_CCK_RATE_5MB = common dso_local global i32 0, align 4
@B43_CCK_RATE_11MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_rate_memory_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_rate_memory_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %49 [
    i32 134, label %7
    i32 132, label %7
    i32 128, label %7
    i32 129, label %7
    i32 131, label %7
    i32 130, label %7
    i32 133, label %36
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load i32, i32* @B43_OFDM_RATE_6MB, align 4
  %10 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %8, i32 %9, i32 1)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_OFDM_RATE_12MB, align 4
  %13 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %11, i32 %12, i32 1)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* @B43_OFDM_RATE_18MB, align 4
  %16 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %14, i32 %15, i32 1)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_OFDM_RATE_24MB, align 4
  %19 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %17, i32 %18, i32 1)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_OFDM_RATE_36MB, align 4
  %22 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %20, i32 %21, i32 1)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B43_OFDM_RATE_48MB, align 4
  %25 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %23, i32 %24, i32 1)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i32, i32* @B43_OFDM_RATE_54MB, align 4
  %28 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %26, i32 %27, i32 1)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 134
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  br label %51

35:                                               ; preds = %7
  br label %36

36:                                               ; preds = %1, %35
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_CCK_RATE_1MB, align 4
  %39 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %37, i32 %38, i32 0)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* @B43_CCK_RATE_2MB, align 4
  %42 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %40, i32 %41, i32 0)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_CCK_RATE_5MB, align 4
  %45 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %43, i32 %44, i32 0)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = load i32, i32* @B43_CCK_RATE_11MB, align 4
  %48 = call i32 @b43_rate_memory_write(%struct.b43_wldev* %46, i32 %47, i32 0)
  br label %51

49:                                               ; preds = %1
  %50 = call i32 @B43_WARN_ON(i32 1)
  br label %51

51:                                               ; preds = %49, %36, %34
  ret void
}

declare dso_local i32 @b43_rate_memory_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
