; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_prepared_discard_passdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_prepared_discard_passdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i32, i32, i64, i64, i32, i32, %struct.thin_c* }
%struct.thin_c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*)* @process_prepared_discard_passdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prepared_discard_passdown(%struct.dm_thin_new_mapping* %0) #0 {
  %2 = alloca %struct.dm_thin_new_mapping*, align 8
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %2, align 8
  %5 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %6 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %5, i32 0, i32 6
  %7 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  store %struct.thin_c* %7, %struct.thin_c** %3, align 8
  %8 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %9 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %12 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @inc_all_io_entry(%struct.TYPE_2__* %10, i32 %13)
  %15 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %16 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %17 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cell_defer_no_holder(%struct.thin_c* %15, i32 %18)
  %20 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %21 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %22 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cell_defer_no_holder(%struct.thin_c* %20, i32 %23)
  %25 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %26 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %1
  %30 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %31 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %36 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %37 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %40 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @remap_and_issue(%struct.thin_c* %35, i32 %38, i32 %41)
  br label %72

43:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  %44 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %45 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %50 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @dm_pool_block_is_used(i32 %48, i32 %51, i32* %4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54, %43
  %58 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %59 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bio_endio(i32 %60, i32 0)
  br label %71

62:                                               ; preds = %54
  %63 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %64 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %65 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %68 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @remap_and_issue(%struct.thin_c* %63, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %62, %57
  br label %72

72:                                               ; preds = %71, %34
  br label %78

73:                                               ; preds = %1
  %74 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %75 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bio_endio(i32 %76, i32 0)
  br label %78

78:                                               ; preds = %73, %72
  %79 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %80 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %81 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mempool_free(%struct.dm_thin_new_mapping* %79, i32 %84)
  ret void
}

declare dso_local i32 @inc_all_io_entry(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @cell_defer_no_holder(%struct.thin_c*, i32) #1

declare dso_local i32 @remap_and_issue(%struct.thin_c*, i32, i32) #1

declare dso_local i64 @dm_pool_block_is_used(i32, i32, i32*) #1

declare dso_local i32 @bio_endio(i32, i32) #1

declare dso_local i32 @mempool_free(%struct.dm_thin_new_mapping*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
