; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64, i32, i64, i64, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__**, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }

@debug_mutex = common dso_local global i32 0, align 4
@DEBUG_MAX_VIEWS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_AREAS = common dso_local global i32 0, align 4
@ALL_AREAS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DEBUG_PROLOG_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @debug_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @mutex_lock(i32* @debug_mutex)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %49, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DEBUG_MAX_VIEWS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %26, i64 %28
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %49

33:                                               ; preds = %23
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %36, i64 %38
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = icmp eq %struct.TYPE_13__* %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %55

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %133

55:                                               ; preds = %46
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %58, i64 %60
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %55
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %69, i64 %71
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = load i32, i32* @NO_AREAS, align 4
  %80 = call %struct.TYPE_17__* @debug_info_copy(%struct.TYPE_17__* %78, i32 %79)
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %9, align 8
  br label %85

81:                                               ; preds = %66, %55
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = load i32, i32* @ALL_AREAS, align 4
  %84 = call %struct.TYPE_17__* @debug_info_copy(%struct.TYPE_17__* %82, i32 %83)
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %9, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = icmp ne %struct.TYPE_17__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %133

91:                                               ; preds = %85
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.TYPE_16__* @kmalloc(i32 64, i32 %92)
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %7, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = icmp ne %struct.TYPE_16__* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %98 = call i32 @debug_info_free(%struct.TYPE_17__* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %133

101:                                              ; preds = %91
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 7
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 6
  store %struct.TYPE_17__* %104, %struct.TYPE_17__** %106, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 5
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %112, i64 %114
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %118, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @DEBUG_PROLOG_ENTRY, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %129 = load %struct.file*, %struct.file** %4, align 8
  %130 = getelementptr inbounds %struct.file, %struct.file* %129, i32 0, i32 0
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = call i32 @debug_info_get(%struct.TYPE_17__* %131)
  br label %133

133:                                              ; preds = %101, %96, %88, %52
  %134 = call i32 @mutex_unlock(i32* @debug_mutex)
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_17__* @debug_info_copy(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @kmalloc(i32, i32) #1

declare dso_local i32 @debug_info_free(%struct.TYPE_17__*) #1

declare dso_local i32 @debug_info_get(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
