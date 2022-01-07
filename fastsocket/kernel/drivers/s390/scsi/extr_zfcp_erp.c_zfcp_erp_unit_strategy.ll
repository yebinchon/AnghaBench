; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_unit_strategy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_unit_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.zfcp_unit* }
%struct.zfcp_unit = type { i32 }

@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_CLOSE_ONLY = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_unit_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_unit_strategy(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_unit*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %5 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %5, i32 0, i32 2
  %7 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  store %struct.zfcp_unit* %7, %struct.zfcp_unit** %4, align 8
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %55 [
    i32 130, label %11
    i32 129, label %24
    i32 128, label %45
  ]

11:                                               ; preds = %1
  %12 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %13 = call i32 @zfcp_erp_unit_strategy_clearstati(%struct.zfcp_unit* %12)
  %14 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %15 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %22 = call i32 @zfcp_erp_unit_strategy_close(%struct.zfcp_erp_action* %21)
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %1, %23
  %25 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %26 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %24
  %34 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %35 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %44 = call i32 @zfcp_erp_unit_strategy_open(%struct.zfcp_erp_action* %43)
  store i32 %44, i32* %2, align 4
  br label %57

45:                                               ; preds = %1
  %46 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %47 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %46, i32 0, i32 0
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %52, %42, %40, %31, %20
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @zfcp_erp_unit_strategy_clearstati(%struct.zfcp_unit*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_unit_strategy_close(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_unit_strategy_open(%struct.zfcp_erp_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
