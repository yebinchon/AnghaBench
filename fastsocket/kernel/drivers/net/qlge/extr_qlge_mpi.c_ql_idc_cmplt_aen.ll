; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_idc_cmplt_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_idc_cmplt_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, %struct.mbox_params }
%struct.mbox_params = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not read MPI, resetting RISC!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_idc_cmplt_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_idc_cmplt_aen(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_params*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %5, i32 0, i32 2
  store %struct.mbox_params* %6, %struct.mbox_params** %4, align 8
  %7 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %8 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %7, i32 0, i32 0
  store i32 4, i32* %8, align 4
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %11 = call i32 @ql_get_mb_sts(%struct.ql_adapter* %9, %struct.mbox_params* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %16 = load i32, i32* @drv, align 4
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_err(%struct.ql_adapter* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %22 = call i32 @ql_queue_fw_error(%struct.ql_adapter* %21)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ql_get_mb_sts(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_queue_fw_error(%struct.ql_adapter*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
