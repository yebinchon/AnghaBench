; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_nx_fw_cmd_set_gbe_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_nx_fw_cmd_set_gbe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }
%struct.netxen_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32 }

@NX_CDRP_CMD_CONFIG_GBE_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_fw_cmd_set_gbe_port(%struct.netxen_adapter* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.netxen_cmd_args, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i32 @memset(%struct.netxen_cmd_args* %9, i32 0, i32 32)
  %11 = load i32, i32* @NX_CDRP_CMD_CONFIG_GBE_PORT, align 4
  %12 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %24 = call i32 @netxen_issue_cmd(%struct.netxen_adapter* %23, %struct.netxen_cmd_args* %9)
  ret i32 %24
}

declare dso_local i32 @memset(%struct.netxen_cmd_args*, i32, i32) #1

declare dso_local i32 @netxen_issue_cmd(%struct.netxen_adapter*, %struct.netxen_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
