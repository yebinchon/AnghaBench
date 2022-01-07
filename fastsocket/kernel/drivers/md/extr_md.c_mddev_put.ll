; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_mddev_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_mddev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i64, %struct.bio_set*, i32, i32, i32, i32, i32 }
%struct.bio_set = type { i32 }

@all_mddevs_lock = common dso_local global i32 0, align 4
@mddev_delayed_delete = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @mddev_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mddev_put(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.bio_set*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  store %struct.bio_set* null, %struct.bio_set** %3, align 8
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 8
  %6 = call i32 @atomic_dec_and_lock(i32* %5, i32* @all_mddevs_lock)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = load %struct.mddev*, %struct.mddev** %2, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %9
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 6
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load %struct.mddev*, %struct.mddev** %2, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.mddev*, %struct.mddev** %2, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %24
  %30 = load %struct.mddev*, %struct.mddev** %2, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 4
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.mddev*, %struct.mddev** %2, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 3
  %35 = load %struct.bio_set*, %struct.bio_set** %34, align 8
  store %struct.bio_set* %35, %struct.bio_set** %3, align 8
  %36 = load %struct.mddev*, %struct.mddev** %2, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 3
  store %struct.bio_set* null, %struct.bio_set** %37, align 8
  %38 = load %struct.mddev*, %struct.mddev** %2, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %29
  %43 = load %struct.mddev*, %struct.mddev** %2, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 1
  %45 = load i32, i32* @mddev_delayed_delete, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load i32, i32* @md_misc_wq, align 4
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 1
  %50 = call i32 @queue_work(i32 %47, i32* %49)
  br label %54

51:                                               ; preds = %29
  %52 = load %struct.mddev*, %struct.mddev** %2, align 8
  %53 = call i32 @kfree(%struct.mddev* %52)
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %24, %19, %14, %9
  %56 = call i32 @spin_unlock(i32* @all_mddevs_lock)
  %57 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  %58 = icmp ne %struct.bio_set* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  %61 = call i32 @bioset_free(%struct.bio_set* %60)
  br label %62

62:                                               ; preds = %8, %59, %55
  ret void
}

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.mddev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bioset_free(%struct.bio_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
