; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ZFCP_STATUS_COMMON_NOESC = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@ZFCP_MAX_ERPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERP failed for remote port 0x%016Lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erpsck1\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_port*, i32)* @zfcp_erp_strategy_check_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy_check_port(%struct.zfcp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca i32, align 4
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %46 [
    i32 128, label %6
    i32 129, label %12
  ]

6:                                                ; preds = %2
  %7 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %7, i32 0, i32 3
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %11 = call i32 @zfcp_erp_port_unblock(%struct.zfcp_port* %10)
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  %16 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %21 = call i32 @zfcp_erp_port_block(%struct.zfcp_port* %20, i32 0)
  %22 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %24, i32 0, i32 3
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %28 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %27, i32 0, i32 3
  %29 = call i32 @atomic_read(i32* %28)
  %30 = load i32, i32* @ZFCP_MAX_ERPS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %34 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %40 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %44 = call i32 @zfcp_erp_port_failed(%struct.zfcp_port* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %45

45:                                               ; preds = %32, %23
  br label %46

46:                                               ; preds = %2, %45, %6
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %48 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %55 = call i32 @zfcp_erp_port_block(%struct.zfcp_port* %54, i32 0)
  %56 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @zfcp_erp_port_unblock(%struct.zfcp_port*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_port_block(%struct.zfcp_port*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @zfcp_erp_port_failed(%struct.zfcp_port*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
