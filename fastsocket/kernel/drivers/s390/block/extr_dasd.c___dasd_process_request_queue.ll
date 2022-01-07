; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_process_request_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_process_request_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, %struct.request_queue*, %struct.dasd_device* }
%struct.request_queue = type { i32 }
%struct.dasd_device = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* }
%struct.dasd_ccw_req = type { i32, i32, i8* }
%struct.request = type { i32 }

@DASD_STATE_READY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Rejecting write request %p\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DASD_STOPPED_PENDING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"CCW creation failed (rc=%ld) on request %p\00", align 1
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_block*)* @__dasd_process_request_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dasd_process_request_queue(%struct.dasd_block* %0) #0 {
  %2 = alloca %struct.dasd_block*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i64, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %2, align 8
  %8 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %8, i32 0, i32 1
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %3, align 8
  %11 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %12 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %11, i32 0, i32 2
  %13 = load %struct.dasd_device*, %struct.dasd_device** %12, align 8
  store %struct.dasd_device* %13, %struct.dasd_device** %6, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = icmp eq %struct.request_queue* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %162

17:                                               ; preds = %1
  %18 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DASD_STATE_READY, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %30, %23
  %25 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %25, i32 0, i32 1
  %27 = load %struct.request_queue*, %struct.request_queue** %26, align 8
  %28 = call %struct.request* @blk_fetch_request(%struct.request_queue* %27)
  store %struct.request* %28, %struct.request** %4, align 8
  %29 = icmp ne %struct.request* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @__blk_end_request_all(%struct.request* %31, i32 %33)
  br label %24

35:                                               ; preds = %24
  br label %162

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %143, %130, %59, %36
  %38 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %39 = call i32 @blk_queue_plugged(%struct.request_queue* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %43 = call %struct.request* @blk_peek_request(%struct.request_queue* %42)
  store %struct.request* %43, %struct.request** %4, align 8
  %44 = icmp ne %struct.request* %43, null
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %162

47:                                               ; preds = %45
  %48 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %49 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.request*, %struct.request** %4, align 8
  %56 = call i64 @rq_data_dir(%struct.request* %55)
  %57 = load i64, i64* @WRITE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* @DBF_ERR, align 4
  %61 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %62 = load %struct.request*, %struct.request** %4, align 8
  %63 = ptrtoint %struct.request* %62 to i32
  %64 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %60, %struct.dasd_device* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.request*, %struct.request** %4, align 8
  %66 = call i32 @blk_start_request(%struct.request* %65)
  %67 = load %struct.request*, %struct.request** %4, align 8
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @__blk_end_request_all(%struct.request* %67, i32 %69)
  br label %37

71:                                               ; preds = %54, %47
  %72 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %73 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)*, %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)** %75, align 8
  %77 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %78 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %79 = load %struct.request*, %struct.request** %4, align 8
  %80 = call %struct.dasd_ccw_req* %76(%struct.dasd_device* %77, %struct.dasd_block* %78, %struct.request* %79)
  store %struct.dasd_ccw_req* %80, %struct.dasd_ccw_req** %5, align 8
  %81 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %82 = call i64 @IS_ERR(%struct.dasd_ccw_req* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %143

84:                                               ; preds = %71
  %85 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %86 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %85)
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %162

91:                                               ; preds = %84
  %92 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %93 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %162

98:                                               ; preds = %91
  %99 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %100 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %99)
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %98
  %105 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %106 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %105, i32 0, i32 0
  %107 = call i32 @list_empty(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  br label %162

110:                                              ; preds = %104
  %111 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %112 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @get_ccwdev_lock(i32 %113)
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @spin_lock_irqsave(i32 %114, i64 %115)
  %117 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %118 = load i32, i32* @DASD_STOPPED_PENDING, align 4
  %119 = call i32 @dasd_device_set_stop_bits(%struct.dasd_device* %117, i32 %118)
  %120 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %121 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @get_ccwdev_lock(i32 %122)
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32 %123, i64 %124)
  %126 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %127 = load i32, i32* @HZ, align 4
  %128 = sdiv i32 %127, 2
  %129 = call i32 @dasd_block_set_timer(%struct.dasd_block* %126, i32 %128)
  br label %162

130:                                              ; preds = %98
  %131 = load i32, i32* @DBF_ERR, align 4
  %132 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %133 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %134 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %133)
  %135 = load %struct.request*, %struct.request** %4, align 8
  %136 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %131, %struct.dasd_device* %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %134, %struct.request* %135)
  %137 = load %struct.request*, %struct.request** %4, align 8
  %138 = call i32 @blk_start_request(%struct.request* %137)
  %139 = load %struct.request*, %struct.request** %4, align 8
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i32 @__blk_end_request_all(%struct.request* %139, i32 %141)
  br label %37

143:                                              ; preds = %71
  %144 = load %struct.request*, %struct.request** %4, align 8
  %145 = bitcast %struct.request* %144 to i8*
  %146 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %147 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @DASD_CQR_FILLED, align 4
  %149 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %150 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.request*, %struct.request** %4, align 8
  %152 = call i32 @blk_start_request(%struct.request* %151)
  %153 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %154 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %153, i32 0, i32 0
  %155 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %156 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %155, i32 0, i32 0
  %157 = call i32 @list_add_tail(i32* %154, i32* %156)
  %158 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %159 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %160 = load %struct.request*, %struct.request** %4, align 8
  %161 = call i32 @dasd_profile_start(%struct.dasd_block* %158, %struct.dasd_ccw_req* %159, %struct.request* %160)
  br label %37

162:                                              ; preds = %16, %35, %110, %109, %97, %90, %45
  ret void
}

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @blk_queue_plugged(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, ...) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @dasd_device_set_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_block_set_timer(%struct.dasd_block*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dasd_profile_start(%struct.dasd_block*, %struct.dasd_ccw_req*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
