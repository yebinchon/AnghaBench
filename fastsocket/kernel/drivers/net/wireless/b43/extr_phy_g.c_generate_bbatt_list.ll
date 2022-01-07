; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_generate_bbatt_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_generate_bbatt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_bbatt = type { i32 }
%struct.b43_wldev = type { i32 }
%struct.b43_bbatt_list = type { i32, i64, i32, %struct.b43_bbatt* }

@generate_bbatt_list.bbatt_0 = internal constant [9 x %struct.b43_bbatt] [%struct.b43_bbatt zeroinitializer, %struct.b43_bbatt { i32 1 }, %struct.b43_bbatt { i32 2 }, %struct.b43_bbatt { i32 3 }, %struct.b43_bbatt { i32 4 }, %struct.b43_bbatt { i32 5 }, %struct.b43_bbatt { i32 6 }, %struct.b43_bbatt { i32 7 }, %struct.b43_bbatt { i32 8 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_bbatt_list*)* @generate_bbatt_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_bbatt_list(%struct.b43_wldev* %0, %struct.b43_bbatt_list* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_bbatt_list*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_bbatt_list* %1, %struct.b43_bbatt_list** %4, align 8
  %5 = load %struct.b43_bbatt_list*, %struct.b43_bbatt_list** %4, align 8
  %6 = getelementptr inbounds %struct.b43_bbatt_list, %struct.b43_bbatt_list* %5, i32 0, i32 3
  store %struct.b43_bbatt* getelementptr inbounds ([9 x %struct.b43_bbatt], [9 x %struct.b43_bbatt]* @generate_bbatt_list.bbatt_0, i64 0, i64 0), %struct.b43_bbatt** %6, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.b43_bbatt* getelementptr inbounds ([9 x %struct.b43_bbatt], [9 x %struct.b43_bbatt]* @generate_bbatt_list.bbatt_0, i64 0, i64 0))
  %8 = load %struct.b43_bbatt_list*, %struct.b43_bbatt_list** %4, align 8
  %9 = getelementptr inbounds %struct.b43_bbatt_list, %struct.b43_bbatt_list* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.b43_bbatt_list*, %struct.b43_bbatt_list** %4, align 8
  %11 = getelementptr inbounds %struct.b43_bbatt_list, %struct.b43_bbatt_list* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.b43_bbatt_list*, %struct.b43_bbatt_list** %4, align 8
  %13 = getelementptr inbounds %struct.b43_bbatt_list, %struct.b43_bbatt_list* %12, i32 0, i32 0
  store i32 8, i32* %13, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.b43_bbatt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
