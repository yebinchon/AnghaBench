; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mailbox_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mailbox_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.mbox_params = type { i64*, i32* }

@INTR_MASK = common dso_local global i32 0, align 4
@INTR_MASK_PI = common dso_local global i32 0, align 4
@MB_CMD_MAKE_SYS_ERR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MAILBOX_TIMEOUT = common dso_local global i64 0, align 8
@MB_CMD_STS_GOOD = common dso_local global i32 0, align 4
@MB_CMD_STS_INTRMDT = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Timed out waiting for mailbox complete.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CSR = common dso_local global i32 0, align 4
@CSR_CMD_CLR_R2PCI_INT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.mbox_params*)* @ql_mailbox_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_mailbox_command(%struct.ql_adapter* %0, %struct.mbox_params* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.mbox_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.mbox_params* %1, %struct.mbox_params** %4, align 8
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %11 = load i32, i32* @INTR_MASK, align 4
  %12 = load i32, i32* @INTR_MASK_PI, align 4
  %13 = shl i32 %12, 16
  %14 = call i32 @ql_write32(%struct.ql_adapter* %10, i32 %11, i32 %13)
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %16 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %17 = call i32 @ql_exec_mb_cmd(%struct.ql_adapter* %15, %struct.mbox_params* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %109

21:                                               ; preds = %2
  %22 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %23 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MB_CMD_MAKE_SYS_ERR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %109

30:                                               ; preds = %21
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @HZ, align 8
  %33 = load i64, i64* @MAILBOX_TIMEOUT, align 8
  %34 = mul i64 %32, %33
  %35 = add i64 %31, %34
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %69, %30
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = call i32 @ql_wait_mbx_cmd_cmplt(%struct.ql_adapter* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %69

42:                                               ; preds = %36
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %45 = call i32 @ql_mpi_handler(%struct.ql_adapter* %43, %struct.mbox_params* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %109

49:                                               ; preds = %42
  %50 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %51 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 61440
  %56 = load i32, i32* @MB_CMD_STS_GOOD, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %60 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 61440
  %65 = load i32, i32* @MB_CMD_STS_INTRMDT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58, %49
  br label %83

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @time_before(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %36, label %74

74:                                               ; preds = %69
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %76 = load i32, i32* @drv, align 4
  %77 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @netif_err(%struct.ql_adapter* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %109

83:                                               ; preds = %67
  %84 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %85 = load i32, i32* @CSR, align 4
  %86 = load i32, i32* @CSR_CMD_CLR_R2PCI_INT, align 4
  %87 = call i32 @ql_write32(%struct.ql_adapter* %84, i32 %85, i32 %86)
  %88 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %89 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 61440
  %94 = load i32, i32* @MB_CMD_STS_GOOD, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %83
  %97 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %98 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 61440
  %103 = load i32, i32* @MB_CMD_STS_INTRMDT, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %96, %83
  br label %109

109:                                              ; preds = %108, %74, %48, %29, %20
  %110 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %111 = load i32, i32* @INTR_MASK, align 4
  %112 = load i32, i32* @INTR_MASK_PI, align 4
  %113 = shl i32 %112, 16
  %114 = load i32, i32* @INTR_MASK_PI, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @ql_write32(%struct.ql_adapter* %110, i32 %111, i32 %115)
  %117 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_exec_mb_cmd(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_wait_mbx_cmd_cmplt(%struct.ql_adapter*) #1

declare dso_local i32 @ql_mpi_handler(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
