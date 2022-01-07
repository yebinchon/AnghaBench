; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_read_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_read_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.linger = type { i32, i32 }
%struct.conn_context = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.conn_context* }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"process_read_frontend() with events HUP or ERR\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Process read event[%02x] on front-end socket %d\0A\00", align 1
@MAX_BUFSIZE = common dso_local global i32 0, align 4
@wdata = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"process_read_frontend() can't read client socket\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Read %d from front-end socket %d\0A\00", align 1
@EPOLL_CTL_MOD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Unable to add client socket read event to epoll\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Unable to create new socket for backend\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Create socket %d\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@__const.process_read_frontend.ling = private unnamed_addr constant %struct.linger { i32 1, i32 0 }, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Unable to set socket linger option\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"Unable to connect to back end server\00", align 1
@process_write_backend = common dso_local global i32 0, align 4
@PROXY_BACKEND_EVENT = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Add back-end socket %d to epoll\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"cpu[%d] close socket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_context*)* @process_read_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_read_frontend(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.epoll_event, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.linger, align 4
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %14 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %15 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %18 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %21 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %24 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  %26 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %27 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EPOLLHUP, align 4
  %31 = load i32, i32* @EPOLLERR, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %158

37:                                               ; preds = %1
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, i32, ...) @print_d(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @MAX_BUFSIZE, align 4
  %44 = call i32 @read(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wdata, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = call i32 @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %158

56:                                               ; preds = %37
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %59 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, i32, ...) @print_d(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @EPOLLHUP, align 4
  %64 = load i32, i32* @EPOLLERR, align 4
  %65 = or i32 %63, %64
  %66 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %68 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.conn_context* %67, %struct.conn_context** %69, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @EPOLL_CTL_MOD, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @epoll_ctl(i32 %70, i32 %71, i32 %72, %struct.epoll_event* %8)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  %77 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %158

78:                                               ; preds = %56
  %79 = load i32, i32* @AF_INET, align 4
  %80 = load i32, i32* @SOCK_STREAM, align 4
  %81 = call i32 @socket(i32 %79, i32 %80, i32 0)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %158

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %90 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i8*, i32, ...) @print_d(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @F_GETFL, align 4
  %95 = call i32 @fcntl(i32 %93, i32 %94, i32 0)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @O_NONBLOCK, align 4
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @F_SETFL, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @fcntl(i32 %99, i32 %100, i32 %101)
  %103 = bitcast %struct.linger* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 bitcast (%struct.linger* @__const.process_read_frontend.ling to i8*), i64 8, i1 false)
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @SOL_SOCKET, align 4
  %106 = load i32, i32* @SO_LINGER, align 4
  %107 = bitcast %struct.linger* %13 to i8*
  %108 = call i32 @setsockopt(i32 %104, i32 %105, i32 %106, i8* %107, i32 8)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %86
  %112 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %158

113:                                              ; preds = %86
  %114 = call i32 @select_backend(%struct.sockaddr_in* %9)
  %115 = load i32, i32* %5, align 4
  %116 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %117 = call i32 @connect(i32 %115, %struct.sockaddr* %116, i32 4)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i64, i64* @errno, align 8
  %122 = load i64, i64* @EINPROGRESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %158

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %113
  %128 = load i32, i32* @process_write_backend, align 4
  %129 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %130 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @PROXY_BACKEND_EVENT, align 4
  %132 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %133 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @EPOLLOUT, align 4
  %137 = load i32, i32* @EPOLLHUP, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @EPOLLERR, align 4
  %140 = or i32 %138, %139
  %141 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  %142 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %143 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store %struct.conn_context* %142, %struct.conn_context** %144, align 8
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @epoll_ctl(i32 %145, i32 %146, i32 %147, %struct.epoll_event* %8)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %127
  %152 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %158

153:                                              ; preds = %127
  %154 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %155 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %154, i32 0, i32 7
  store i32 1, i32* %155, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 (i8*, i32, ...) @print_d(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  br label %168

158:                                              ; preds = %151, %124, %111, %84, %76, %47, %35
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %161 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, i32, ...) @print_d(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %159, i32 %162)
  %164 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %165 = call i32 @process_close(%struct.conn_context* %164)
  %166 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %167 = call i32 @free_context(%struct.conn_context* %166)
  br label %168

168:                                              ; preds = %158, %153
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_d(i8*, i32, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @select_backend(%struct.sockaddr_in*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @process_close(%struct.conn_context*) #1

declare dso_local i32 @free_context(%struct.conn_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
