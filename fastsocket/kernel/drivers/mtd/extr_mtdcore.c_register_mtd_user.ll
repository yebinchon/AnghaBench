; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdcore.c_register_mtd_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdcore.c_register_mtd_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_notifier = type { i32 (i64)*, i32 }

@mtd_table_mutex = common dso_local global i32 0, align 4
@mtd_notifiers = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MAX_MTD_DEVICES = common dso_local global i32 0, align 4
@mtd_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_mtd_user(%struct.mtd_notifier* %0) #0 {
  %2 = alloca %struct.mtd_notifier*, align 8
  %3 = alloca i32, align 4
  store %struct.mtd_notifier* %0, %struct.mtd_notifier** %2, align 8
  %4 = call i32 @mutex_lock(i32* @mtd_table_mutex)
  %5 = load %struct.mtd_notifier*, %struct.mtd_notifier** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_notifier, %struct.mtd_notifier* %5, i32 0, i32 1
  %7 = call i32 @list_add(i32* %6, i32* @mtd_notifiers)
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = call i32 @__module_get(i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_MTD_DEVICES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i64*, i64** @mtd_table, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.mtd_notifier*, %struct.mtd_notifier** %2, align 8
  %23 = getelementptr inbounds %struct.mtd_notifier, %struct.mtd_notifier* %22, i32 0, i32 0
  %24 = load i32 (i64)*, i32 (i64)** %23, align 8
  %25 = load i64*, i64** @mtd_table, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 %24(i64 %29)
  br label %31

31:                                               ; preds = %21, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %10

35:                                               ; preds = %10
  %36 = call i32 @mutex_unlock(i32* @mtd_table_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
