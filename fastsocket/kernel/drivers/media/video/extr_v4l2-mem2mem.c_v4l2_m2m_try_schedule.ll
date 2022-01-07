; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_try_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_try_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_ctx = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.v4l2_m2m_dev* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_m2m_dev = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [42 x i8] c"Trying to schedule a job for m2m_ctx: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Streaming needs to be on for both queues\0A\00", align 1
@TRANS_QUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"On job queue already\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"No input buffers available\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"No output buffers available\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Driver not ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_m2m_ctx*)* @v4l2_m2m_try_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_m2m_try_schedule(%struct.v4l2_m2m_ctx* %0) #0 {
  %2 = alloca %struct.v4l2_m2m_ctx*, align 8
  %3 = alloca %struct.v4l2_m2m_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.v4l2_m2m_ctx* %0, %struct.v4l2_m2m_ctx** %2, align 8
  %6 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %6, i32 0, i32 5
  %8 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %7, align 8
  store %struct.v4l2_m2m_dev* %8, %struct.v4l2_m2m_dev** %3, align 8
  %9 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %10 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.v4l2_m2m_ctx* %9)
  %11 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17, %1
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %136

26:                                               ; preds = %17
  %27 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TRANS_QUEUED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %39 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %136

43:                                               ; preds = %26
  %44 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = call i64 @list_empty(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %43
  %57 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %65 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %136

69:                                               ; preds = %43
  %70 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i64 @list_empty(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %84 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %83, i32 0, i32 0
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %136

88:                                               ; preds = %69
  %89 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %90 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %97 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32 (i32)*, i32 (i32)** %99, align 8
  %101 = icmp ne i32 (i32)* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %88
  %103 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %104 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %103, i32 0, i32 2
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32 (i32)*, i32 (i32)** %106, align 8
  %108 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %109 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %107(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %102
  %114 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %115 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %114, i32 0, i32 0
  %116 = load i64, i64* %4, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %136

119:                                              ; preds = %102, %88
  %120 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %121 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %120, i32 0, i32 1
  %122 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %123 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %122, i32 0, i32 1
  %124 = call i32 @list_add_tail(i32* %121, i32* %123)
  %125 = load i32, i32* @TRANS_QUEUED, align 4
  %126 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %2, align 8
  %127 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %131 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %130, i32 0, i32 0
  %132 = load i64, i64* %4, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %135 = call i32 @v4l2_m2m_try_run(%struct.v4l2_m2m_dev* %134)
  br label %136

136:                                              ; preds = %119, %113, %75, %56, %37, %24
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @v4l2_m2m_try_run(%struct.v4l2_m2m_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
