; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_init_hash_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_init_hash_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DM_CHUNK_CONSECUTIVE_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exception_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*)* @init_hash_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hash_tables(%struct.dm_snapshot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  %8 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %9 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_dev_size(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %15 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_dev_size(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = call i32 (...) @calc_max_buckets()
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  %24 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %25 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %23, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 64, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @rounddown_pow_of_two(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %40 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @DM_CHUNK_CONSECUTIVE_BITS, align 4
  %43 = call i64 @dm_exception_table_init(i32* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %36
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 3
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 64
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 64, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %56 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %55, i32 0, i32 1
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @dm_exception_table_init(i32* %56, i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %62 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %61, i32 0, i32 0
  %63 = load i32, i32* @exception_cache, align 4
  %64 = call i32 @dm_exception_table_exit(i32* %62, i32 %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %60, %45
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @get_dev_size(i32) #1

declare dso_local i32 @calc_max_buckets(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i64 @dm_exception_table_init(i32*, i32, i32) #1

declare dso_local i32 @dm_exception_table_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
