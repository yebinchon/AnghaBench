; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_link_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.link_config = type { i32, i32, i32, i64, i32, i32, i64 }
%struct.fw_port_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@FW_PORT_MDI_AUTO = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@FW_PORT_CAP_FC_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@FW_PORT_CAP_FC_TX = common dso_local global i32 0, align 4
@FW_PORT_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_EXEC = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG = common dso_local global i32 0, align 4
@FW_PORT_CAP_ANEG = common dso_local global i32 0, align 4
@ADVERT_MASK = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_link_start(%struct.adapter* %0, i32 %1, i32 %2, %struct.link_config* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.link_config*, align 8
  %9 = alloca %struct.fw_port_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.link_config* %3, %struct.link_config** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @FW_PORT_MDI_AUTO, align 4
  %13 = call i32 @FW_PORT_MDI(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.link_config*, %struct.link_config** %8, align 8
  %15 = getelementptr inbounds %struct.link_config, %struct.link_config* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.link_config*, %struct.link_config** %8, align 8
  %17 = getelementptr inbounds %struct.link_config, %struct.link_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PAUSE_RX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @FW_PORT_CAP_FC_RX, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load %struct.link_config*, %struct.link_config** %8, align 8
  %28 = getelementptr inbounds %struct.link_config, %struct.link_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PAUSE_TX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @FW_PORT_CAP_FC_TX, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = call i32 @memset(%struct.fw_port_cmd* %9, i32 0, i32 24)
  %39 = load i32, i32* @FW_PORT_CMD, align 4
  %40 = call i32 @FW_CMD_OP(i32 %39)
  %41 = load i32, i32* @FW_CMD_REQUEST, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FW_CMD_EXEC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @FW_PORT_CMD_PORTID(i32 %45)
  %47 = or i32 %44, %46
  %48 = call i8* @htonl(i32 %47)
  %49 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @FW_PORT_ACTION_L1_CFG, align 4
  %51 = call i32 @FW_PORT_CMD_ACTION(i32 %50)
  %52 = call i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %9)
  %53 = or i32 %51, %52
  %54 = call i8* @htonl(i32 %53)
  %55 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load %struct.link_config*, %struct.link_config** %8, align 8
  %57 = getelementptr inbounds %struct.link_config, %struct.link_config* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FW_PORT_CAP_ANEG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %37
  %63 = load %struct.link_config*, %struct.link_config** %8, align 8
  %64 = getelementptr inbounds %struct.link_config, %struct.link_config* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ADVERT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %67, %68
  %70 = call i8* @htonl(i32 %69)
  %71 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.link_config*, %struct.link_config** %8, align 8
  %75 = getelementptr inbounds %struct.link_config, %struct.link_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PAUSE_RX, align 4
  %78 = load i32, i32* @PAUSE_TX, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = load %struct.link_config*, %struct.link_config** %8, align 8
  %82 = getelementptr inbounds %struct.link_config, %struct.link_config* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %123

83:                                               ; preds = %37
  %84 = load %struct.link_config*, %struct.link_config** %8, align 8
  %85 = getelementptr inbounds %struct.link_config, %struct.link_config* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AUTONEG_DISABLE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %83
  %90 = load %struct.link_config*, %struct.link_config** %8, align 8
  %91 = getelementptr inbounds %struct.link_config, %struct.link_config* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %94, %95
  %97 = call i8* @htonl(i32 %96)
  %98 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.link_config*, %struct.link_config** %8, align 8
  %102 = getelementptr inbounds %struct.link_config, %struct.link_config* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PAUSE_RX, align 4
  %105 = load i32, i32* @PAUSE_TX, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = load %struct.link_config*, %struct.link_config** %8, align 8
  %109 = getelementptr inbounds %struct.link_config, %struct.link_config* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %122

110:                                              ; preds = %83
  %111 = load %struct.link_config*, %struct.link_config** %8, align 8
  %112 = getelementptr inbounds %struct.link_config, %struct.link_config* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %115, %116
  %118 = call i8* @htonl(i32 %117)
  %119 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %110, %89
  br label %123

123:                                              ; preds = %122, %62
  %124 = load %struct.adapter*, %struct.adapter** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @t4_wr_mbox(%struct.adapter* %124, i32 %125, %struct.fw_port_cmd* %9, i32 24, i32* null)
  ret i32 %126
}

declare dso_local i32 @FW_PORT_MDI(i32) #1

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
