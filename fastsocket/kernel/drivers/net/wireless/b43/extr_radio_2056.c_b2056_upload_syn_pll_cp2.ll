; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b2056_upload_syn_pll_cp2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b2056_upload_syn_pll_cp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b2056_inittabs_pts = type { %struct.b2056_inittab_entry* }
%struct.b2056_inittab_entry = type { i32, i32 }
%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@b2056_inittabs = common dso_local global %struct.b2056_inittabs_pts* null, align 8
@B2056_SYN_PLL_CP2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2056_upload_syn_pll_cp2(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b2056_inittabs_pts*, align 8
  %6 = alloca %struct.b2056_inittab_entry*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** @b2056_inittabs, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.b2056_inittabs_pts* %11)
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @B43_WARN_ON(i32 1)
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** @b2056_inittabs, align 8
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %17, i64 %21
  store %struct.b2056_inittabs_pts* %22, %struct.b2056_inittabs_pts** %5, align 8
  %23 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %5, align 8
  %24 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %23, i32 0, i32 0
  %25 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %24, align 8
  %26 = load i64, i64* @B2056_SYN_PLL_CP2, align 8
  %27 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %25, i64 %26
  store %struct.b2056_inittab_entry* %27, %struct.b2056_inittab_entry** %6, align 8
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i64, i64* @B2056_SYN_PLL_CP2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %6, align 8
  %34 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %40

36:                                               ; preds = %16
  %37 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %6, align 8
  %38 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  %42 = call i32 @b43_radio_write(%struct.b43_wldev* %28, i64 %29, i32 %41)
  br label %43

43:                                               ; preds = %40, %14
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.b2056_inittabs_pts*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
