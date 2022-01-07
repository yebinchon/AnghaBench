; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_context = type { i32, i32, i32, i64, i64 }
%struct.epoll_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conn_context* }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to delete client socket from epoll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_context*)* @process_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_close(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.epoll_event, align 8
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %8 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %9 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %12 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %15 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EPOLLHUP, align 4
  %18 = load i32, i32* @EPOLLERR, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %22 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.conn_context* %21, %struct.conn_context** %23, align 8
  %24 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %25 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @epoll_ctl(i32 %29, i32 %30, i32 %31, %struct.epoll_event* %7)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %45 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @epoll_ctl(i32 %49, i32 %50, i32 %51, %struct.epoll_event* %7)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %58, %38
  ret void
}

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
