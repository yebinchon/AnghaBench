; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c___bio_detain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c___bio_detain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i64 }
%struct.dm_cell_key = type { i32 }
%struct.bio = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_bio_prison*, %struct.dm_cell_key*, %struct.bio*, %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell**)* @__bio_detain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bio_detain(%struct.dm_bio_prison* %0, %struct.dm_cell_key* %1, %struct.bio* %2, %struct.dm_bio_prison_cell* %3, %struct.dm_bio_prison_cell** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_bio_prison*, align 8
  %8 = alloca %struct.dm_cell_key*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.dm_bio_prison_cell*, align 8
  %11 = alloca %struct.dm_bio_prison_cell**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dm_bio_prison_cell*, align 8
  store %struct.dm_bio_prison* %0, %struct.dm_bio_prison** %7, align 8
  store %struct.dm_cell_key* %1, %struct.dm_cell_key** %8, align 8
  store %struct.bio* %2, %struct.bio** %9, align 8
  store %struct.dm_bio_prison_cell* %3, %struct.dm_bio_prison_cell** %10, align 8
  store %struct.dm_bio_prison_cell** %4, %struct.dm_bio_prison_cell*** %11, align 8
  %14 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %15 = load %struct.dm_cell_key*, %struct.dm_cell_key** %8, align 8
  %16 = call i64 @hash_key(%struct.dm_bio_prison* %14, %struct.dm_cell_key* %15)
  store i64 %16, i64* %12, align 8
  %17 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %18 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %12, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.dm_cell_key*, %struct.dm_cell_key** %8, align 8
  %23 = call %struct.dm_bio_prison_cell* @__search_bucket(i64 %21, %struct.dm_cell_key* %22)
  store %struct.dm_bio_prison_cell* %23, %struct.dm_bio_prison_cell** %13, align 8
  %24 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %13, align 8
  %25 = icmp ne %struct.dm_bio_prison_cell* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %5
  %27 = load %struct.bio*, %struct.bio** %9, align 8
  %28 = icmp ne %struct.bio* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %13, align 8
  %31 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %30, i32 0, i32 0
  %32 = load %struct.bio*, %struct.bio** %9, align 8
  %33 = call i32 @bio_list_add(i32* %31, %struct.bio* %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %13, align 8
  %36 = load %struct.dm_bio_prison_cell**, %struct.dm_bio_prison_cell*** %11, align 8
  store %struct.dm_bio_prison_cell* %35, %struct.dm_bio_prison_cell** %36, align 8
  store i32 1, i32* %6, align 4
  br label %46

37:                                               ; preds = %5
  %38 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %7, align 8
  %39 = load %struct.dm_cell_key*, %struct.dm_cell_key** %8, align 8
  %40 = load %struct.bio*, %struct.bio** %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %43 = call i32 @__setup_new_cell(%struct.dm_bio_prison* %38, %struct.dm_cell_key* %39, %struct.bio* %40, i64 %41, %struct.dm_bio_prison_cell* %42)
  %44 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %45 = load %struct.dm_bio_prison_cell**, %struct.dm_bio_prison_cell*** %11, align 8
  store %struct.dm_bio_prison_cell* %44, %struct.dm_bio_prison_cell** %45, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %37, %34
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @hash_key(%struct.dm_bio_prison*, %struct.dm_cell_key*) #1

declare dso_local %struct.dm_bio_prison_cell* @__search_bucket(i64, %struct.dm_cell_key*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @__setup_new_cell(%struct.dm_bio_prison*, %struct.dm_cell_key*, %struct.bio*, i64, %struct.dm_bio_prison_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
