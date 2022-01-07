; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.rlimit = type { i8*, i8* }

@la_num = common dso_local global i32 0, align 4
@la = common dso_local global %struct.TYPE_2__* null, align 8
@RLIM_INFINITY = common dso_local global i8* null, align 8
@RLIMIT_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Set core limit failed\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Core limit %ld %ld\0A\00", align 1
@MAX_CONNS_PER_WORKER = common dso_local global i8* null, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Set open file limit failed\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Open file limit %ld %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlimit, align 8
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %33, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @la_num, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @la, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = bitcast %struct.in_addr* %4 to i8*
  %17 = bitcast %struct.in_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @la, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @init_single_server(i32 %26, i32 %24)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @la, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  br label %33

33:                                               ; preds = %10
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load i8*, i8** @RLIM_INFINITY, align 8
  %38 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @RLIM_INFINITY, align 8
  %40 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @RLIMIT_CORE, align 4
  %42 = call i32 @setrlimit(i32 %41, %struct.rlimit* %3)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 (...) @exit_cleanup()
  br label %48

48:                                               ; preds = %45, %36
  %49 = load i32, i32* @RLIMIT_CORE, align 4
  %50 = call i32 @getrlimit(i32 %49, %struct.rlimit* %3)
  %51 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @print_d(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %54)
  %56 = load i8*, i8** @MAX_CONNS_PER_WORKER, align 8
  %57 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** @MAX_CONNS_PER_WORKER, align 8
  %59 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @RLIMIT_NOFILE, align 4
  %61 = call i32 @setrlimit(i32 %60, %struct.rlimit* %3)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 (...) @exit_cleanup()
  br label %67

67:                                               ; preds = %64, %48
  %68 = load i32, i32* @RLIMIT_NOFILE, align 4
  %69 = call i32 @getrlimit(i32 %68, %struct.rlimit* %3)
  %70 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @print_d(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %71, i8* %73)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init_single_server(i32, i32) #2

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @exit_cleanup(...) #2

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @print_d(i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
