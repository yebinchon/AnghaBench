; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_statechange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_statechange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.zfcp_unit*, %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.zfcp_unit = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ersscg1\00", align 1
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ersscg2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ersscg3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*, i32)* @zfcp_erp_strategy_statechange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy_statechange(%struct.zfcp_erp_action* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_erp_action*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.zfcp_port*, align 8
  %9 = alloca %struct.zfcp_unit*, align 8
  %10 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %15 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %14, i32 0, i32 4
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %15, align 8
  store %struct.zfcp_adapter* %16, %struct.zfcp_adapter** %7, align 8
  %17 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %17, i32 0, i32 3
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %18, align 8
  store %struct.zfcp_port* %19, %struct.zfcp_port** %8, align 8
  %20 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %21 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %20, i32 0, i32 2
  %22 = load %struct.zfcp_unit*, %struct.zfcp_unit** %21, align 8
  store %struct.zfcp_unit* %22, %struct.zfcp_unit** %9, align 8
  %23 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %24 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %63 [
    i32 131, label %27
    i32 129, label %39
    i32 130, label %39
    i32 128, label %51
  ]

27:                                               ; preds = %2
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @zfcp_erp_strat_change_det(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %35 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %36 = call i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %34, i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %37 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %27
  br label %63

39:                                               ; preds = %2, %2
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %41 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %40, i32 0, i32 0
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @zfcp_erp_strat_change_det(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %47 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %48 = call i32 @_zfcp_erp_port_reopen(%struct.zfcp_port* %46, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %49 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %39
  br label %63

51:                                               ; preds = %2
  %52 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %53 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %52, i32 0, i32 0
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @zfcp_erp_strat_change_det(i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %59 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %60 = call i32 @_zfcp_erp_unit_reopen(%struct.zfcp_unit* %58, i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %61 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %2, %62, %50, %38
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %57, %45, %33
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @zfcp_erp_strat_change_det(i32*, i32) #1

declare dso_local i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, i32*) #1

declare dso_local i32 @_zfcp_erp_port_reopen(%struct.zfcp_port*, i32, i8*, i32*) #1

declare dso_local i32 @_zfcp_erp_unit_reopen(%struct.zfcp_unit*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
