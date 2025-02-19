; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_siosl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_siosl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, i32 }

@ZFCP_STATUS_ADAPTER_SIOSL_ISSUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_qdio_siosl(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %2, align 8
  %4 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %4, i32 0, i32 0
  %6 = call i32 @atomic_read(i32* %5)
  %7 = load i32, i32* @ZFCP_STATUS_ADAPTER_SIOSL_ISSUED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ccw_device_siosl(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ZFCP_STATUS_ADAPTER_SIOSL_ISSUED, align 4
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  %22 = call i32 @atomic_set_mask(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %10, %18, %11
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ccw_device_siosl(i32) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
