; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_get_mgmnt_traffic_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_get_mgmnt_traffic_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.mbox_params = type { i32, i32, i64*, i32* }

@MB_CMD_GET_MGMNT_TFK_CTL = common dso_local global i32 0, align 4
@MB_CMD_STS_GOOD = common dso_local global i64 0, align 8
@MB_CMD_STS_INVLD_CMD = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Command not supported by firmware version.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MB_CMD_STS_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to get MPI traffic control.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32*)* @ql_mb_get_mgmnt_traffic_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_mb_get_mgmnt_traffic_ctl(%struct.ql_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mbox_params, align 8
  %7 = alloca %struct.mbox_params*, align 8
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.mbox_params* %6, %struct.mbox_params** %7, align 8
  %9 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %10 = call i32 @memset(%struct.mbox_params* %9, i32 0, i32 24)
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %13 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %15 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @MB_CMD_GET_MGMNT_TFK_CTL, align 4
  %17 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %18 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %22 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %23 = call i32 @ql_mailbox_command(%struct.ql_adapter* %21, %struct.mbox_params* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %2
  %29 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %30 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MB_CMD_STS_GOOD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %38 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %28
  %45 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %46 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MB_CMD_STS_INVLD_CMD, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %54 = load i32, i32* @drv, align 4
  %55 = load i32, i32* @KERN_DEBUG, align 4
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_printk(%struct.ql_adapter* %53, i32 %54, i32 %55, i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %80

62:                                               ; preds = %44
  %63 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %64 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MB_CMD_STS_ERR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %72 = load i32, i32* @drv, align 4
  %73 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @netif_err(%struct.ql_adapter* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %70, %62
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %36, %26
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.mbox_params*, i32, i32) #1

declare dso_local i32 @ql_mailbox_command(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
