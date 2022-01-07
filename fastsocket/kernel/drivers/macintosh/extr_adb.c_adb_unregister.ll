; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adb.c_adb_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adb.c_adb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@adb_handler_mutex = common dso_local global i32 0, align 4
@adb_handler_lock = common dso_local global i32 0, align 4
@adb_handler = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adb_unregister(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ENODEV, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @mutex_lock(i32* @adb_handler_mutex)
  %7 = call i32 @write_lock_irq(i32* @adb_handler_lock)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %24, %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = call i32 @write_unlock_irq(i32* @adb_handler_lock)
  %26 = call i32 (...) @yield()
  %27 = call i32 @write_lock_irq(i32* @adb_handler_lock)
  br label %16

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %28, %1
  %35 = call i32 @write_unlock_irq(i32* @adb_handler_lock)
  %36 = call i32 @mutex_unlock(i32* @adb_handler_mutex)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
