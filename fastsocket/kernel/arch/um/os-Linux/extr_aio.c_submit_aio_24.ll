; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_aio.c_submit_aio_24.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_aio.c_submit_aio_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_context = type { i32 }
%struct.aio_thread_req = type { i32, i32, i64, i8*, i32, %struct.aio_context* }

@aio_req_fd_w = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i64, %struct.aio_context*)* @submit_aio_24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_aio_24(i32 %0, i32 %1, i8* %2, i32 %3, i64 %4, %struct.aio_context* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.aio_context*, align 8
  %13 = alloca %struct.aio_thread_req, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.aio_context* %5, %struct.aio_context** %12, align 8
  %15 = getelementptr inbounds %struct.aio_thread_req, %struct.aio_thread_req* %13, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.aio_thread_req, %struct.aio_thread_req* %13, i32 0, i32 1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.aio_thread_req, %struct.aio_thread_req* %13, i32 0, i32 2
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.aio_thread_req, %struct.aio_thread_req* %13, i32 0, i32 3
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.aio_thread_req, %struct.aio_thread_req* %13, i32 0, i32 4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.aio_thread_req, %struct.aio_thread_req* %13, i32 0, i32 5
  %26 = load %struct.aio_context*, %struct.aio_context** %12, align 8
  store %struct.aio_context* %26, %struct.aio_context** %25, align 8
  %27 = load i32, i32* @aio_req_fd_w, align 4
  %28 = call i32 @write(i32 %27, %struct.aio_thread_req* %13, i32 40)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %30, 40
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %36

33:                                               ; preds = %6
  %34 = load i32, i32* @errno, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32, i32* %14, align 4
  ret i32 %37
}

declare dso_local i32 @write(i32, %struct.aio_thread_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
