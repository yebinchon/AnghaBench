; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_get_upload_connection.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_get_upload_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__**, i8*, %struct.TYPE_14__*, i32*, i32*)* @storage_get_upload_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_get_upload_connection(%struct.TYPE_14__* %0, %struct.TYPE_14__** %1, i8* %2, %struct.TYPE_14__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %6
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @CHECK_CONNECTION(%struct.TYPE_14__* %21, %struct.TYPE_14__* %22, i32 %23, i32 %24)
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @tracker_query_storage_store_without_group(%struct.TYPE_14__* %31, %struct.TYPE_14__* %32, i8* %33, i32* %34)
  store i32 %35, i32* %14, align 4
  br label %42

36:                                               ; preds = %20
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @tracker_query_storage_store_with_group(%struct.TYPE_14__* %37, i8* %38, %struct.TYPE_14__* %39, i32* %40)
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @tracker_close_connection_ex(%struct.TYPE_14__* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %85

56:                                               ; preds = %51
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = call %struct.TYPE_14__* @tracker_make_connection(%struct.TYPE_14__* %57, i32* %14)
  %59 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %59, align 8
  %60 = icmp eq %struct.TYPE_14__* %58, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %7, align 4
  br label %85

63:                                               ; preds = %56
  %64 = load i32*, i32** %13, align 8
  store i32 1, i32* %64, align 4
  br label %84

65:                                               ; preds = %6
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32*, i32** %13, align 8
  store i32 0, i32* %72, align 4
  br label %83

73:                                               ; preds = %65
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = call %struct.TYPE_14__* @tracker_make_connection(%struct.TYPE_14__* %75, i32* %14)
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %77, align 8
  %78 = icmp eq %struct.TYPE_14__* %76, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %7, align 4
  br label %85

81:                                               ; preds = %73
  %82 = load i32*, i32** %13, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %71
  br label %84

84:                                               ; preds = %83, %63
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %79, %61, %54
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @CHECK_CONNECTION(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @tracker_query_storage_store_without_group(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @tracker_query_storage_store_with_group(%struct.TYPE_14__*, i8*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @tracker_close_connection_ex(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @tracker_make_connection(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
