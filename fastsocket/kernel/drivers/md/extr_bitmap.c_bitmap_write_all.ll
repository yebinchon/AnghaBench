; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_write_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_write_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@BITMAP_PAGE_NEEDWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_write_all(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i32, align 4
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  %4 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %5 = icmp ne %struct.bitmap* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %8 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %1
  br label %39

13:                                               ; preds = %6
  %14 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %15 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %39

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %24 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %32 = call i32 @set_page_attr(%struct.bitmap* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %38 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %19, %12
  ret void
}

declare dso_local i32 @set_page_attr(%struct.bitmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
