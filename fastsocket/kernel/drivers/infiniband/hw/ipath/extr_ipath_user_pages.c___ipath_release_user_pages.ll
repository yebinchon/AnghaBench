; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_pages.c___ipath_release_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_pages.c___ipath_release_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@MM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%lu/%lu put_page %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i64, i32)* @__ipath_release_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipath_release_user_pages(%struct.page** %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %35, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load i32, i32* @MM, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.page**, %struct.page*** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.page*, %struct.page** %16, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = call i32 @ipath_cdbg(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15, %struct.page* %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load %struct.page**, %struct.page*** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %25
  %27 = load %struct.page*, %struct.page** %26, align 8
  %28 = call i32 @set_page_dirty_lock(%struct.page* %27)
  br label %29

29:                                               ; preds = %23, %12
  %30 = load %struct.page**, %struct.page*** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.page*, %struct.page** %30, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = call i32 @put_page(%struct.page* %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %8

38:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, i64, %struct.page*) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
