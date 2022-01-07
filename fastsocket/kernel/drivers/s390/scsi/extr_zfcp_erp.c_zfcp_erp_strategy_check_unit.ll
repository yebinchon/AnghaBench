; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ZFCP_MAX_ERPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ERP failed for unit 0x%016Lx on port 0x%016Lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erusck1\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_unit*, i32)* @zfcp_erp_strategy_check_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy_check_unit(%struct.zfcp_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_unit*, align 8
  %4 = alloca i32, align 4
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %42 [
    i32 128, label %6
    i32 129, label %12
  ]

6:                                                ; preds = %2
  %7 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %7, i32 0, i32 3
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %11 = call i32 @zfcp_erp_unit_unblock(%struct.zfcp_unit* %10)
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %13, i32 0, i32 3
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %16, i32 0, i32 3
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @ZFCP_MAX_ERPS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %31 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %34 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %37)
  %39 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %40 = call i32 @zfcp_erp_unit_failed(%struct.zfcp_unit* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %41

41:                                               ; preds = %21, %12
  br label %42

42:                                               ; preds = %2, %41, %6
  %43 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %44 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %43, i32 0, i32 0
  %45 = call i32 @atomic_read(i32* %44)
  %46 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %51 = call i32 @zfcp_erp_unit_block(%struct.zfcp_unit* %50, i32 0)
  %52 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @zfcp_erp_unit_unblock(%struct.zfcp_unit*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @zfcp_erp_unit_failed(%struct.zfcp_unit*, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_unit_block(%struct.zfcp_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
