; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@condev = common dso_local global %struct.con3270* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @con3270_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_flush() #0 {
  %1 = alloca %struct.con3270*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.con3270*, %struct.con3270** @condev, align 8
  store %struct.con3270* %3, %struct.con3270** %1, align 8
  %4 = load %struct.con3270*, %struct.con3270** %1, align 8
  %5 = getelementptr inbounds %struct.con3270, %struct.con3270* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %53

10:                                               ; preds = %0
  %11 = load %struct.con3270*, %struct.con3270** %1, align 8
  %12 = getelementptr inbounds %struct.con3270, %struct.con3270* %11, i32 0, i32 1
  %13 = call i32 @raw3270_pm_unfreeze(%struct.TYPE_2__* %12)
  %14 = load %struct.con3270*, %struct.con3270** %1, align 8
  %15 = getelementptr inbounds %struct.con3270, %struct.con3270* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.con3270*, %struct.con3270** %1, align 8
  %20 = call i32 @con3270_wait_write(%struct.con3270* %19)
  %21 = load %struct.con3270*, %struct.con3270** %1, align 8
  %22 = getelementptr inbounds %struct.con3270, %struct.con3270* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.con3270*, %struct.con3270** %1, align 8
  %24 = call i32 @con3270_rebuild_update(%struct.con3270* %23)
  %25 = load %struct.con3270*, %struct.con3270** %1, align 8
  %26 = call i32 @con3270_update_status(%struct.con3270* %25)
  br label %27

27:                                               ; preds = %32, %10
  %28 = load %struct.con3270*, %struct.con3270** %1, align 8
  %29 = getelementptr inbounds %struct.con3270, %struct.con3270* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.con3270*, %struct.con3270** %1, align 8
  %34 = getelementptr inbounds %struct.con3270, %struct.con3270* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.con3270*, %struct.con3270** %1, align 8
  %39 = call i32 @con3270_update(%struct.con3270* %38)
  %40 = load %struct.con3270*, %struct.con3270** %1, align 8
  %41 = getelementptr inbounds %struct.con3270, %struct.con3270* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %2, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.con3270*, %struct.con3270** %1, align 8
  %46 = call i32 @con3270_wait_write(%struct.con3270* %45)
  br label %27

47:                                               ; preds = %27
  %48 = load %struct.con3270*, %struct.con3270** %1, align 8
  %49 = getelementptr inbounds %struct.con3270, %struct.con3270* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %2, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @raw3270_pm_unfreeze(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @con3270_wait_write(%struct.con3270*) #1

declare dso_local i32 @con3270_rebuild_update(%struct.con3270*) #1

declare dso_local i32 @con3270_update_status(%struct.con3270*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @con3270_update(%struct.con3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
