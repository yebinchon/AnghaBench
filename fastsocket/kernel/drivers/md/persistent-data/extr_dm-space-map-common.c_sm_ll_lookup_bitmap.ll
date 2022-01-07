; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_lookup_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_lookup_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32, i32 }
%struct.disk_index_entry = type opaque
%struct.disk_index_entry.0 = type { i32 }
%struct.dm_block = type { i32 }

@dm_sm_bitmap_validator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_ll_lookup_bitmap(%struct.ll_disk* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ll_disk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.disk_index_entry.0, align 4
  %11 = alloca %struct.dm_block*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.ll_disk*, %struct.ll_disk** %5, align 8
  %15 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @do_div(i32 %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ll_disk*, %struct.ll_disk** %5, align 8
  %19 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %18, i32 0, i32 0
  %20 = load i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)** %19, align 8
  %21 = load %struct.ll_disk*, %struct.ll_disk** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = bitcast %struct.disk_index_entry.0* %10 to %struct.disk_index_entry*
  %24 = call i32 %20(%struct.ll_disk* %21, i32 %22, %struct.disk_index_entry* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load %struct.ll_disk*, %struct.ll_disk** %5, align 8
  %31 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.disk_index_entry.0, %struct.disk_index_entry.0* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le64_to_cpu(i32 %34)
  %36 = call i32 @dm_tm_read_lock(i32 %32, i32 %35, i32* @dm_sm_bitmap_validator, %struct.dm_block** %11)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %29
  %42 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %43 = call i32 @dm_bitmap_data(%struct.dm_block* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sm_lookup_bitmap(i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ll_disk*, %struct.ll_disk** %5, align 8
  %48 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %51 = call i32 @dm_tm_unlock(i32 %49, %struct.dm_block* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %41, %39, %27
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @dm_tm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @sm_lookup_bitmap(i32, i32) #1

declare dso_local i32 @dm_bitmap_data(%struct.dm_block*) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
