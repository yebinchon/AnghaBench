; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_vmware_balloon.c_vmballoon_reserve_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_vmware_balloon.c_vmballoon_reserve_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i64, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32 }

@VMW_PAGE_ALLOC_CANSLEEP = common dso_local global i32 0, align 4
@VMW_PAGE_ALLOC_NOSLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VMW_BALLOON_MAX_REFUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmballoon*, i32)* @vmballoon_reserve_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmballoon_reserve_page(%struct.vmballoon* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmballoon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vmballoon* %0, %struct.vmballoon** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %94, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %14 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @STATS_INC(i32 %16)
  br label %24

18:                                               ; preds = %9
  %19 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %20 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @STATS_INC(i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @VMW_PAGE_ALLOC_CANSLEEP, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @VMW_PAGE_ALLOC_NOSLEEP, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.page* @alloc_page(i32 %33)
  store %struct.page* %34, %struct.page** %6, align 8
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = icmp ne %struct.page* %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %42 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @STATS_INC(i32 %44)
  br label %52

46:                                               ; preds = %37
  %47 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %48 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @STATS_INC(i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %108

55:                                               ; preds = %31
  %56 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i32 @page_to_pfn(%struct.page* %57)
  %59 = call i32 @vmballoon_send_lock_page(%struct.vmballoon* %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %64 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @STATS_INC(i32 %66)
  %68 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %69 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = call i32 @__free_page(%struct.page* %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %108

77:                                               ; preds = %62
  %78 = load %struct.page*, %struct.page** %6, align 8
  %79 = getelementptr inbounds %struct.page, %struct.page* %78, i32 0, i32 0
  %80 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %81 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %80, i32 0, i32 3
  %82 = call i32 @list_add(i32* %79, i32* %81)
  %83 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %84 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* @VMW_BALLOON_MAX_REFUSED, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %108

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %55
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %9, label %98

98:                                               ; preds = %94
  %99 = load %struct.page*, %struct.page** %6, align 8
  %100 = getelementptr inbounds %struct.page, %struct.page* %99, i32 0, i32 0
  %101 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %102 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %101, i32 0, i32 2
  %103 = call i32 @list_add(i32* %100, i32* %102)
  %104 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %105 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %98, %89, %72, %52
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @STATS_INC(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @vmballoon_send_lock_page(%struct.vmballoon*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
