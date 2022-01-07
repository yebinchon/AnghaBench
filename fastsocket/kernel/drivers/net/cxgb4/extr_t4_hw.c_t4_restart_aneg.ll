; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_restart_aneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_restart_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_port_cmd = type { %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@FW_PORT_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_EXEC = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG = common dso_local global i32 0, align 4
@FW_PORT_CAP_ANEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_restart_aneg(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_port_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.fw_port_cmd* %7, i32 0, i32 24)
  %9 = load i32, i32* @FW_PORT_CMD, align 4
  %10 = call i32 @FW_CMD_OP(i32 %9)
  %11 = load i32, i32* @FW_CMD_REQUEST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FW_CMD_EXEC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @FW_PORT_CMD_PORTID(i32 %15)
  %17 = or i32 %14, %16
  %18 = call i8* @htonl(i32 %17)
  %19 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @FW_PORT_ACTION_L1_CFG, align 4
  %21 = call i32 @FW_PORT_CMD_ACTION(i32 %20)
  %22 = call i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %7)
  %23 = or i32 %21, %22
  %24 = call i8* @htonl(i32 %23)
  %25 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @FW_PORT_CAP_ANEG, align 4
  %27 = call i8* @htonl(i32 %26)
  %28 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @t4_wr_mbox(%struct.adapter* %31, i32 %32, %struct.fw_port_cmd* %7, i32 24, i32* null)
  ret i32 %33
}

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP(i32) #1

declare dso_local i32 @FW_PORT_CMD_PORTID(i32) #1

declare dso_local i32 @FW_PORT_CMD_ACTION(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
