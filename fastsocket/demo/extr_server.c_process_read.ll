; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.conn_context = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.conn_context* }

@EPOLLHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"process_read() with events HUP\0A\00", align 1
@EPOLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"process_read() with events ERR\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Process read event[%02x] on socket %d\0A\00", align 1
@MAX_BUFSIZE = common dso_local global i32 0, align 4
@wdata = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"process_read() can't read client socket\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Read %d from socket %d\0A\00", align 1
@process_write = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLL_CTL_MOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Unable to add client socket read event to epoll\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"cpu[%d] close socket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_context*)* @process_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_read(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.epoll_event, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %10 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %11 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %14 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %17 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %20 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %23 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EPOLLHUP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @print_d(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %90

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EPOLLERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @print_d(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %90

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @print_d(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* @MAX_BUFSIZE, align 4
  %45 = call i32 @read(i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %38
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = call i32 @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %90

57:                                               ; preds = %38
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %90

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %65 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i8*, ...) @print_d(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @process_write, align 4
  %70 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %71 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @EPOLLOUT, align 4
  %73 = load i32, i32* @EPOLLHUP, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @EPOLLERR, align 4
  %76 = or i32 %74, %75
  %77 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %79 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store %struct.conn_context* %78, %struct.conn_context** %80, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @EPOLL_CTL_MOD, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @epoll_ctl(i32 %81, i32 %82, i32 %83, %struct.epoll_event* %6)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %62
  %88 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %90

89:                                               ; preds = %62
  br label %100

90:                                               ; preds = %87, %60, %48, %36, %29
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %93 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @print_d(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %97 = call i32 @process_close(%struct.conn_context* %96)
  %98 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %99 = call i32 @free_context(%struct.conn_context* %98)
  br label %100

100:                                              ; preds = %90, %89
  ret void
}

declare dso_local i32 @print_d(i8*, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

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
