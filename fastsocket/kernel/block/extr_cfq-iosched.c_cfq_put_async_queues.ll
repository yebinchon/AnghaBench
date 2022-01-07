; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_put_async_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_put_async_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64, i64** }

@IOPRIO_BE_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*)* @cfq_put_async_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_put_async_queues(%struct.cfq_data* %0) #0 {
  %2 = alloca %struct.cfq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %53, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOPRIO_BE_NR, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %56

8:                                                ; preds = %4
  %9 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %10 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %9, i32 0, i32 1
  %11 = load i64**, i64*** %10, align 8
  %12 = getelementptr inbounds i64*, i64** %11, i64 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %8
  %20 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %21 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %20, i32 0, i32 1
  %22 = load i64**, i64*** %21, align 8
  %23 = getelementptr inbounds i64*, i64** %22, i64 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @cfq_put_queue(i64 %28)
  br label %30

30:                                               ; preds = %19, %8
  %31 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %32 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %31, i32 0, i32 1
  %33 = load i64**, i64*** %32, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i64 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %43 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %42, i32 0, i32 1
  %44 = load i64**, i64*** %43, align 8
  %45 = getelementptr inbounds i64*, i64** %44, i64 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @cfq_put_queue(i64 %50)
  br label %52

52:                                               ; preds = %41, %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %4

56:                                               ; preds = %4
  %57 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %58 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %63 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @cfq_put_queue(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @cfq_put_queue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
