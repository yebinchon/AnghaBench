; ModuleID = '/home/carl/AnghaBench/fastdfs/client/test/extr_fdfs_monitor.c_list_all_groups.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/test/extr_fdfs_monitor.c_list_all_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FDFS_MAX_GROUPS = common dso_local global i32 0, align 4
@pTrackerServer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"group count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0AGroup %d:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @list_all_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_all_groups(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @FDFS_MAX_GROUPS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.TYPE_4__, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @pTrackerServer, align 4
  %17 = load i32, i32* @FDFS_MAX_GROUPS, align 4
  %18 = call i32 @tracker_list_groups(i32 %16, %struct.TYPE_4__* %15, i32 %17, i32* %5)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 (...) @tracker_close_all_connections()
  %23 = call i32 (...) @fdfs_client_destroy()
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %69

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %27
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %9, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %10, align 4
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  br label %34

34:                                               ; preds = %44, %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = icmp ult %struct.TYPE_4__* %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = call i32 @list_storages(%struct.TYPE_4__* %42)
  br label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 1
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %8, align 8
  br label %34

47:                                               ; preds = %34
  br label %68

48:                                               ; preds = %25
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  br label %49

49:                                               ; preds = %64, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = icmp ult %struct.TYPE_4__* %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @strcmp(i32 %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = call i32 @list_storages(%struct.TYPE_4__* %61)
  br label %67

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 1
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %8, align 8
  br label %49

67:                                               ; preds = %60, %49
  br label %68

68:                                               ; preds = %67, %47
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %21
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tracker_list_groups(i32, %struct.TYPE_4__*, i32, i32*) #2

declare dso_local i32 @tracker_close_all_connections(...) #2

declare dso_local i32 @fdfs_client_destroy(...) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @list_storages(%struct.TYPE_4__*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
