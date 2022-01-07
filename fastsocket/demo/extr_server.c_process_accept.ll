; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.conn_context = type { i32, i32, i32, i32, i32, i32, %struct.context_pool* }
%struct.context_pool = type { i32 }
%struct.epoll_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.conn_context* }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@ACCEPT_PER_LISTEN_EVENT = common dso_local global i32 0, align 4
@wdata = common dso_local global %struct.TYPE_4__* null, align 8
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Accept socket %d from %d\0A\00", align 1
@enable_proxy = common dso_local global i64 0, align 8
@process_read_frontend = common dso_local global i32 0, align 4
@process_read = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to add client socket read event to epoll\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cpu[%d] close socket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_context*)* @process_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_accept(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.epoll_event, align 8
  %7 = alloca %struct.context_pool*, align 8
  %8 = alloca %struct.conn_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %13 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %14 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %17 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %20 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EPOLLHUP, align 4
  %24 = load i32, i32* @EPOLLERR, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %131

29:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @ACCEPT_PER_LISTEN_EVENT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @accept(i32 %35, i32* null, i32* null)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %130

47:                                               ; preds = %34
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @F_GETFL, align 4
  %50 = call i32 @fcntl(i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @O_NONBLOCK, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @F_SETFL, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @fcntl(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @print_d(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %66 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %65, i32 0, i32 6
  %67 = load %struct.context_pool*, %struct.context_pool** %66, align 8
  store %struct.context_pool* %67, %struct.context_pool** %7, align 8
  %68 = load %struct.context_pool*, %struct.context_pool** %7, align 8
  %69 = call %struct.conn_context* @alloc_context(%struct.context_pool* %68)
  store %struct.conn_context* %69, %struct.conn_context** %8, align 8
  %70 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %71 = call i32 @assert(%struct.conn_context* %70)
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %74 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* @enable_proxy, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load i32, i32* @process_read_frontend, align 4
  %79 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %80 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %64
  %82 = load i32, i32* @process_read, align 4
  %83 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %84 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %87 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %90 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %92 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %95 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @EPOLLIN, align 4
  %97 = load i32, i32* @EPOLLHUP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @EPOLLERR, align 4
  %100 = or i32 %98, %99
  %101 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %103 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store %struct.conn_context* %102, %struct.conn_context** %104, align 8
  %105 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %106 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %109 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %110 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @epoll_ctl(i32 %107, i32 %108, i32 %111, %struct.epoll_event* %6)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %85
  %116 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %120

117:                                              ; preds = %85
  %118 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %119 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %118, i32 0, i32 3
  store i32 1, i32* %119, align 4
  br label %130

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %123 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @print_d(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %127 = call i32 @process_close(%struct.conn_context* %126)
  %128 = load %struct.conn_context*, %struct.conn_context** %8, align 8
  %129 = call i32 @free_context(%struct.conn_context* %128)
  br label %130

130:                                              ; preds = %120, %117, %39
  br label %131

131:                                              ; preds = %130, %28
  ret void
}

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @print_d(i8*, i32, i32) #1

declare dso_local %struct.conn_context* @alloc_context(%struct.context_pool*) #1

declare dso_local i32 @assert(%struct.conn_context*) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @process_close(%struct.conn_context*) #1

declare dso_local i32 @free_context(%struct.conn_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
