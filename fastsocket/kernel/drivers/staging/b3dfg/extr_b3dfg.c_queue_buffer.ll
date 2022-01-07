; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_queue_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_queue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i32, i64, i64, i32, %struct.b3dfg_buffer*, %struct.TYPE_2__* }
%struct.b3dfg_buffer = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@b3dfg_nbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid buffer index, %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@B3DFG_BUFFER_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer %d is already queued\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"triplet is ready, pushing immediately\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to map DMA buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b3dfg_dev*, i32)* @queue_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_buffer(%struct.b3dfg_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.b3dfg_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.b3dfg_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %10 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %14 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @b3dfg_nbuf, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %2
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %83

29:                                               ; preds = %19
  %30 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %31 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %30, i32 0, i32 4
  %32 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %32, i64 %34
  store %struct.b3dfg_buffer* %35, %struct.b3dfg_buffer** %6, align 8
  %36 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @B3DFG_BUFFER_PENDING, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %83

50:                                               ; preds = %29
  %51 = load i64, i64* @B3DFG_BUFFER_PENDING, align 8
  %52 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %54, i32 0, i32 1
  %56 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %57 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %56, i32 0, i32 3
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %60 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %50
  %64 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %65 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %72 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %74 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %6, align 8
  %75 = call i32 @setup_frame_transfer(%struct.b3dfg_dev* %73, %struct.b3dfg_buffer* %74, i32 0)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %68
  br label %82

82:                                               ; preds = %81, %63, %50
  br label %83

83:                                               ; preds = %82, %44, %23
  %84 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %85 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @setup_frame_transfer(%struct.b3dfg_dev*, %struct.b3dfg_buffer*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
