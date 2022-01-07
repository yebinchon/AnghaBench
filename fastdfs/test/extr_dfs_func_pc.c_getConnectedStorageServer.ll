; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_getConnectedStorageServer.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_getConnectedStorageServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@storage_servers = common dso_local global %struct.TYPE_8__* null, align 8
@storage_server_count = common dso_local global i32 0, align 4
@g_fdfs_connect_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, i32*)* @getConnectedStorageServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @getConnectedStorageServer(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @storage_servers, align 8
  %9 = load i32, i32* @storage_server_count, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i64 %10
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @storage_servers, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  br label %13

13:                                               ; preds = %46, %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = icmp ult %struct.TYPE_8__* %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i32 %20, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %17
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load i32, i32* @g_fdfs_connect_timeout, align 4
  %34 = call i32 @conn_pool_connect_server(%struct.TYPE_8__* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %67

40:                                               ; preds = %31
  br label %43

41:                                               ; preds = %26
  %42 = load i32*, i32** %5, align 8
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %3, align 8
  br label %67

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 1
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %7, align 8
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %7, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = call i32 @memcpy(%struct.TYPE_8__* %51, %struct.TYPE_8__* %52, i32 8)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = load i32, i32* @g_fdfs_connect_timeout, align 4
  %58 = call i32 @conn_pool_connect_server(%struct.TYPE_8__* %56, i32 %57)
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %67

62:                                               ; preds = %49
  %63 = load i32, i32* @storage_server_count, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @storage_server_count, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %3, align 8
  br label %67

67:                                               ; preds = %62, %61, %43, %39
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %68
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @conn_pool_connect_server(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
