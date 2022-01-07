; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_shared_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_shared_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, %struct.pool* }
%struct.pool = type { i32 }
%struct.bio = type { i64 }
%struct.dm_thin_lookup_result = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.dm_cell_key = type { i32 }
%struct.dm_thin_endio_hook = type { i32 }
%struct.TYPE_2__ = type { %struct.dm_thin_endio_hook* }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*, i32, %struct.dm_thin_lookup_result*)* @process_shared_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_shared_bio(%struct.thin_c* %0, %struct.bio* %1, i32 %2, %struct.dm_thin_lookup_result* %3) #0 {
  %5 = alloca %struct.thin_c*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_thin_lookup_result*, align 8
  %9 = alloca %struct.dm_bio_prison_cell*, align 8
  %10 = alloca %struct.pool*, align 8
  %11 = alloca %struct.dm_cell_key, align 4
  %12 = alloca %struct.dm_thin_endio_hook*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dm_thin_lookup_result* %3, %struct.dm_thin_lookup_result** %8, align 8
  %13 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %14 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %13, i32 0, i32 1
  %15 = load %struct.pool*, %struct.pool** %14, align 8
  store %struct.pool* %15, %struct.pool** %10, align 8
  %16 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %17 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %8, align 8
  %20 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @build_data_key(i32 %18, i32 %21, %struct.dm_cell_key* %11)
  %23 = load %struct.pool*, %struct.pool** %10, align 8
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = call i64 @bio_detain(%struct.pool* %23, %struct.dm_cell_key* %11, %struct.bio* %24, %struct.dm_bio_prison_cell** %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %68

28:                                               ; preds = %4
  %29 = load %struct.bio*, %struct.bio** %6, align 8
  %30 = call i64 @bio_data_dir(%struct.bio* %29)
  %31 = load i64, i64* @WRITE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.bio*, %struct.bio** %6, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %8, align 8
  %43 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  %44 = call i32 @break_sharing(%struct.thin_c* %39, %struct.bio* %40, i32 %41, %struct.dm_cell_key* %11, %struct.dm_thin_lookup_result* %42, %struct.dm_bio_prison_cell* %43)
  br label %68

45:                                               ; preds = %33, %28
  %46 = load %struct.bio*, %struct.bio** %6, align 8
  %47 = call %struct.TYPE_2__* @dm_get_mapinfo(%struct.bio* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %48, align 8
  store %struct.dm_thin_endio_hook* %49, %struct.dm_thin_endio_hook** %12, align 8
  %50 = load %struct.pool*, %struct.pool** %10, align 8
  %51 = getelementptr inbounds %struct.pool, %struct.pool* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dm_deferred_entry_inc(i32 %52)
  %54 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %12, align 8
  %55 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pool*, %struct.pool** %10, align 8
  %57 = load %struct.bio*, %struct.bio** %6, align 8
  %58 = call i32 @inc_all_io_entry(%struct.pool* %56, %struct.bio* %57)
  %59 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %60 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  %61 = call i32 @cell_defer_no_holder(%struct.thin_c* %59, %struct.dm_bio_prison_cell* %60)
  %62 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %63 = load %struct.bio*, %struct.bio** %6, align 8
  %64 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %8, align 8
  %65 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @remap_and_issue(%struct.thin_c* %62, %struct.bio* %63, i32 %66)
  br label %68

68:                                               ; preds = %27, %45, %38
  ret void
}

declare dso_local i32 @build_data_key(i32, i32, %struct.dm_cell_key*) #1

declare dso_local i64 @bio_detain(%struct.pool*, %struct.dm_cell_key*, %struct.bio*, %struct.dm_bio_prison_cell**) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @break_sharing(%struct.thin_c*, %struct.bio*, i32, %struct.dm_cell_key*, %struct.dm_thin_lookup_result*, %struct.dm_bio_prison_cell*) #1

declare dso_local %struct.TYPE_2__* @dm_get_mapinfo(%struct.bio*) #1

declare dso_local i32 @dm_deferred_entry_inc(i32) #1

declare dso_local i32 @inc_all_io_entry(%struct.pool*, %struct.bio*) #1

declare dso_local i32 @cell_defer_no_holder(%struct.thin_c*, %struct.dm_bio_prison_cell*) #1

declare dso_local i32 @remap_and_issue(%struct.thin_c*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
