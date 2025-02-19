; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_km_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_km_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpages = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpages*, %struct.page**, i64*, i32*)* @km_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @km_get_page(%struct.dpages* %0, %struct.page** %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.dpages*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  store %struct.dpages* %0, %struct.dpages** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.dpages*, %struct.dpages** %5, align 8
  %10 = getelementptr inbounds %struct.dpages, %struct.dpages* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.page* @virt_to_page(i32 %11)
  %13 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page* %12, %struct.page** %13, align 8
  %14 = load %struct.dpages*, %struct.dpages** %5, align 8
  %15 = getelementptr inbounds %struct.dpages, %struct.dpages* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = load %struct.dpages*, %struct.dpages** %5, align 8
  %20 = getelementptr inbounds %struct.dpages, %struct.dpages* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = sub i64 %18, %22
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  ret void
}

declare dso_local %struct.page* @virt_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
