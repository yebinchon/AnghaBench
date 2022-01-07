; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c___maybe_add_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c___maybe_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pool* }
%struct.pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*)* @__maybe_add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__maybe_add_mapping(%struct.dm_thin_new_mapping* %0) #0 {
  %2 = alloca %struct.dm_thin_new_mapping*, align 8
  %3 = alloca %struct.pool*, align 8
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %2, align 8
  %4 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %5 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pool*, %struct.pool** %7, align 8
  store %struct.pool* %8, %struct.pool** %3, align 8
  %9 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %10 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %15 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %20 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %19, i32 0, i32 0
  %21 = load %struct.pool*, %struct.pool** %3, align 8
  %22 = getelementptr inbounds %struct.pool, %struct.pool* %21, i32 0, i32 0
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  %24 = load %struct.pool*, %struct.pool** %3, align 8
  %25 = call i32 @wake_worker(%struct.pool* %24)
  br label %26

26:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_worker(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
