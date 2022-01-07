; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_fifo_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_fifo_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i8**, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as_data*, i32)* @as_fifo_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as_fifo_expired(%struct.as_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.as_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  store %struct.as_data* %0, %struct.as_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** @jiffies, align 8
  %9 = load %struct.as_data*, %struct.as_data** %4, align 8
  %10 = getelementptr inbounds %struct.as_data, %struct.as_data* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %8 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.as_data*, %struct.as_data** %4, align 8
  %30 = getelementptr inbounds %struct.as_data, %struct.as_data* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %69

38:                                               ; preds = %27
  %39 = load i8*, i8** @jiffies, align 8
  %40 = load %struct.as_data*, %struct.as_data** %4, align 8
  %41 = getelementptr inbounds %struct.as_data, %struct.as_data* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %39, i8** %45, align 8
  %46 = load %struct.as_data*, %struct.as_data** %4, align 8
  %47 = getelementptr inbounds %struct.as_data, %struct.as_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = call i64 @list_empty(%struct.TYPE_2__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %69

55:                                               ; preds = %38
  %56 = load %struct.as_data*, %struct.as_data** %4, align 8
  %57 = getelementptr inbounds %struct.as_data, %struct.as_data* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.request* @rq_entry_fifo(i32 %63)
  store %struct.request* %64, %struct.request** %6, align 8
  %65 = load i8*, i8** @jiffies, align 8
  %66 = load %struct.request*, %struct.request** %6, align 8
  %67 = call i32 @rq_fifo_time(%struct.request* %66)
  %68 = call i32 @time_after(i8* %65, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %55, %54, %37
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.request* @rq_entry_fifo(i32) #1

declare dso_local i32 @time_after(i8*, i32) #1

declare dso_local i32 @rq_fifo_time(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
