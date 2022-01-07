; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_chip_ae_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_chip_ae_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.ib_ae_iocb_rsp = type { i32, i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Management Processor Fatal Error.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Multiple CAM hits lookup occurred.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"This event shouldn't occur.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Soft ECC error detected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"PCI error occurred when reading anonymous buffers from rx_ring %d.\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Unexpected event %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.ib_ae_iocb_rsp*)* @ql_process_chip_ae_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_chip_ae_intr(%struct.ql_adapter* %0, %struct.ib_ae_iocb_rsp* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.ib_ae_iocb_rsp*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.ib_ae_iocb_rsp* %1, %struct.ib_ae_iocb_rsp** %4, align 8
  %5 = load %struct.ib_ae_iocb_rsp*, %struct.ib_ae_iocb_rsp** %4, align 8
  %6 = getelementptr inbounds %struct.ib_ae_iocb_rsp, %struct.ib_ae_iocb_rsp* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %45 [
    i32 130, label %8
    i32 131, label %17
    i32 128, label %28
    i32 129, label %35
  ]

8:                                                ; preds = %2
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %10 = load i32, i32* @rx_err, align 4
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %9, i32 %10, i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %16 = call i32 @ql_queue_fw_error(%struct.ql_adapter* %15)
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @netdev_err(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @netdev_err(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %27 = call i32 @ql_queue_asic_error(%struct.ql_adapter* %26)
  br label %57

28:                                               ; preds = %2
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @netdev_err(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %34 = call i32 @ql_queue_asic_error(%struct.ql_adapter* %33)
  br label %57

35:                                               ; preds = %2
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_ae_iocb_rsp*, %struct.ib_ae_iocb_rsp** %4, align 8
  %40 = getelementptr inbounds %struct.ib_ae_iocb_rsp, %struct.ib_ae_iocb_rsp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @netdev_err(i32 %38, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = call i32 @ql_queue_asic_error(%struct.ql_adapter* %43)
  br label %57

45:                                               ; preds = %2
  %46 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %47 = load i32, i32* @drv, align 4
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_ae_iocb_rsp*, %struct.ib_ae_iocb_rsp** %4, align 8
  %52 = getelementptr inbounds %struct.ib_ae_iocb_rsp, %struct.ib_ae_iocb_rsp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %46, i32 %47, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %56 = call i32 @ql_queue_asic_error(%struct.ql_adapter* %55)
  br label %57

57:                                               ; preds = %8, %17, %45, %35, %28
  ret void
}

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @ql_queue_fw_error(%struct.ql_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @ql_queue_asic_error(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
