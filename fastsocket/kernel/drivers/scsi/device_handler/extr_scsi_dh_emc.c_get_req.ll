; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_get_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"get_req: blk_get_request failed\00", align 1
@CLARIION_BUFFER_SIZE = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@CLARIION_TIMEOUT = common dso_local global i32 0, align 4
@CLARIION_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.scsi_device*, i32, i8*)* @get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @get_req(%struct.scsi_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 130
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @WRITE, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @READ, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load i32, i32* @GFP_NOIO, align 4
  %22 = call %struct.request* @blk_get_request(i32 %12, i32 %20, i32 %21)
  store %struct.request* %22, %struct.request** %8, align 8
  %23 = load %struct.request*, %struct.request** %8, align 8
  %24 = icmp ne %struct.request* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %28 = call i32 @sdev_printk(i32 %26, %struct.scsi_device* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.request* null, %struct.request** %4, align 8
  br label %105

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @COMMAND_SIZE(i32 %30)
  %32 = load %struct.request*, %struct.request** %8, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.request*, %struct.request** %8, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %70 [
    i32 129, label %40
    i32 128, label %50
    i32 130, label %60
  ]

40:                                               ; preds = %29
  store i32 4, i32* %9, align 4
  %41 = load %struct.request*, %struct.request** %8, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 16, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %45, i32* %49, align 4
  br label %72

50:                                               ; preds = %29
  store i32 4, i32* %9, align 4
  %51 = load %struct.request*, %struct.request** %8, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 16, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.request*, %struct.request** %8, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  store i32 %55, i32* %59, align 4
  br label %72

60:                                               ; preds = %29
  %61 = load i32, i32* @CLARIION_BUFFER_SIZE, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.request*, %struct.request** %8, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %62, i32* %66, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @memset(i8* %67, i32 0, i32 %68)
  br label %72

70:                                               ; preds = %29
  %71 = call i32 @BUG_ON(i32 1)
  br label %72

72:                                               ; preds = %70, %60, %50, %40
  %73 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %74 = load %struct.request*, %struct.request** %8, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %77 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.request*, %struct.request** %8, align 8
  %82 = getelementptr inbounds %struct.request, %struct.request* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @CLARIION_TIMEOUT, align 4
  %86 = load %struct.request*, %struct.request** %8, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @CLARIION_RETRIES, align 4
  %89 = load %struct.request*, %struct.request** %8, align 8
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.request*, %struct.request** %8, align 8
  %92 = getelementptr inbounds %struct.request, %struct.request* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.request*, %struct.request** %8, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @GFP_NOIO, align 4
  %98 = call i64 @blk_rq_map_kern(i32 %93, %struct.request* %94, i8* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %72
  %101 = load %struct.request*, %struct.request** %8, align 8
  %102 = call i32 @blk_put_request(%struct.request* %101)
  store %struct.request* null, %struct.request** %4, align 8
  br label %105

103:                                              ; preds = %72
  %104 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %104, %struct.request** %4, align 8
  br label %105

105:                                              ; preds = %103, %100, %25
  %106 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %106
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @blk_rq_map_kern(i32, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
