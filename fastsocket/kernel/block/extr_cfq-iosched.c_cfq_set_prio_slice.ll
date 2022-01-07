; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_set_prio_slice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_set_prio_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32*, i32, i64 }
%struct.cfq_queue = type { i8*, i32, i8*, i32 }

@jiffies = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"set_slice=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_set_prio_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_set_prio_slice(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %12 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %13 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %14 = call i32 @cfq_prio_to_slice(%struct.cfq_data* %12, %struct.cfq_queue* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %16 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %2
  %20 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %22 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %25 = call i32 @cfq_class_rt(%struct.cfq_queue* %24)
  %26 = call i32 @cfq_group_get_avg_queues(%struct.cfq_data* %20, i32 %23, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %28 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %36 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %37 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cfq_group_slice(%struct.cfq_data* %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %19
  %44 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %45 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 2, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = udiv i32 %51, %52
  %54 = call i32 @min(i32 %48, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = udiv i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @max(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %43, %19
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i8*, i8** @jiffies, align 8
  %65 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %66 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @jiffies, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %72 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %75 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %77 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %78 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %79 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @jiffies, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @cfq_log_cfqq(%struct.cfq_data* %76, %struct.cfq_queue* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %85)
  ret void
}

declare dso_local i32 @cfq_prio_to_slice(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_group_get_avg_queues(%struct.cfq_data*, i32, i32) #1

declare dso_local i32 @cfq_class_rt(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_group_slice(%struct.cfq_data*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
