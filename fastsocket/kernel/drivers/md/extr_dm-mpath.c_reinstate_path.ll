; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_reinstate_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_reinstate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { i32, %struct.TYPE_12__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.multipath* }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 }
%struct.multipath = type { i32, i32, i32, i32, i32, %struct.TYPE_8__*, i64, i32, i32*, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Reinstate path not supported by path selector %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@kmultipathd = common dso_local global i32 0, align 4
@kmpath_handlerd = common dso_local global i32 0, align 4
@DM_UEVENT_PATH_REINSTATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pgpath*)* @reinstate_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinstate_path(%struct.pgpath* %0) #0 {
  %2 = alloca %struct.pgpath*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.multipath*, align 8
  store %struct.pgpath* %0, %struct.pgpath** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %7 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %6, i32 0, i32 3
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.multipath*, %struct.multipath** %9, align 8
  store %struct.multipath* %10, %struct.multipath** %5, align 8
  %11 = load %struct.multipath*, %struct.multipath** %5, align 8
  %12 = getelementptr inbounds %struct.multipath, %struct.multipath* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %16 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %126

20:                                               ; preds = %1
  %21 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %22 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %20
  %31 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %32 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %31, i32 0, i32 3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %126

42:                                               ; preds = %20
  %43 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %44 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %49, align 8
  %51 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %52 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %56 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %55, i32 0, i32 1
  %57 = call i32 %50(%struct.TYPE_11__* %54, %struct.TYPE_12__* %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %126

61:                                               ; preds = %42
  %62 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %63 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.multipath*, %struct.multipath** %5, align 8
  %65 = getelementptr inbounds %struct.multipath, %struct.multipath* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %61
  %70 = load %struct.multipath*, %struct.multipath** %5, align 8
  %71 = getelementptr inbounds %struct.multipath, %struct.multipath* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.multipath*, %struct.multipath** %5, align 8
  %76 = getelementptr inbounds %struct.multipath, %struct.multipath* %75, i32 0, i32 8
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* @kmultipathd, align 4
  %78 = load %struct.multipath*, %struct.multipath** %5, align 8
  %79 = getelementptr inbounds %struct.multipath, %struct.multipath* %78, i32 0, i32 7
  %80 = call i32 @queue_work(i32 %77, i32* %79)
  br label %108

81:                                               ; preds = %69, %61
  %82 = load %struct.multipath*, %struct.multipath** %5, align 8
  %83 = getelementptr inbounds %struct.multipath, %struct.multipath* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %81
  %87 = load %struct.multipath*, %struct.multipath** %5, align 8
  %88 = getelementptr inbounds %struct.multipath, %struct.multipath* %87, i32 0, i32 5
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %91 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = icmp eq %struct.TYPE_8__* %89, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %86
  %95 = load i32, i32* @kmpath_handlerd, align 4
  %96 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %97 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @queue_work(i32 %95, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.multipath*, %struct.multipath** %5, align 8
  %103 = getelementptr inbounds %struct.multipath, %struct.multipath* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %101, %94
  br label %107

107:                                              ; preds = %106, %86, %81
  br label %108

108:                                              ; preds = %107, %74
  %109 = load i32, i32* @DM_UEVENT_PATH_REINSTATED, align 4
  %110 = load %struct.multipath*, %struct.multipath** %5, align 8
  %111 = getelementptr inbounds %struct.multipath, %struct.multipath* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %114 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.multipath*, %struct.multipath** %5, align 8
  %120 = getelementptr inbounds %struct.multipath, %struct.multipath* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @dm_path_uevent(i32 %109, i32 %112, i32 %118, i32 %121)
  %123 = load %struct.multipath*, %struct.multipath** %5, align 8
  %124 = getelementptr inbounds %struct.multipath, %struct.multipath* %123, i32 0, i32 1
  %125 = call i32 @schedule_work(i32* %124)
  br label %126

126:                                              ; preds = %108, %60, %30, %19
  %127 = load %struct.multipath*, %struct.multipath** %5, align 8
  %128 = getelementptr inbounds %struct.multipath, %struct.multipath* %127, i32 0, i32 0
  %129 = load i64, i64* %4, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dm_path_uevent(i32, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
