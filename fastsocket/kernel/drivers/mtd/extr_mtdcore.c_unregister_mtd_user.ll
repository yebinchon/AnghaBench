; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdcore.c_unregister_mtd_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdcore.c_unregister_mtd_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_notifier = type { i32, i32 (i64)* }

@mtd_table_mutex = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MAX_MTD_DEVICES = common dso_local global i32 0, align 4
@mtd_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_mtd_user(%struct.mtd_notifier* %0) #0 {
  %2 = alloca %struct.mtd_notifier*, align 8
  %3 = alloca i32, align 4
  store %struct.mtd_notifier* %0, %struct.mtd_notifier** %2, align 8
  %4 = call i32 @mutex_lock(i32* @mtd_table_mutex)
  %5 = load i32, i32* @THIS_MODULE, align 4
  %6 = call i32 @module_put(i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_MTD_DEVICES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i64*, i64** @mtd_table, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.mtd_notifier*, %struct.mtd_notifier** %2, align 8
  %20 = getelementptr inbounds %struct.mtd_notifier, %struct.mtd_notifier* %19, i32 0, i32 1
  %21 = load i32 (i64)*, i32 (i64)** %20, align 8
  %22 = load i64*, i64** @mtd_table, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 %21(i64 %26)
  br label %28

28:                                               ; preds = %18, %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load %struct.mtd_notifier*, %struct.mtd_notifier** %2, align 8
  %34 = getelementptr inbounds %struct.mtd_notifier, %struct.mtd_notifier* %33, i32 0, i32 0
  %35 = call i32 @list_del(i32* %34)
  %36 = call i32 @mutex_unlock(i32* @mtd_table_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
