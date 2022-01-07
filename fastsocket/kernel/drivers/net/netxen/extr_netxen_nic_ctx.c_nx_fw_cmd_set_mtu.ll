; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_nx_fw_cmd_set_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_nx_fw_cmd_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.netxen_recv_context }
%struct.netxen_recv_context = type { i64, i32 }
%struct.netxen_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@NX_RCODE_SUCCESS = common dso_local global i64 0, align 8
@NX_CDRP_CMD_SET_MTU = common dso_local global i32 0, align 4
@NX_HOST_CTX_STATE_ACTIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_fw_cmd_set_mtu(%struct.netxen_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.netxen_recv_context*, align 8
  %8 = alloca %struct.netxen_cmd_args, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @NX_RCODE_SUCCESS, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 0
  store %struct.netxen_recv_context* %11, %struct.netxen_recv_context** %7, align 8
  %12 = call i32 @memset(%struct.netxen_cmd_args* %8, i32 0, i32 24)
  %13 = load i32, i32* @NX_CDRP_CMD_SET_MTU, align 4
  %14 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %8, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %7, align 8
  %17 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %8, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = getelementptr inbounds %struct.netxen_cmd_args, %struct.netxen_cmd_args* %8, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %7, align 8
  %27 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NX_HOST_CTX_STATE_ACTIVE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %33 = call i32 @netxen_issue_cmd(%struct.netxen_adapter* %32, %struct.netxen_cmd_args* %8)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @NX_RCODE_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.netxen_cmd_args*, i32, i32) #1

declare dso_local i32 @netxen_issue_cmd(%struct.netxen_adapter*, %struct.netxen_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
