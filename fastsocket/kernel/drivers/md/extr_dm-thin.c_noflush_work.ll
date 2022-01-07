; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_noflush_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_noflush_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.work_struct = type opaque
%struct.noflush_work = type { i32, i32, i32, %struct.thin_c* }
%struct.work_struct.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, void (%struct.work_struct*)*)* @noflush_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noflush_work(%struct.thin_c* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca void (%struct.work_struct*)*, align 8
  %5 = alloca %struct.noflush_work, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %4, align 8
  %6 = getelementptr inbounds %struct.noflush_work, %struct.noflush_work* %5, i32 0, i32 2
  %7 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %4, align 8
  %8 = bitcast void (%struct.work_struct*)* %7 to void (%struct.work_struct.0*)*
  %9 = call i32 @INIT_WORK(i32* %6, void (%struct.work_struct.0*)* %8)
  %10 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %11 = getelementptr inbounds %struct.noflush_work, %struct.noflush_work* %5, i32 0, i32 3
  store %struct.thin_c* %10, %struct.thin_c** %11, align 8
  %12 = getelementptr inbounds %struct.noflush_work, %struct.noflush_work* %5, i32 0, i32 0
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = getelementptr inbounds %struct.noflush_work, %struct.noflush_work* %5, i32 0, i32 1
  %15 = call i32 @init_waitqueue_head(i32* %14)
  %16 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %17 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.noflush_work, %struct.noflush_work* %5, i32 0, i32 2
  %22 = call i32 @queue_work(i32 %20, i32* %21)
  %23 = getelementptr inbounds %struct.noflush_work, %struct.noflush_work* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.noflush_work, %struct.noflush_work* %5, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = call i32 @wait_event(i32 %24, i32 %26)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
