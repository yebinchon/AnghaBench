; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_free_gatt_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_free_gatt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { i64, i32, i8* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_bridge_data*)* @uninorth_free_gatt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_free_gatt_table(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca %struct.agp_bridge_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %2, align 8
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %9 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.TYPE_2__* @A_SIZE_32(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %16 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vunmap(i32 %17)
  %19 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %20 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 1, %25
  %27 = mul nsw i32 %24, %26
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %23, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.page* @virt_to_page(i8* %31)
  store %struct.page* %32, %struct.page** %7, align 8
  br label %33

33:                                               ; preds = %41, %1
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.page* @virt_to_page(i8* %35)
  %37 = icmp ule %struct.page* %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i32 @ClearPageReserved(%struct.page* %39)
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 1
  store %struct.page* %43, %struct.page** %7, align 8
  br label %33

44:                                               ; preds = %33
  %45 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %46 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @free_pages(i64 %47, i32 %48)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @A_SIZE_32(i8*) #1

declare dso_local i32 @vunmap(i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @ClearPageReserved(%struct.page*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
