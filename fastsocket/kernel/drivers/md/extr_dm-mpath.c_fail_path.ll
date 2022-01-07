; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_fail_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_fail_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { %struct.TYPE_10__, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.multipath* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.multipath = type { i32, i32, i32, i32, %struct.pgpath* }

@.str = private unnamed_addr constant [17 x i8] c"Failing path %s.\00", align 1
@DM_UEVENT_PATH_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pgpath*)* @fail_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fail_path(%struct.pgpath* %0) #0 {
  %2 = alloca %struct.pgpath*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.multipath*, align 8
  store %struct.pgpath* %0, %struct.pgpath** %2, align 8
  %5 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %6 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %5, i32 0, i32 3
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.multipath*, %struct.multipath** %8, align 8
  store %struct.multipath* %9, %struct.multipath** %4, align 8
  %10 = load %struct.multipath*, %struct.multipath** %4, align 8
  %11 = getelementptr inbounds %struct.multipath, %struct.multipath* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %15 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %21 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DMWARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %28 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %33, align 8
  %35 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %36 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %40 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %39, i32 0, i32 0
  %41 = call i32 %34(%struct.TYPE_9__* %38, %struct.TYPE_10__* %40)
  %42 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %43 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %45 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.multipath*, %struct.multipath** %4, align 8
  %49 = getelementptr inbounds %struct.multipath, %struct.multipath* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %53 = load %struct.multipath*, %struct.multipath** %4, align 8
  %54 = getelementptr inbounds %struct.multipath, %struct.multipath* %53, i32 0, i32 4
  %55 = load %struct.pgpath*, %struct.pgpath** %54, align 8
  %56 = icmp eq %struct.pgpath* %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %19
  %58 = load %struct.multipath*, %struct.multipath** %4, align 8
  %59 = getelementptr inbounds %struct.multipath, %struct.multipath* %58, i32 0, i32 4
  store %struct.pgpath* null, %struct.pgpath** %59, align 8
  br label %60

60:                                               ; preds = %57, %19
  %61 = load i32, i32* @DM_UEVENT_PATH_FAILED, align 4
  %62 = load %struct.multipath*, %struct.multipath** %4, align 8
  %63 = getelementptr inbounds %struct.multipath, %struct.multipath* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %66 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.multipath*, %struct.multipath** %4, align 8
  %72 = getelementptr inbounds %struct.multipath, %struct.multipath* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dm_path_uevent(i32 %61, i32 %64, i32 %70, i32 %73)
  %75 = load %struct.multipath*, %struct.multipath** %4, align 8
  %76 = getelementptr inbounds %struct.multipath, %struct.multipath* %75, i32 0, i32 1
  %77 = call i32 @schedule_work(i32* %76)
  br label %78

78:                                               ; preds = %60, %18
  %79 = load %struct.multipath*, %struct.multipath** %4, align 8
  %80 = getelementptr inbounds %struct.multipath, %struct.multipath* %79, i32 0, i32 0
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @dm_path_uevent(i32, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
