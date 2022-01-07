; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_dtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { i32, i32, i32 }

@dm_thin_pool_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @pool_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.pool_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  store %struct.pool_c* %6, %struct.pool_c** %3, align 8
  %7 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_thin_pool_table, i32 0, i32 0))
  %8 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %9 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %12 = call i32 @unbind_control_target(i32 %10, %struct.dm_target* %11)
  %13 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %14 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__pool_dec(i32 %15)
  %17 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %18 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %19 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_put_device(%struct.dm_target* %17, i32 %20)
  %22 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %23 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %24 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dm_put_device(%struct.dm_target* %22, i32 %25)
  %27 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %28 = call i32 @kfree(%struct.pool_c* %27)
  %29 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_thin_pool_table, i32 0, i32 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unbind_control_target(i32, %struct.dm_target*) #1

declare dso_local i32 @__pool_dec(i32) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @kfree(%struct.pool_c*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
