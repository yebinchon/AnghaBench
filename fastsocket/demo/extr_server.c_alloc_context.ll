; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_alloc_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_context = type { i64, %struct.context_pool*, i64, i64, i64, i64 }
%struct.context_pool = type { i64, i64, i64, %struct.conn_context* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_context* @alloc_context(%struct.context_pool* %0) #0 {
  %2 = alloca %struct.context_pool*, align 8
  %3 = alloca %struct.conn_context*, align 8
  store %struct.context_pool* %0, %struct.context_pool** %2, align 8
  %4 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %5 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %8 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %14 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %18 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %17, i32 0, i32 3
  %19 = load %struct.conn_context*, %struct.conn_context** %18, align 8
  %20 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %21 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %19, i64 %22
  store %struct.conn_context* %23, %struct.conn_context** %3, align 8
  %24 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %25 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %24, i32 0, i32 3
  %26 = load %struct.conn_context*, %struct.conn_context** %25, align 8
  %27 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %28 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %26, i64 %29
  %31 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %34 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.conn_context*, %struct.conn_context** %3, align 8
  %36 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.conn_context*, %struct.conn_context** %3, align 8
  %38 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.conn_context*, %struct.conn_context** %3, align 8
  %40 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.conn_context*, %struct.conn_context** %3, align 8
  %42 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.conn_context*, %struct.conn_context** %3, align 8
  %44 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %43, i32 0, i32 0
  store i64 -1, i64* %44, align 8
  %45 = load %struct.context_pool*, %struct.context_pool** %2, align 8
  %46 = load %struct.conn_context*, %struct.conn_context** %3, align 8
  %47 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %46, i32 0, i32 1
  store %struct.context_pool* %45, %struct.context_pool** %47, align 8
  %48 = load %struct.conn_context*, %struct.conn_context** %3, align 8
  ret %struct.conn_context* %48
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
