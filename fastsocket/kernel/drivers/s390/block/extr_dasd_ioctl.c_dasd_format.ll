; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_ioctl.c_dasd_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_ioctl.c_dasd_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, %struct.dasd_device* }
%struct.dasd_device = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*)* }
%struct.dasd_ccw_req = type { i32 }
%struct.format_data_t = type { i32, i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@DASD_STATE_BASIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s: The DASD cannot be formatted while it is enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DBF_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"formatting units %u to %u (%u B blocks) flags %u\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: Formatting unit %d failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*, %struct.format_data_t*)* @dasd_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_format(%struct.dasd_block* %0, %struct.format_data_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_block*, align 8
  %5 = alloca %struct.format_data_t*, align 8
  %6 = alloca %struct.dasd_ccw_req*, align 8
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.block_device*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %4, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %5, align 8
  %10 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %10, i32 0, i32 1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  store %struct.dasd_device* %12, %struct.dasd_device** %7, align 8
  %13 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %14 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*)*, %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*)** %16, align 8
  %18 = icmp eq %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*)* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %130

22:                                               ; preds = %2
  %23 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DASD_STATE_BASIC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @dev_name(i32* %32)
  %34 = call i32 @pr_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %130

37:                                               ; preds = %22
  %38 = load i32, i32* @DBF_NOTICE, align 4
  %39 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %40 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %41 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %44 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %47 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %50 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DBF_DEV_EVENT(i32 %38, %struct.dasd_device* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %54 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %37
  %58 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %59 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.block_device* @bdget_disk(i32 %60, i32 0)
  store %struct.block_device* %61, %struct.block_device** %9, align 8
  %62 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %63 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @blksize_bits(i32 %64)
  %66 = load %struct.block_device*, %struct.block_device** %9, align 8
  %67 = getelementptr inbounds %struct.block_device, %struct.block_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.block_device*, %struct.block_device** %9, align 8
  %71 = call i32 @bdput(%struct.block_device* %70)
  br label %72

72:                                               ; preds = %57, %37
  br label %73

73:                                               ; preds = %124, %72
  %74 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %75 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %78 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sle i32 %76, %79
  br i1 %80, label %81, label %129

81:                                               ; preds = %73
  %82 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %83 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*)*, %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*)** %85, align 8
  %87 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %88 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %89 = call %struct.dasd_ccw_req* %86(%struct.dasd_device* %87, %struct.format_data_t* %88)
  store %struct.dasd_ccw_req* %89, %struct.dasd_ccw_req** %6, align 8
  %90 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %91 = call i64 @IS_ERR(%struct.dasd_ccw_req* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %95 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %94)
  store i32 %95, i32* %3, align 4
  br label %130

96:                                               ; preds = %81
  %97 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %98 = call i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req* %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %100 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %101 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %99, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %96
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @ERESTARTSYS, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %113 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = call i32 @dev_name(i32* %115)
  %117 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %118 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %111, %106
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %130

124:                                              ; preds = %96
  %125 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %126 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %73

129:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %122, %93, %28, %19
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.block_device* @bdget_disk(i32, i32) #1

declare dso_local i32 @blksize_bits(i32) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
