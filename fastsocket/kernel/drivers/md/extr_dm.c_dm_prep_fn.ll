; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_prep_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_prep_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.request = type { i32, %struct.request* }

@.str = private unnamed_addr constant [38 x i8] c"Already has something in rq->special.\00", align 1
@BLKPREP_KILL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLKPREP_DEFER = common dso_local global i32 0, align 4
@REQ_DONTPREP = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*)* @dm_prep_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_prep_fn(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  store %struct.mapped_device* %10, %struct.mapped_device** %6, align 8
  %11 = load %struct.request*, %struct.request** %5, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 1
  %13 = load %struct.request*, %struct.request** %12, align 8
  %14 = call i64 @unlikely(%struct.request* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @DMWARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.request* @clone_rq(%struct.request* %20, %struct.mapped_device* %21, i32 %22)
  store %struct.request* %23, %struct.request** %7, align 8
  %24 = load %struct.request*, %struct.request** %7, align 8
  %25 = icmp ne %struct.request* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %19
  %29 = load %struct.request*, %struct.request** %7, align 8
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  store %struct.request* %29, %struct.request** %31, align 8
  %32 = load i32, i32* @REQ_DONTPREP, align 4
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %26, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(%struct.request*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local %struct.request* @clone_rq(%struct.request*, %struct.mapped_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
