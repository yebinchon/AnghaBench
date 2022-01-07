; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_tracker_client.c_tracker_get_storage_max_status.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_tracker_client.c_tracker_get_storage_max_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracker_get_storage_max_status(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = call i32 @memset(%struct.TYPE_7__* %16, i32 0, i32 8)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load i8*, i8** %10, align 8
  store i8 0, i8* %20, align 1
  %21 = load i32*, i32** %11, align 8
  store i32 -1, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %15, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %14, align 8
  br label %33

33:                                               ; preds = %79, %5
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @memcpy(i32* %13, i32* %38, i32 4)
  %40 = call i32 @fdfs_server_sock_reset(i32* %13)
  %41 = call i32* @tracker_connect_server(i32* %13, i32* %17)
  store i32* %41, i32** %12, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %6, align 4
  br label %89

45:                                               ; preds = %37
  %46 = load i32*, i32** %12, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @tracker_get_storage_status(i32* %46, i8* %47, i8* %48, %struct.TYPE_7__* %16)
  store i32 %49, i32* %17, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @tracker_close_connection_ex(i32* %50, i32 %53)
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %79

62:                                               ; preds = %57
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %6, align 4
  br label %89

64:                                               ; preds = %45
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcpy(i8* %65, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %64
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32*, i32** %14, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %14, align 8
  br label %33

82:                                               ; preds = %33
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @ENOENT, align 4
  store i32 %87, i32* %6, align 4
  br label %89

88:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %86, %62, %43
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fdfs_server_sock_reset(i32*) #1

declare dso_local i32* @tracker_connect_server(i32*, i32*) #1

declare dso_local i32 @tracker_get_storage_status(i32*, i8*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
