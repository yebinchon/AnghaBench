; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c__zfcp_erp_adapter_reopen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c__zfcp_erp_adapter_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"erareo1\00", align 1
@EIO = common dso_local global i32 0, align 4
@ZFCP_ERP_ACTION_REOPEN_ADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_adapter*, i32, i8*, i8*)* @_zfcp_erp_adapter_reopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @zfcp_erp_adapter_block(%struct.zfcp_adapter* %10, i32 %11)
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %14 = call i32 @zfcp_scsi_schedule_rports_block(%struct.zfcp_adapter* %13)
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %23 = call i32 @zfcp_erp_adapter_failed(%struct.zfcp_adapter* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %4
  %27 = load i32, i32* @ZFCP_ERP_ACTION_REOPEN_ADAPTER, align 4
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @zfcp_erp_action_enqueue(i32 %27, %struct.zfcp_adapter* %28, i32* null, i32* null, i8* %29, i8* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @zfcp_erp_adapter_block(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_scsi_schedule_rports_block(%struct.zfcp_adapter*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_adapter_failed(%struct.zfcp_adapter*, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_action_enqueue(i32, %struct.zfcp_adapter*, i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
