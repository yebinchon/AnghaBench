; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_lport_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_lport_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BNX2FC_MAX_RETRY_CNT = common dso_local global i32 0, align 4
@BNX2FC_MAX_RPORT_RETRY_CNT = common dso_local global i32 0, align 4
@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FCP_SPPF_RD_XRDY_DIS = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FCP_SPPF_CONF_COMPL = common dso_local global i32 0, align 4
@BNX2FC_RNID_HBA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*)* @bnx2fc_lport_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_lport_config(%struct.fc_lport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %5 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %4, i32 0, i32 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 7
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @BNX2FC_MAX_RETRY_CNT, align 4
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @BNX2FC_MAX_RPORT_RETRY_CNT, align 4
  %12 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %13 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 0
  store i32 2000, i32* %15, align 8
  %16 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 1
  store i32 10000, i32* %17, align 4
  %18 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %19 = load i32, i32* @FCP_SPPF_RD_XRDY_DIS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FCP_SPPF_CONF_COMPL, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %28 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %30 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %29, i32 0, i32 4
  %31 = call i32 @memset(%struct.TYPE_2__* %30, i32 0, i32 4)
  %32 = load i32, i32* @BNX2FC_RNID_HBA, align 4
  %33 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %34 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %37 = call i64 @fc_lport_init_stats(%struct.fc_lport* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %44 = call i32 @fc_lport_config(%struct.fc_lport* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @fc_lport_init_stats(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_config(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
