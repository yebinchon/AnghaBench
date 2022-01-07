; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_cell_defer_no_holder_no_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_cell_defer_no_holder_no_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, i32, %struct.pool* }
%struct.pool = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.dm_bio_prison_cell*)* @cell_defer_no_holder_no_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_defer_no_holder_no_free(%struct.thin_c* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.dm_bio_prison_cell*, align 8
  %5 = alloca %struct.pool*, align 8
  %6 = alloca i64, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %4, align 8
  %7 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %8 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %7, i32 0, i32 2
  %9 = load %struct.pool*, %struct.pool** %8, align 8
  store %struct.pool* %9, %struct.pool** %5, align 8
  %10 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %11 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.pool*, %struct.pool** %5, align 8
  %15 = getelementptr inbounds %struct.pool, %struct.pool* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %18 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %19 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %18, i32 0, i32 1
  %20 = call i32 @dm_cell_release_no_holder(i32 %16, %struct.dm_bio_prison_cell* %17, i32* %19)
  %21 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %22 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.pool*, %struct.pool** %5, align 8
  %26 = call i32 @wake_worker(%struct.pool* %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dm_cell_release_no_holder(i32, %struct.dm_bio_prison_cell*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_worker(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
