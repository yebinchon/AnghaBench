; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_nx_fw_cmd_set_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_nx_fw_cmd_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }
%struct.netxen_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@NX_CDRP_CMD_WRITE_PHY = common dso_local global i32 0, align 4
@NX_RCODE_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_fw_cmd_set_phy(%struct.netxen_adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netxen_cmd_args, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i32 @memset(%struct.netxen_cmd_args* %9, i32 0, i32 32)
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @NX_CDRP_CMD_WRITE_PHY, align 4
  %20 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %23 = call i64 @netxen_issue_cmd(%struct.netxen_adapter* %22, %struct.netxen_cmd_args* %9)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @NX_RCODE_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.netxen_cmd_args*, i32, i32) #1

declare dso_local i64 @netxen_issue_cmd(%struct.netxen_adapter*, %struct.netxen_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
