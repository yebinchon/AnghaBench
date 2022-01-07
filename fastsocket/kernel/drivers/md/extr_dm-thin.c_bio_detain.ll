; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_bio_detain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_bio_detain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }
%struct.dm_cell_key = type { i32 }
%struct.bio = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pool*, %struct.dm_cell_key*, %struct.bio*, %struct.dm_bio_prison_cell**)* @bio_detain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_detain(%struct.pool* %0, %struct.dm_cell_key* %1, %struct.bio* %2, %struct.dm_bio_prison_cell** %3) #0 {
  %5 = alloca %struct.pool*, align 8
  %6 = alloca %struct.dm_cell_key*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.dm_bio_prison_cell**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_bio_prison_cell*, align 8
  store %struct.pool* %0, %struct.pool** %5, align 8
  store %struct.dm_cell_key* %1, %struct.dm_cell_key** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  store %struct.dm_bio_prison_cell** %3, %struct.dm_bio_prison_cell*** %8, align 8
  %11 = load %struct.pool*, %struct.pool** %5, align 8
  %12 = getelementptr inbounds %struct.pool, %struct.pool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_NOIO, align 4
  %15 = call %struct.dm_bio_prison_cell* @dm_bio_prison_alloc_cell(i32 %13, i32 %14)
  store %struct.dm_bio_prison_cell* %15, %struct.dm_bio_prison_cell** %10, align 8
  %16 = load %struct.pool*, %struct.pool** %5, align 8
  %17 = getelementptr inbounds %struct.pool, %struct.pool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dm_cell_key*, %struct.dm_cell_key** %6, align 8
  %20 = load %struct.bio*, %struct.bio** %7, align 8
  %21 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %22 = load %struct.dm_bio_prison_cell**, %struct.dm_bio_prison_cell*** %8, align 8
  %23 = call i32 @dm_bio_detain(i32 %18, %struct.dm_cell_key* %19, %struct.bio* %20, %struct.dm_bio_prison_cell* %21, %struct.dm_bio_prison_cell** %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.pool*, %struct.pool** %5, align 8
  %28 = getelementptr inbounds %struct.pool, %struct.pool* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %31 = call i32 @dm_bio_prison_free_cell(i32 %29, %struct.dm_bio_prison_cell* %30)
  br label %32

32:                                               ; preds = %26, %4
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.dm_bio_prison_cell* @dm_bio_prison_alloc_cell(i32, i32) #1

declare dso_local i32 @dm_bio_detain(i32, %struct.dm_cell_key*, %struct.bio*, %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell**) #1

declare dso_local i32 @dm_bio_prison_free_cell(i32, %struct.dm_bio_prison_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
