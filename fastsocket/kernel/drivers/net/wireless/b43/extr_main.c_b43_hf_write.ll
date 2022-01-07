; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_hf_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_hf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_HOSTF1 = common dso_local global i32 0, align 4
@B43_SHM_SH_HOSTF2 = common dso_local global i32 0, align 4
@B43_SHM_SH_HOSTF3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_hf_write(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = and i64 %9, 65535
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 4294901760
  %15 = lshr i64 %14, 16
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 281470681743360
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load i32, i32* @B43_SHM_SHARED, align 4
  %24 = load i32, i32* @B43_SHM_SH_HOSTF1, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @b43_shm_write16(%struct.b43_wldev* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load i32, i32* @B43_SHM_SHARED, align 4
  %29 = load i32, i32* @B43_SHM_SH_HOSTF2, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @b43_shm_write16(%struct.b43_wldev* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @B43_SHM_SHARED, align 4
  %34 = load i32, i32* @B43_SHM_SH_HOSTF3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @b43_shm_write16(%struct.b43_wldev* %32, i32 %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
