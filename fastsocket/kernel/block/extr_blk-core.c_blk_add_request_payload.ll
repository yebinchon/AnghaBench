; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_add_request_payload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_add_request_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, %struct.bio* }
%struct.bio = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.page* }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_add_request_payload(%struct.request* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 4
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %10, %struct.bio** %7, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %7, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store %struct.page* %11, %struct.page** %15, align 8
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.bio*, %struct.bio** %7, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load %struct.bio*, %struct.bio** %7, align 8
  %40 = call i32 @bio_data(%struct.bio* %39)
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @bio_data(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
