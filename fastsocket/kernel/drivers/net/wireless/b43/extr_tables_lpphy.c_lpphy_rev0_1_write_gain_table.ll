; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_rev0_1_write_gain_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_rev0_1_write_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpphy_tx_gain_table_entry = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, %struct.lpphy_tx_gain_table_entry*)* @lpphy_rev0_1_write_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_rev0_1_write_gain_table(%struct.b43_wldev* %0, i32 %1, %struct.lpphy_tx_gain_table_entry* byval(%struct.lpphy_tx_gain_table_entry) align 8 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 2
  %12 = zext i1 %11 to i32
  %13 = call i32 @B43_WARN_ON(i32 %12)
  %14 = getelementptr inbounds %struct.lpphy_tx_gain_table_entry, %struct.lpphy_tx_gain_table_entry* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %15, 11
  store i32 %16, i32* %6, align 4
  %17 = getelementptr inbounds %struct.lpphy_tx_gain_table_entry, %struct.lpphy_tx_gain_table_entry* %2, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 7
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = getelementptr inbounds %struct.lpphy_tx_gain_table_entry, %struct.lpphy_tx_gain_table_entry* %2, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = getelementptr inbounds %struct.lpphy_tx_gain_table_entry, %struct.lpphy_tx_gain_table_entry* %2, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 192, %32
  %34 = call i32 @B43_LPTAB32(i32 10, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @b43_lptab_write(%struct.b43_wldev* %31, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.lpphy_tx_gain_table_entry, %struct.lpphy_tx_gain_table_entry* %2, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 20
  store i32 %39, i32* %6, align 4
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 320, %41
  %43 = call i32 @B43_LPTAB32(i32 10, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @b43_lptab_write(%struct.b43_wldev* %40, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_lptab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LPTAB32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
