; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_rdev_set_badblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_rdev_set_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.TYPE_2__*, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@MD_CHANGE_CLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdev_set_badblocks(%struct.md_rdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @md_set_badblocks(i32* %30, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sysfs_notify_dirent_safe(i32 %39)
  %41 = load i32, i32* @MD_CHANGE_CLEAN, align 4
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @set_bit(i32 %41, i32* %45)
  %47 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @md_wakeup_thread(i32 %51)
  br label %53

53:                                               ; preds = %36, %28
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @md_set_badblocks(i32*, i32, i32, i32) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
