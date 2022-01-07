; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_hw_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_hw_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64, i64, i32, i64, i32, %struct.cfq_queue* }
%struct.cfq_queue = type { i64, i64* }

@CFQ_HW_QUEUE_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*)* @cfq_update_hw_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_update_hw_tag(%struct.cfq_data* %0) #0 {
  %2 = alloca %struct.cfq_data*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %2, align 8
  %4 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %5 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %4, i32 0, i32 5
  %6 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  store %struct.cfq_queue* %6, %struct.cfq_queue** %3, align 8
  %7 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %8 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %11 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %16 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %19 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %22 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %90

26:                                               ; preds = %20
  %27 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %28 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CFQ_HW_QUEUE_MIN, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %34 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CFQ_HW_QUEUE_MIN, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %90

39:                                               ; preds = %32, %26
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %41 = icmp ne %struct.cfq_queue* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %44 = call i64 @cfq_cfqq_idle_window(%struct.cfq_queue* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %48 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %51 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %49, %54
  %56 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %57 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = load i64, i64* @CFQ_HW_QUEUE_MIN, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %46
  %65 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %66 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CFQ_HW_QUEUE_MIN, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %90

71:                                               ; preds = %64, %46, %42, %39
  %72 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %73 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = icmp slt i32 %74, 50
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %90

78:                                               ; preds = %71
  %79 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %80 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CFQ_HW_QUEUE_MIN, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %86 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  br label %90

87:                                               ; preds = %78
  %88 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %89 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %25, %38, %70, %77, %87, %84
  ret void
}

declare dso_local i64 @cfq_cfqq_idle_window(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
