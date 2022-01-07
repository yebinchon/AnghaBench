; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_brd.c_brd_insert_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_brd.c_brd_insert_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.brd_device = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_SECTORS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.brd_device*, i32)* @brd_insert_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @brd_insert_page(%struct.brd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.brd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.brd_device* %0, %struct.brd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.page* @brd_lookup_page(%struct.brd_device* %9, i32 %10)
  store %struct.page* %11, %struct.page** %7, align 8
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %15, %struct.page** %3, align 8
  br label %77

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @__GFP_HIGHMEM, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.page* @alloc_page(i32 %23)
  store %struct.page* %24, %struct.page** %7, align 8
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  store %struct.page* null, %struct.page** %3, align 8
  br label %77

28:                                               ; preds = %16
  %29 = load i32, i32* @GFP_NOIO, align 4
  %30 = call i64 @radix_tree_preload(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @__free_page(%struct.page* %33)
  store %struct.page* null, %struct.page** %3, align 8
  br label %77

35:                                               ; preds = %28
  %36 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %37 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PAGE_SECTORS_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %43 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %42, i32 0, i32 1
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = call i64 @radix_tree_insert(i32* %43, i32 %44, %struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %35
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = call i32 @__free_page(%struct.page* %49)
  %51 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %52 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %51, i32 0, i32 1
  %53 = load i32, i32* %6, align 4
  %54 = call %struct.page* @radix_tree_lookup(i32* %52, i32 %53)
  store %struct.page* %54, %struct.page** %7, align 8
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = icmp ne %struct.page* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  br label %71

67:                                               ; preds = %35
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %48
  %72 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %73 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = call i32 (...) @radix_tree_preload_end()
  %76 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %76, %struct.page** %3, align 8
  br label %77

77:                                               ; preds = %71, %32, %27, %14
  %78 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %78
}

declare dso_local %struct.page* @brd_lookup_page(%struct.brd_device*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @radix_tree_preload(i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @radix_tree_insert(i32*, i32, %struct.page*) #1

declare dso_local %struct.page* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
