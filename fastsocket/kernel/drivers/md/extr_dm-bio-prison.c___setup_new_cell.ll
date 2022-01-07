; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c___setup_new_cell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c___setup_new_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i64 }
%struct.dm_cell_key = type { i32 }
%struct.bio = type { i32 }
%struct.dm_bio_prison_cell = type { i32, i32, %struct.bio*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bio_prison*, %struct.dm_cell_key*, %struct.bio*, i64, %struct.dm_bio_prison_cell*)* @__setup_new_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_new_cell(%struct.dm_bio_prison* %0, %struct.dm_cell_key* %1, %struct.bio* %2, i64 %3, %struct.dm_bio_prison_cell* %4) #0 {
  %6 = alloca %struct.dm_bio_prison*, align 8
  %7 = alloca %struct.dm_cell_key*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dm_bio_prison_cell*, align 8
  store %struct.dm_bio_prison* %0, %struct.dm_bio_prison** %6, align 8
  store %struct.dm_cell_key* %1, %struct.dm_cell_key** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.dm_bio_prison_cell* %4, %struct.dm_bio_prison_cell** %10, align 8
  %11 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %12 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %11, i32 0, i32 3
  %13 = load %struct.dm_cell_key*, %struct.dm_cell_key** %7, align 8
  %14 = call i32 @memcpy(i32* %12, %struct.dm_cell_key* %13, i32 4)
  %15 = load %struct.bio*, %struct.bio** %8, align 8
  %16 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %17 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %16, i32 0, i32 2
  store %struct.bio* %15, %struct.bio** %17, align 8
  %18 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %19 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %18, i32 0, i32 1
  %20 = call i32 @bio_list_init(i32* %19)
  %21 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %22 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %21, i32 0, i32 0
  %23 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %6, align 8
  %24 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @hlist_add_head(i32* %22, i64 %27)
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.dm_cell_key*, i32) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
