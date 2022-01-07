; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_cfdc.c_zfcp_cfdc_get_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_cfdc.c_zfcp_cfdc_get_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32 }
%struct.ccw_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"0.0.%04x\00", align 1
@zfcp_ccw_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_adapter* (i32)* @zfcp_cfdc_get_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_adapter* @zfcp_cfdc_get_adapter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [9 x i8], align 1
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.zfcp_adapter* null, %struct.zfcp_adapter** %5, align 8
  %6 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @snprintf(i8* %6, i32 9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %10 = call %struct.ccw_device* @get_ccwdev_by_busid(i32* @zfcp_ccw_driver, i8* %9)
  store %struct.ccw_device* %10, %struct.ccw_device** %4, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %12 = icmp ne %struct.ccw_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = call %struct.zfcp_adapter* @dev_get_drvdata(i32* %16)
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %5, align 8
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %19 = icmp ne %struct.zfcp_adapter* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %23 = call i32 @zfcp_adapter_get(%struct.zfcp_adapter* %22)
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = call i32 @put_device(i32* %26)
  br label %28

28:                                               ; preds = %24, %13
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  ret %struct.zfcp_adapter* %29
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.ccw_device* @get_ccwdev_by_busid(i32*, i8*) #1

declare dso_local %struct.zfcp_adapter* @dev_get_drvdata(i32*) #1

declare dso_local i32 @zfcp_adapter_get(%struct.zfcp_adapter*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
