; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-service-time.c_st_compare_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-service-time.c_st_compare_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_info = type { i32, i32 }

@ST_MAX_INFLIGHT_SIZE = common dso_local global i64 0, align 8
@ST_MAX_RELATIVE_THROUGHPUT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_info*, %struct.path_info*, i64)* @st_compare_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_compare_load(%struct.path_info* %0, %struct.path_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path_info*, align 8
  %6 = alloca %struct.path_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.path_info* %0, %struct.path_info** %5, align 8
  store %struct.path_info* %1, %struct.path_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.path_info*, %struct.path_info** %5, align 8
  %13 = getelementptr inbounds %struct.path_info, %struct.path_info* %12, i32 0, i32 1
  %14 = call i64 @atomic_read(i32* %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.path_info*, %struct.path_info** %6, align 8
  %16 = getelementptr inbounds %struct.path_info, %struct.path_info* %15, i32 0, i32 1
  %17 = call i64 @atomic_read(i32* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.path_info*, %struct.path_info** %5, align 8
  %19 = getelementptr inbounds %struct.path_info, %struct.path_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.path_info*, %struct.path_info** %6, align 8
  %22 = getelementptr inbounds %struct.path_info, %struct.path_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %107

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load %struct.path_info*, %struct.path_info** %5, align 8
  %36 = getelementptr inbounds %struct.path_info, %struct.path_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.path_info*, %struct.path_info** %6, align 8
  %41 = getelementptr inbounds %struct.path_info, %struct.path_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39, %34, %30
  %45 = load %struct.path_info*, %struct.path_info** %6, align 8
  %46 = getelementptr inbounds %struct.path_info, %struct.path_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.path_info*, %struct.path_info** %5, align 8
  %49 = getelementptr inbounds %struct.path_info, %struct.path_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %4, align 4
  br label %107

52:                                               ; preds = %39
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @ST_MAX_INFLIGHT_SIZE, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @ST_MAX_INFLIGHT_SIZE, align 8
  %65 = icmp uge i64 %63, %64
  br label %66

66:                                               ; preds = %62, %52
  %67 = phi i1 [ true, %52 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i64, i64* @ST_MAX_RELATIVE_THROUGHPUT_SHIFT, align 8
  %73 = load i64, i64* %8, align 8
  %74 = lshr i64 %73, %72
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* @ST_MAX_RELATIVE_THROUGHPUT_SHIFT, align 8
  %76 = load i64, i64* %9, align 8
  %77 = lshr i64 %76, %75
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.path_info*, %struct.path_info** %6, align 8
  %81 = getelementptr inbounds %struct.path_info, %struct.path_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %79, %83
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.path_info*, %struct.path_info** %5, align 8
  %87 = getelementptr inbounds %struct.path_info, %struct.path_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %85, %89
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %78
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %107

99:                                               ; preds = %78
  %100 = load %struct.path_info*, %struct.path_info** %6, align 8
  %101 = getelementptr inbounds %struct.path_info, %struct.path_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.path_info*, %struct.path_info** %5, align 8
  %104 = getelementptr inbounds %struct.path_info, %struct.path_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %99, %94, %44, %25
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
