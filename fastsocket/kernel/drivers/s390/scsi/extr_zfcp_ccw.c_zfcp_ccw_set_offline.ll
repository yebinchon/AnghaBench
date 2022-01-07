; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_set_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"ccsoff1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @zfcp_ccw_set_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_ccw_set_offline(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = call %struct.zfcp_adapter* @dev_get_drvdata(i32* %6)
  store %struct.zfcp_adapter* %7, %struct.zfcp_adapter** %3, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %9 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %8, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %11 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %10)
  %12 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.zfcp_adapter* @dev_get_drvdata(i32*) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
