; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_overwrite_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_overwrite_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.dm_thin_endio_hook = type { %struct.dm_thin_new_mapping* }
%struct.dm_thin_new_mapping = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pool* }
%struct.pool = type { i32 }
%struct.TYPE_4__ = type { %struct.dm_thin_endio_hook* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @overwrite_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overwrite_endio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dm_thin_endio_hook*, align 8
  %7 = alloca %struct.dm_thin_new_mapping*, align 8
  %8 = alloca %struct.pool*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = call %struct.TYPE_4__* @dm_get_mapinfo(%struct.bio* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %11, align 8
  store %struct.dm_thin_endio_hook* %12, %struct.dm_thin_endio_hook** %6, align 8
  %13 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %6, align 8
  %14 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %13, i32 0, i32 0
  %15 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %14, align 8
  store %struct.dm_thin_new_mapping* %15, %struct.dm_thin_new_mapping** %7, align 8
  %16 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %7, align 8
  %17 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.pool*, %struct.pool** %19, align 8
  store %struct.pool* %20, %struct.pool** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %7, align 8
  %23 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pool*, %struct.pool** %8, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %7, align 8
  %29 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %7, align 8
  %31 = call i32 @__maybe_add_mapping(%struct.dm_thin_new_mapping* %30)
  %32 = load %struct.pool*, %struct.pool** %8, align 8
  %33 = getelementptr inbounds %struct.pool, %struct.pool* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local %struct.TYPE_4__* @dm_get_mapinfo(%struct.bio*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__maybe_add_mapping(%struct.dm_thin_new_mapping*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
