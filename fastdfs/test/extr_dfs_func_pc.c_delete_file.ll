; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_delete_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_delete_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@pTrackerServer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @pTrackerServer, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @tracker_query_storage_update1(i32 %9, %struct.TYPE_6__* %7, i8* %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = call %struct.TYPE_6__* @getConnectedStorageServer(%struct.TYPE_6__* %7, i32* %6)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcpy(i8* %21, i32 %23)
  %25 = load i32, i32* @pTrackerServer, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @storage_delete_file1(i32 %25, %struct.TYPE_6__* %26, i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %18, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @tracker_query_storage_update1(i32, %struct.TYPE_6__*, i8*) #1

declare dso_local %struct.TYPE_6__* @getConnectedStorageServer(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @storage_delete_file1(i32, %struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
