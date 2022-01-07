; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_set_mgmnt_traffic_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_set_mgmnt_traffic_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.mbox_params = type { i32, i32, i64*, i32* }

@MB_CMD_SET_MGMNT_TFK_CTL = common dso_local global i32 0, align 4
@MB_CMD_STS_GOOD = common dso_local global i64 0, align 8
@MB_CMD_STS_INVLD_CMD = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Command not supported by firmware version.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MB_CMD_STS_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Command parameters make no change.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_mb_set_mgmnt_traffic_ctl(%struct.ql_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbox_params, align 8
  %7 = alloca %struct.mbox_params*, align 8
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mbox_params* %6, %struct.mbox_params** %7, align 8
  %9 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %10 = call i32 @memset(%struct.mbox_params* %9, i32 0, i32 24)
  %11 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %12 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %14 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = load i32, i32* @MB_CMD_SET_MGMNT_TFK_CTL, align 4
  %16 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %17 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %22 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %27 = call i32 @ql_mailbox_command(%struct.ql_adapter* %25, %struct.mbox_params* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %2
  %33 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %34 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MB_CMD_STS_GOOD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %78

42:                                               ; preds = %32
  %43 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %44 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MB_CMD_STS_INVLD_CMD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %52 = load i32, i32* @drv, align 4
  %53 = load i32, i32* @KERN_DEBUG, align 4
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @netif_printk(%struct.ql_adapter* %51, i32 %52, i32 %53, i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %76

60:                                               ; preds = %42
  %61 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %62 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MB_CMD_STS_ERR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %70 = load i32, i32* @drv, align 4
  %71 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %72 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @netif_err(%struct.ql_adapter* %69, i32 %70, i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %68, %60
  br label %76

76:                                               ; preds = %75, %50
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %40, %30
  %79 = load i32, i32* %3, align 4
  ret i32 %79
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
