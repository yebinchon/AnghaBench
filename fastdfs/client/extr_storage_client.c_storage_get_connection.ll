; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_get_connection.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_get_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }

@TRACKER_PROTO_CMD_SERVICE_QUERY_FETCH_ONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__**, i64, i8*, i8*, %struct.TYPE_14__*, i32*)* @storage_get_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_get_connection(%struct.TYPE_14__* %0, %struct.TYPE_14__** %1, i64 %2, i8* %3, i8* %4, %struct.TYPE_14__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %66

22:                                               ; preds = %7
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = call i32 @CHECK_CONNECTION(%struct.TYPE_14__* %23, %struct.TYPE_14__* %24, i32 %25, i32 %26)
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @TRACKER_PROTO_CMD_SERVICE_QUERY_FETCH_ONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @tracker_query_storage_fetch(%struct.TYPE_14__* %32, %struct.TYPE_14__* %33, i8* %34, i8* %35)
  store i32 %36, i32* %16, align 4
  br label %43

37:                                               ; preds = %22
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @tracker_query_storage_update(%struct.TYPE_14__* %38, %struct.TYPE_14__* %39, i8* %40, i8* %41)
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @tracker_close_connection_ex(%struct.TYPE_14__* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %8, align 4
  br label %86

57:                                               ; preds = %52
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %59 = call %struct.TYPE_14__* @tracker_make_connection(%struct.TYPE_14__* %58, i32* %16)
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %60, align 8
  %61 = icmp eq %struct.TYPE_14__* %59, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %8, align 4
  br label %86

64:                                               ; preds = %57
  %65 = load i32*, i32** %15, align 8
  store i32 1, i32* %65, align 4
  br label %85

66:                                               ; preds = %7
  %67 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32*, i32** %15, align 8
  store i32 0, i32* %73, align 4
  br label %84

74:                                               ; preds = %66
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = call %struct.TYPE_14__* @tracker_make_connection(%struct.TYPE_14__* %76, i32* %16)
  %78 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %78, align 8
  %79 = icmp eq %struct.TYPE_14__* %77, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %8, align 4
  br label %86

82:                                               ; preds = %74
  %83 = load i32*, i32** %15, align 8
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %72
  br label %85

85:                                               ; preds = %84, %64
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %80, %62, %55
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @CHECK_CONNECTION(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @tracker_query_storage_fetch(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @tracker_query_storage_update(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @tracker_close_connection_ex(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @tracker_make_connection(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
