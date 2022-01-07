; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c___raw3270_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c___raw3270_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { i32, i32, i32 }
%struct.raw3270_view = type { i32 }
%struct.raw3270_request = type { i32, i32, i32, %struct.raw3270_view* }

@RAW3270_FLAGS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*, %struct.raw3270_view*, %struct.raw3270_request*)* @__raw3270_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__raw3270_start(%struct.raw3270* %0, %struct.raw3270_view* %1, %struct.raw3270_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw3270*, align 8
  %6 = alloca %struct.raw3270_view*, align 8
  %7 = alloca %struct.raw3270_request*, align 8
  store %struct.raw3270* %0, %struct.raw3270** %5, align 8
  store %struct.raw3270_view* %1, %struct.raw3270_view** %6, align 8
  store %struct.raw3270_request* %2, %struct.raw3270_request** %7, align 8
  %8 = load %struct.raw3270_view*, %struct.raw3270_view** %6, align 8
  %9 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %10 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %9, i32 0, i32 3
  store %struct.raw3270_view* %8, %struct.raw3270_view** %10, align 8
  %11 = load %struct.raw3270_view*, %struct.raw3270_view** %6, align 8
  %12 = call i32 @raw3270_get_view(%struct.raw3270_view* %11)
  %13 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %14 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %13, i32 0, i32 0
  %15 = call i64 @list_empty(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load i32, i32* @RAW3270_FLAGS_BUSY, align 4
  %19 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %20 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %19, i32 0, i32 2
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %25 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %28 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %27, i32 0, i32 2
  %29 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %30 = ptrtoint %struct.raw3270_request* %29 to i64
  %31 = call i32 @ccw_device_start(i32 %26, i32* %28, i64 %30, i32 0, i32 0)
  %32 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %33 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %35 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load %struct.raw3270_view*, %struct.raw3270_view** %6, align 8
  %40 = call i32 @raw3270_put_view(%struct.raw3270_view* %39)
  %41 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %42 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %17, %3
  %46 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %47 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %46, i32 0, i32 1
  %48 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %49 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @raw3270_get_view(%struct.raw3270_view*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ccw_device_start(i32, i32*, i64, i32, i32) #1

declare dso_local i32 @raw3270_put_view(%struct.raw3270_view*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
