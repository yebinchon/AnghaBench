; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.scm_device* }
%struct.scm_device = type { i32 }
%struct.scm_blk_dev = type { i32 }
%struct.scm_request = type { i32 }
%struct.request = type { i64 }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"no request\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cluster busy\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no subchannel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @scm_blk_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_blk_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.scm_device*, align 8
  %4 = alloca %struct.scm_blk_dev*, align 8
  %5 = alloca %struct.scm_request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.scm_device*, %struct.scm_device** %9, align 8
  store %struct.scm_device* %10, %struct.scm_device** %3, align 8
  %11 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %12 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %11, i32 0, i32 0
  %13 = call %struct.scm_blk_dev* @dev_get_drvdata(i32* %12)
  store %struct.scm_blk_dev* %13, %struct.scm_blk_dev** %4, align 8
  br label %14

14:                                               ; preds = %83, %24, %1
  %15 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %16 = call %struct.request* @blk_peek_request(%struct.request_queue* %15)
  store %struct.request* %16, %struct.request** %6, align 8
  %17 = icmp ne %struct.request* %16, null
  br i1 %17, label %18, label %84

18:                                               ; preds = %14
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REQ_TYPE_FS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %14

25:                                               ; preds = %18
  %26 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 @scm_permit_request(%struct.scm_blk_dev* %26, %struct.request* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %32 = call i32 @scm_ensure_queue_restart(%struct.scm_blk_dev* %31)
  br label %84

33:                                               ; preds = %25
  %34 = call %struct.scm_request* (...) @scm_request_fetch()
  store %struct.scm_request* %34, %struct.scm_request** %5, align 8
  %35 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %36 = icmp ne %struct.scm_request* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = call i32 @SCM_LOG(i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %40 = call i32 @scm_ensure_queue_restart(%struct.scm_blk_dev* %39)
  br label %84

41:                                               ; preds = %33
  %42 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %43 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %44 = load %struct.request*, %struct.request** %6, align 8
  %45 = call i32 @scm_request_init(%struct.scm_blk_dev* %42, %struct.scm_request* %43, %struct.request* %44)
  %46 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %47 = call i32 @scm_reserve_cluster(%struct.scm_request* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = call i32 @SCM_LOG(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %52 = call i32 @scm_request_done(%struct.scm_request* %51)
  br label %84

53:                                               ; preds = %41
  %54 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %55 = call i64 @scm_need_cluster_request(%struct.scm_request* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %59 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %58, i32 0, i32 0
  %60 = call i32 @atomic_inc(i32* %59)
  %61 = load %struct.request*, %struct.request** %6, align 8
  %62 = call i32 @blk_start_request(%struct.request* %61)
  %63 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %64 = call i32 @scm_initiate_cluster_request(%struct.scm_request* %63)
  br label %84

65:                                               ; preds = %53
  %66 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %67 = call i32 @scm_request_prepare(%struct.scm_request* %66)
  %68 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %69 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %68, i32 0, i32 0
  %70 = call i32 @atomic_inc(i32* %69)
  %71 = load %struct.request*, %struct.request** %6, align 8
  %72 = call i32 @blk_start_request(%struct.request* %71)
  %73 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %74 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @scm_start_aob(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = call i32 @SCM_LOG(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.scm_request*, %struct.scm_request** %5, align 8
  %82 = call i32 @scm_request_requeue(%struct.scm_request* %81)
  br label %84

83:                                               ; preds = %65
  br label %14

84:                                               ; preds = %30, %37, %49, %57, %79, %14
  ret void
}

declare dso_local %struct.scm_blk_dev* @dev_get_drvdata(i32*) #1

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i32 @scm_permit_request(%struct.scm_blk_dev*, %struct.request*) #1

declare dso_local i32 @scm_ensure_queue_restart(%struct.scm_blk_dev*) #1

declare dso_local %struct.scm_request* @scm_request_fetch(...) #1

declare dso_local i32 @SCM_LOG(i32, i8*) #1

declare dso_local i32 @scm_request_init(%struct.scm_blk_dev*, %struct.scm_request*, %struct.request*) #1

declare dso_local i32 @scm_reserve_cluster(%struct.scm_request*) #1

declare dso_local i32 @scm_request_done(%struct.scm_request*) #1

declare dso_local i64 @scm_need_cluster_request(%struct.scm_request*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i32 @scm_initiate_cluster_request(%struct.scm_request*) #1

declare dso_local i32 @scm_request_prepare(%struct.scm_request*) #1

declare dso_local i32 @scm_start_aob(i32) #1

declare dso_local i32 @scm_request_requeue(%struct.scm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
