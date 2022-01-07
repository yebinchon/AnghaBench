; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c___cell_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c___cell_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_cell = type { i32, i64, i32 }
%struct.bio_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bio_prison_cell*, %struct.bio_list*)* @__cell_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cell_release(%struct.dm_bio_prison_cell* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.dm_bio_prison_cell*, align 8
  %4 = alloca %struct.bio_list*, align 8
  store %struct.dm_bio_prison_cell* %0, %struct.dm_bio_prison_cell** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  %5 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %3, align 8
  %6 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %5, i32 0, i32 2
  %7 = call i32 @hlist_del(i32* %6)
  %8 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %9 = icmp ne %struct.bio_list* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %3, align 8
  %12 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %17 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %3, align 8
  %18 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bio_list_add(%struct.bio_list* %16, i64 %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %23 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %3, align 8
  %24 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %23, i32 0, i32 0
  %25 = call i32 @bio_list_merge(%struct.bio_list* %22, i32* %24)
  br label %26

26:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, i64) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
