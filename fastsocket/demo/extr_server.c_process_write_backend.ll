; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_write_backend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_write_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_context = type { i32, i32, i32, i8*, i32, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conn_context* }

@.str = private unnamed_addr constant [49 x i8] c"Process write event[%02x] on back-end socket %d\0A\00", align 1
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"process_write_backend() with events HUP or ERR 0x%x\0A\00", align 1
@PROXY_BACKEND_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Write to back-end socket while back end socket not enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"process_write() can't write back end socket\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Write %d to back-end socket %d\0A\00", align 1
@process_read_backend = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_MOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Unable to add client socket read event to epoll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_context*)* @process_write_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_write_backend(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.epoll_event, align 8
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %10 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %11 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %14 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %17 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %20 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %23 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @print_d(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EPOLLHUP, align 4
  %30 = load i32, i32* @EPOLLERR, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %85

37:                                               ; preds = %1
  %38 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %39 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PROXY_BACKEND_EVENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %85

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @write(i32 %47, i8* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %85

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @print_d(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @process_read_backend, align 4
  %60 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %61 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @PROXY_BACKEND_EVENT, align 4
  %63 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %64 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @EPOLLIN, align 4
  %68 = load i32, i32* @EPOLLHUP, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @EPOLLERR, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %74 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store %struct.conn_context* %73, %struct.conn_context** %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @EPOLL_CTL_MOD, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @epoll_ctl(i32 %76, i32 %77, i32 %78, %struct.epoll_event* %9)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %55
  %83 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %85

84:                                               ; preds = %55
  br label %90

85:                                               ; preds = %82, %53, %44, %34
  %86 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %87 = call i32 @process_close(%struct.conn_context* %86)
  %88 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %89 = call i32 @free_context(%struct.conn_context* %88)
  br label %90

90:                                               ; preds = %85, %84
  ret void
}

declare dso_local i32 @print_d(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @process_close(%struct.conn_context*) #1

declare dso_local i32 @free_context(%struct.conn_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
