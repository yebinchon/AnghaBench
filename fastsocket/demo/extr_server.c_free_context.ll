; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_free_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_context = type { %struct.conn_context*, %struct.context_pool* }
%struct.context_pool = type { i64, i32, %struct.conn_context* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_context(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca %struct.context_pool*, align 8
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %4 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %5 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %4, i32 0, i32 1
  %6 = load %struct.context_pool*, %struct.context_pool** %5, align 8
  store %struct.context_pool* %6, %struct.context_pool** %3, align 8
  %7 = load %struct.context_pool*, %struct.context_pool** %3, align 8
  %8 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.context_pool*, %struct.context_pool** %3, align 8
  %14 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.context_pool*, %struct.context_pool** %3, align 8
  %18 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %17, i32 0, i32 2
  %19 = load %struct.conn_context*, %struct.conn_context** %18, align 8
  %20 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %21 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %20, i32 0, i32 0
  store %struct.conn_context* %19, %struct.conn_context** %21, align 8
  %22 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %23 = load %struct.context_pool*, %struct.context_pool** %3, align 8
  %24 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %22, i64 %27
  %29 = load %struct.context_pool*, %struct.context_pool** %3, align 8
  %30 = getelementptr inbounds %struct.context_pool, %struct.context_pool* %29, i32 0, i32 2
  store %struct.conn_context* %28, %struct.conn_context** %30, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
