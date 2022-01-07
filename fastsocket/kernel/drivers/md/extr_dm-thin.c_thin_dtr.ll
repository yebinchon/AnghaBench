; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_dtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.dm_target = type { %struct.thin_c* }
%struct.thin_c = type { i64, i64, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@dm_thin_pool_table = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @thin_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thin_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %5 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %6 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %5, i32 0, i32 0
  %7 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  store %struct.thin_c* %7, %struct.thin_c** %3, align 8
  %8 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %9 = call i32 @thin_put(%struct.thin_c* %8)
  %10 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %11 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %10, i32 0, i32 5
  %12 = call i32 @wait_for_completion(i32* %11)
  %13 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %14 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %20 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %19, i32 0, i32 4
  %21 = call i32 @list_del_rcu(i32* %20)
  %22 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %23 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = call i32 (...) @synchronize_rcu()
  %29 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dm_thin_pool_table, i32 0, i32 0))
  %30 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %31 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @__pool_dec(%struct.TYPE_4__* %32)
  %34 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %35 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dm_pool_close_thin_device(i32 %36)
  %38 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %39 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %40 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dm_put_device(%struct.dm_target* %38, i64 %41)
  %43 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %44 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %49 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %50 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dm_put_device(%struct.dm_target* %48, i64 %51)
  br label %53

53:                                               ; preds = %47, %1
  %54 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %55 = call i32 @kfree(%struct.thin_c* %54)
  %56 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dm_thin_pool_table, i32 0, i32 0))
  ret void
}

declare dso_local i32 @thin_put(%struct.thin_c*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__pool_dec(%struct.TYPE_4__*) #1

declare dso_local i32 @dm_pool_close_thin_device(i32) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i64) #1

declare dso_local i32 @kfree(%struct.thin_c*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
