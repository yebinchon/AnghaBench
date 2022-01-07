; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_octagon-5066.c_oct5066_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_octagon-5066.c_oct5066_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }

@WINDOW_SHIFT = common dso_local global i64 0, align 8
@page_n_dev = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i64)* @oct5066_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oct5066_page(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.map_info*, %struct.map_info** %3, align 8
  %7 = getelementptr inbounds %struct.map_info, %struct.map_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @WINDOW_SHIFT, align 8
  %11 = lshr i64 %9, %10
  %12 = or i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @page_n_dev, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.map_info*, %struct.map_info** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @__oct5066_page(%struct.map_info* %17, i64 %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @__oct5066_page(%struct.map_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
