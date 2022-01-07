; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.bitmap* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bitmap = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BITMAP_STALE = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@BITMAP_WRITE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_load(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.mddev*, %struct.mddev** %2, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 6
  %10 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  store %struct.bitmap* %10, %struct.bitmap** %6, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %12 = icmp ne %struct.bitmap* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %96

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %21, %14
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.mddev*, %struct.mddev** %2, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @bitmap_start_sync(%struct.bitmap* %22, i64 %23, i64* %7, i32 0)
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %30 = call i32 @bitmap_close_sync(%struct.bitmap* %29)
  %31 = load %struct.mddev*, %struct.mddev** %2, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %37 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mddev*, %struct.mddev** %2, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35, %28
  %44 = load %struct.mddev*, %struct.mddev** %2, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %43, %35
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @bitmap_init_from_disk(%struct.bitmap* %52, i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load %struct.mddev*, %struct.mddev** %2, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %96

62:                                               ; preds = %47
  %63 = load i32, i32* @BITMAP_STALE, align 4
  %64 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %65 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %64, i32 0, i32 1
  %66 = call i32 @clear_bit(i32 %63, i32* %65)
  %67 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %68 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %69 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %67, i32* %71)
  %73 = load %struct.mddev*, %struct.mddev** %2, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mddev*, %struct.mddev** %2, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.mddev*, %struct.mddev** %2, align 8
  %82 = getelementptr inbounds %struct.mddev, %struct.mddev* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @md_wakeup_thread(%struct.TYPE_6__* %83)
  %85 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %86 = call i32 @bitmap_update_sb(%struct.bitmap* %85)
  %87 = load i32, i32* @BITMAP_WRITE_ERROR, align 4
  %88 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %89 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %88, i32 0, i32 1
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %62
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %62
  br label %96

96:                                               ; preds = %95, %61, %13
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @bitmap_start_sync(%struct.bitmap*, i64, i64*, i32) #1

declare dso_local i32 @bitmap_close_sync(%struct.bitmap*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_init_from_disk(%struct.bitmap*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(%struct.TYPE_6__*) #1

declare dso_local i32 @bitmap_update_sb(%struct.bitmap*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
