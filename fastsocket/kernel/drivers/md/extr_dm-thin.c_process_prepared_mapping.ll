; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_prepared_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_prepared_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i32, i32, i32, i32, i64, i32, %struct.bio*, %struct.thin_c* }
%struct.bio = type { i32 }
%struct.thin_c = type { i32, %struct.pool* }
%struct.pool = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dm_thin_insert_block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*)* @process_prepared_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prepared_mapping(%struct.dm_thin_new_mapping* %0) #0 {
  %2 = alloca %struct.dm_thin_new_mapping*, align 8
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.pool*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %2, align 8
  %7 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %8 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %7, i32 0, i32 7
  %9 = load %struct.thin_c*, %struct.thin_c** %8, align 8
  store %struct.thin_c* %9, %struct.thin_c** %3, align 8
  %10 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %11 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %10, i32 0, i32 1
  %12 = load %struct.pool*, %struct.pool** %11, align 8
  store %struct.pool* %12, %struct.pool** %4, align 8
  %13 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %14 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %13, i32 0, i32 6
  %15 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %15, %struct.bio** %5, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = icmp ne %struct.bio* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %20 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %26 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.pool*, %struct.pool** %4, align 8
  %31 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %32 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cell_error(%struct.pool* %30, i32 %33)
  br label %75

35:                                               ; preds = %24
  %36 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %37 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %40 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %43 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dm_thin_insert_block(i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load %struct.pool*, %struct.pool** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @metadata_operation_failed(%struct.pool* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.pool*, %struct.pool** %4, align 8
  %53 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %54 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cell_error(%struct.pool* %52, i32 %55)
  br label %75

57:                                               ; preds = %35
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = icmp ne %struct.bio* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %62 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %63 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cell_defer_no_holder(%struct.thin_c* %61, i32 %64)
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = call i32 @bio_endio(%struct.bio* %66, i32 0)
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %70 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %71 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cell_defer(%struct.thin_c* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74, %48, %29
  %76 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %77 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %76, i32 0, i32 0
  %78 = call i32 @list_del(i32* %77)
  %79 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %80 = load %struct.pool*, %struct.pool** %4, align 8
  %81 = getelementptr inbounds %struct.pool, %struct.pool* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mempool_free(%struct.dm_thin_new_mapping* %79, i32 %82)
  ret void
}

declare dso_local i32 @cell_error(%struct.pool*, i32) #1

declare dso_local i32 @dm_thin_insert_block(i32, i32, i32) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

declare dso_local i32 @cell_defer_no_holder(%struct.thin_c*, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @cell_defer(%struct.thin_c*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mempool_free(%struct.dm_thin_new_mapping*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
