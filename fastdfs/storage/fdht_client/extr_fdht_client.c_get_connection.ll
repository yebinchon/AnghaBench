; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/fdht_client/extr_fdht_client.c_get_connection.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/fdht_client/extr_fdht_client.c_get_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }

@g_fdht_connect_timeout = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*, i32, i32, i32*)* @get_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @get_connection(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 16
  %18 = or i32 %15, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  %23 = and i32 %22, 2147483647
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %36
  store %struct.TYPE_7__** %37, %struct.TYPE_7__*** %11, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %40, i64 %42
  store %struct.TYPE_7__** %43, %struct.TYPE_7__*** %10, align 8
  br label %44

44:                                               ; preds = %76, %24
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %47 = icmp ult %struct.TYPE_7__** %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %5, align 8
  br label %127

57:                                               ; preds = %48
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* @g_fdht_connect_timeout, align 4
  %61 = call i64 @fdht_connect_server_nb(%struct.TYPE_7__* %59, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @tcpsetnodelay(i64 %70, i32 3600)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %5, align 8
  br label %127

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %77, i32 1
  store %struct.TYPE_7__** %78, %struct.TYPE_7__*** %10, align 8
  br label %44

79:                                               ; preds = %44
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %82, i64 %84
  store %struct.TYPE_7__** %85, %struct.TYPE_7__*** %11, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %87, align 8
  store %struct.TYPE_7__** %88, %struct.TYPE_7__*** %10, align 8
  br label %89

89:                                               ; preds = %121, %79
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %92 = icmp ult %struct.TYPE_7__** %90, %91
  br i1 %92, label %93, label %124

93:                                               ; preds = %89
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %5, align 8
  br label %127

102:                                              ; preds = %93
  %103 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* @g_fdht_connect_timeout, align 4
  %106 = call i64 @fdht_connect_server_nb(%struct.TYPE_7__* %104, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @tcpsetnodelay(i64 %115, i32 3600)
  br label %117

117:                                              ; preds = %111, %108
  %118 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %5, align 8
  br label %127

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %122, i32 1
  store %struct.TYPE_7__** %123, %struct.TYPE_7__*** %10, align 8
  br label %89

124:                                              ; preds = %89
  %125 = load i32, i32* @ENOENT, align 4
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %127

127:                                              ; preds = %124, %117, %99, %72, %54
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %128
}

declare dso_local i64 @fdht_connect_server_nb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @tcpsetnodelay(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
