; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_get_rdac_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_get_rdac_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32 }
%struct.scsi_device = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"get_rdac_req: blk_get_request failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"get_rdac_req: blk_rq_map_kern failed.\0A\00", align 1
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@RDAC_RETRIES = common dso_local global i32 0, align 4
@RDAC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.scsi_device*, i8*, i32, i32)* @get_rdac_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @get_rdac_req(%struct.scsi_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.request*, align 8
  %11 = alloca %struct.request_queue*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %11, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = call %struct.request* @blk_get_request(%struct.request_queue* %15, i32 %16, i32 %17)
  store %struct.request* %18, %struct.request** %10, align 8
  %19 = load %struct.request*, %struct.request** %10, align 8
  %20 = icmp ne %struct.request* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %24 = call i32 @sdev_printk(i32 %22, %struct.scsi_device* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.request* null, %struct.request** %5, align 8
  br label %62

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %30 = load %struct.request*, %struct.request** %10, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @GFP_NOIO, align 4
  %34 = call i64 @blk_rq_map_kern(%struct.request_queue* %29, %struct.request* %30, i8* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.request*, %struct.request** %10, align 8
  %38 = call i32 @blk_put_request(%struct.request* %37)
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %41 = call i32 @sdev_printk(i32 %39, %struct.scsi_device* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store %struct.request* null, %struct.request** %5, align 8
  br label %62

42:                                               ; preds = %28, %25
  %43 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %44 = load %struct.request*, %struct.request** %10, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %47 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.request*, %struct.request** %10, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @RDAC_RETRIES, align 4
  %56 = load %struct.request*, %struct.request** %10, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @RDAC_TIMEOUT, align 4
  %59 = load %struct.request*, %struct.request** %10, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %61, %struct.request** %5, align 8
  br label %62

62:                                               ; preds = %42, %36, %21
  %63 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %63
}

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local i64 @blk_rq_map_kern(%struct.request_queue*, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
