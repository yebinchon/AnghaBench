; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.h_ubi_scan_move_to_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.h_ubi_scan_move_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_scan_volume = type { i32 }
%struct.ubi_scan_leb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_scan_volume*, %struct.ubi_scan_leb*, %struct.list_head*)* @ubi_scan_move_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubi_scan_move_to_list(%struct.ubi_scan_volume* %0, %struct.ubi_scan_leb* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.ubi_scan_volume*, align 8
  %5 = alloca %struct.ubi_scan_leb*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.ubi_scan_volume* %0, %struct.ubi_scan_volume** %4, align 8
  store %struct.ubi_scan_leb* %1, %struct.ubi_scan_leb** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %5, align 8
  %8 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %4, align 8
  %11 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %10, i32 0, i32 0
  %12 = call i32 @rb_erase(i32* %9, i32* %11)
  %13 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %5, align 8
  %14 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.list_head*, %struct.list_head** %6, align 8
  %17 = call i32 @list_add_tail(i32* %15, %struct.list_head* %16)
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
