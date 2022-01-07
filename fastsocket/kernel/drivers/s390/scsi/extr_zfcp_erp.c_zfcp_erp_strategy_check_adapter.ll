; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ZFCP_MAX_ERPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ERP cannot recover an error on the FCP device\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erasck1\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_adapter*, i32)* @zfcp_erp_strategy_check_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy_check_adapter(%struct.zfcp_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %30 [
    i32 128, label %6
    i32 129, label %12
  ]

6:                                                ; preds = %2
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %7, i32 0, i32 2
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %11 = call i32 @zfcp_erp_adapter_unblock(%struct.zfcp_adapter* %10)
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 2
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 2
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @ZFCP_MAX_ERPS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %28 = call i32 @zfcp_erp_adapter_failed(%struct.zfcp_adapter* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %29

29:                                               ; preds = %21, %12
  br label %30

30:                                               ; preds = %2, %29, %6
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = call i32 @atomic_read(i32* %32)
  %34 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %39 = call i32 @zfcp_erp_adapter_block(%struct.zfcp_adapter* %38, i32 0)
  %40 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @zfcp_erp_adapter_unblock(%struct.zfcp_adapter*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_adapter_failed(%struct.zfcp_adapter*, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_adapter_block(%struct.zfcp_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
