; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_clients.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.worker_data = type { i32 }
%struct.context_pool = type { i32 }
%struct.epoll_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.conn_context* }
%struct.conn_context = type { i32, i32, i32, i32, i32, i32, i32 (%struct.conn_context*)* }

@EVENTS_PER_BATCH = common dso_local global i32 0, align 4
@enable_keepalive = common dso_local global i64 0, align 8
@http_200_keepalive = common dso_local global i32 0, align 4
@http_response = common dso_local global i32 0, align 4
@http_200 = common dso_local global i32 0, align 4
@http_response_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to Bind worker on CPU\00", align 1
@MAX_CONNS_PER_WORKER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to create epoll FD\00", align 1
@la_num = common dso_local global i32 0, align 4
@la = common dso_local global %struct.TYPE_6__* null, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to add Listen Socket to epoll\00", align 1
@wdata = common dso_local global %struct.TYPE_5__* null, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"epoll_wait() error\00", align 1
@PROXY_BACKEND_EVENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%dth event[0x%x] at fd %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @process_clients(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.worker_data*, align 8
  %5 = alloca %struct.context_pool*, align 8
  %6 = alloca %struct.epoll_event, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.conn_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = bitcast i8* %17 to %struct.worker_data*
  store %struct.worker_data* %18, %struct.worker_data** %4, align 8
  %19 = load i32, i32* @EVENTS_PER_BATCH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca %struct.epoll_event, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i64, i64* @enable_keepalive, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @http_200_keepalive, align 4
  store i32 %26, i32* @http_response, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @http_200, align 4
  store i32 %28, i32* @http_response, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* @http_response, align 4
  %31 = call i32 @strlen(i32 %30)
  store i32 %31, i32* @http_response_len, align 4
  %32 = load %struct.worker_data*, %struct.worker_data** %4, align 8
  %33 = getelementptr inbounds %struct.worker_data, %struct.worker_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bind_process_cpu(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (...) @exit_cleanup()
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i32, i32* @MAX_CONNS_PER_WORKER, align 4
  %43 = call %struct.context_pool* @init_pool(i32 %42)
  store %struct.context_pool* %43, %struct.context_pool** %5, align 8
  %44 = load i32, i32* @MAX_CONNS_PER_WORKER, align 4
  %45 = call i32 @epoll_create(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 (...) @exit_cleanup()
  br label %50

50:                                               ; preds = %47, %41
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %99, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @la_num, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load %struct.context_pool*, %struct.context_pool** %5, align 8
  %57 = call %struct.conn_context* @alloc_context(%struct.context_pool* %56)
  store %struct.conn_context* %57, %struct.conn_context** %12, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @la, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %65 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %67 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %66, i32 0, i32 6
  store i32 (%struct.conn_context*)* @process_accept, i32 (%struct.conn_context*)** %67, align 8
  %68 = load %struct.worker_data*, %struct.worker_data** %4, align 8
  %69 = getelementptr inbounds %struct.worker_data, %struct.worker_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %73 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %76 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @EPOLLIN, align 4
  %78 = load i32, i32* @EPOLLHUP, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @EPOLLERR, align 4
  %81 = or i32 %79, %80
  %82 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %84 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store %struct.conn_context* %83, %struct.conn_context** %85, align 8
  %86 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %87 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %90 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %91 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @epoll_ctl(i32 %88, i32 %89, i32 %92, %struct.epoll_event* %6)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %55
  %96 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 (...) @exit_cleanup()
  br label %98

98:                                               ; preds = %95, %55
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %51

102:                                              ; preds = %51
  %103 = load i32, i32* @EVENTS_PER_BATCH, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 4
  br label %109

109:                                              ; preds = %253, %120, %102
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @EVENTS_PER_BATCH, align 4
  %113 = call i32 @epoll_wait(i32 %111, %struct.epoll_event* %22, i32 %112, i32 -1)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @EINTR, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %109

121:                                              ; preds = %116
  %122 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %110
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %151

134:                                              ; preds = %123
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %135, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %134
  br label %151

151:                                              ; preds = %150, %126
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %152, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %151
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 %161, i32* %166, align 4
  br label %167

167:                                              ; preds = %160, %151
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %168
  store i32 %175, i32* %173, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %188, %194
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  store i32 %195, i32* %200, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wdata, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 5
  store i32 %201, i32* %206, align 4
  store i32 0, i32* %14, align 4
  br label %207

207:                                              ; preds = %250, %167
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %13, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %253

211:                                              ; preds = %207
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %22, i64 %213
  %215 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 16
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %22, i64 %218
  %220 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load %struct.conn_context*, %struct.conn_context** %221, align 8
  store %struct.conn_context* %222, %struct.conn_context** %12, align 8
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %225 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %227 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @PROXY_BACKEND_EVENT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %211
  %233 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %234 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %16, align 4
  br label %240

236:                                              ; preds = %211
  %237 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %238 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %16, align 4
  br label %240

240:                                              ; preds = %236, %232
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %16, align 4
  %244 = call i32 @print_d(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %241, i32 %242, i32 %243)
  %245 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %246 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %245, i32 0, i32 6
  %247 = load i32 (%struct.conn_context*)*, i32 (%struct.conn_context*)** %246, align 8
  %248 = load %struct.conn_context*, %struct.conn_context** %12, align 8
  %249 = call i32 %247(%struct.conn_context* %248)
  br label %250

250:                                              ; preds = %240
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %14, align 4
  br label %207

253:                                              ; preds = %207
  br label %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @bind_process_cpu(i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @exit_cleanup(...) #2

declare dso_local %struct.context_pool* @init_pool(i32) #2

declare dso_local i32 @epoll_create(i32) #2

declare dso_local %struct.conn_context* @alloc_context(%struct.context_pool*) #2

declare dso_local i32 @process_accept(%struct.conn_context*) #2

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #2

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #2

declare dso_local i32 @print_d(i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
