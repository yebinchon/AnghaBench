; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_port_strategy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_port_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.zfcp_port* }
%struct.zfcp_port = type { i32 }

@ZFCP_STATUS_COMMON_NOESC = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_CLOSE_ONLY = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_port_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_port_strategy(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 2
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  store %struct.zfcp_port* %8, %struct.zfcp_port** %4, align 8
  %9 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %10 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %9, i32 0, i32 0
  %11 = call i32 @atomic_read(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %46

22:                                               ; preds = %16, %1
  %23 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %24 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %45 [
    i32 128, label %26
    i32 129, label %37
  ]

26:                                               ; preds = %22
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %28 = call i32 @zfcp_erp_port_strategy_clearstati(%struct.zfcp_port* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %35 = call i32 @zfcp_erp_port_strategy_close(%struct.zfcp_erp_action* %34)
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %26
  br label %45

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %22, %44, %36
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %48 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %57 = call i32 @zfcp_erp_port_strategy_open_common(%struct.zfcp_erp_action* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %53, %42, %33
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_port_strategy_clearstati(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_erp_port_strategy_close(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_port_strategy_open_common(%struct.zfcp_erp_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
