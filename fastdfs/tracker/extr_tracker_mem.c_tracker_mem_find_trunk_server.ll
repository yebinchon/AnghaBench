; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_find_trunk_server.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_find_trunk_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32**, i32* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @tracker_mem_find_trunk_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracker_mem_find_trunk_server(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @FDFS_CURRENT_IP_ADDR(i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tracker_mem_get_trunk_binlog_size(i32 %21, i32 %24, i64* %11)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %33, i64 %37
  store i32** %38, i32*** %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  store i32** %41, i32*** %7, align 8
  br label %42

42:                                               ; preds = %71, %30
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32**, i32*** %8, align 8
  %45 = icmp ult i32** %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp eq i32* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %71

52:                                               ; preds = %46
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @FDFS_CURRENT_IP_ADDR(i32* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @tracker_mem_get_trunk_binlog_size(i32 %55, i32 %58, i64* %10)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %71

63:                                               ; preds = %52
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32**, i32*** %7, align 8
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %6, align 8
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %62, %51
  %72 = load i32**, i32*** %7, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i32 1
  store i32** %73, i32*** %7, align 8
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @tracker_mem_do_set_trunk_server(%struct.TYPE_4__* %75, i32* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %28, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @tracker_mem_get_trunk_binlog_size(i32, i32, i64*) #1

declare dso_local i32 @FDFS_CURRENT_IP_ADDR(i32*) #1

declare dso_local i32 @tracker_mem_do_set_trunk_server(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
