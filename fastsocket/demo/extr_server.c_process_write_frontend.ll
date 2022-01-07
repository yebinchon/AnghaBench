; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_write_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_process_write_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.conn_context = type { i32, i32, i8*, i32, i32 }

@PROXY_BACKEND_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Write to front end socket while back end socket enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't write front-end socket\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Write %d to front end socket %d\0A\00", align 1
@wdata = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_context*)* @process_write_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_write_frontend(%struct.conn_context* %0) #0 {
  %2 = alloca %struct.conn_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.conn_context* %0, %struct.conn_context** %2, align 8
  %8 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %9 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %12 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %15 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %18 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %21 = getelementptr inbounds %struct.conn_context, %struct.conn_context* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PROXY_BACKEND_EVENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %48

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @write(i32 %29, i8* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %48

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @print_d(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wdata, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %37, %35, %26
  %49 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %50 = call i32 @process_close(%struct.conn_context* %49)
  %51 = load %struct.conn_context*, %struct.conn_context** %2, align 8
  %52 = call i32 @free_context(%struct.conn_context* %51)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @print_d(i8*, i32, i32) #1

declare dso_local i32 @process_close(%struct.conn_context*) #1

declare dso_local i32 @free_context(%struct.conn_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
