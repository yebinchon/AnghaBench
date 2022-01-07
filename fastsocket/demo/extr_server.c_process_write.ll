; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.conn_context = type { i32, i32, i32, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.conn_context* }

@.str = private unnamed_addr constant [27 x i8] c"Process write event[%02x]\0A\00", align 1
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"process_write() with events HUP or ERR\0A\00", align 1
@http_response = common dso_local global i32 0, align 4
@http_response_len = common dso_local global i32 0, align 4
@wdata = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"process_write() can't write client socket\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Write %d to socket %d\0A\00", align 1
@enable_keepalive = common dso_local global i32 0, align 4
@process_read = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_MOD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Unable to add client socket read event to epoll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_context*)* @process_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_write(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.epoll_event, align 8
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %9 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %10 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %13 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %16 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %19 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, i32, ...) @print_d(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EPOLLHUP, align 4
  %25 = load i32, i32* @EPOLLERR, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %83

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @http_response, align 4
  %34 = load i32, i32* @http_response_len, align 4
  %35 = call i32 @write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %83

47:                                               ; preds = %31
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i8*, i32, ...) @print_d(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @enable_keepalive, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  br label %83

61:                                               ; preds = %47
  %62 = load i32, i32* @process_read, align 4
  %63 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %64 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @EPOLLIN, align 4
  %66 = load i32, i32* @EPOLLHUP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @EPOLLERR, align 4
  %69 = or i32 %67, %68
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %72 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.conn_context* %71, %struct.conn_context** %73, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @EPOLL_CTL_MOD, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @epoll_ctl(i32 %74, i32 %75, i32 %76, %struct.epoll_event* %8)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %83

82:                                               ; preds = %61
  br label %88

83:                                               ; preds = %80, %60, %38, %29
  %84 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %85 = call i32 @process_close(%struct.conn_context* %84)
  %86 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %87 = call i32 @free_context(%struct.conn_context* %86)
  br label %88

88:                                               ; preds = %83, %82
  ret void
}

declare dso_local i32 @print_d(i8*, i32, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @write(i32, i32, i32) #1

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
