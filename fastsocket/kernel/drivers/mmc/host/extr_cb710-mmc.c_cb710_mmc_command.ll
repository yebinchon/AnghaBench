; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i64, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }
%struct.cb710_slot = type { i32 }
%struct.cb710_mmc_reader = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"cmd request: 0x%04X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CB710_MMC_S2_BUSY_20 = common dso_local global i32 0, align 4
@CB710_MMC_S2_BUSY_10 = common dso_local global i32 0, align 4
@CB710_MMC_CMD_TYPE_PORT = common dso_local global i32 0, align 4
@CB710_MMC_CMD_PARAM_PORT = common dso_local global i32 0, align 4
@CB710_MMC_CONFIG0_PORT = common dso_local global i32 0, align 4
@CB710_MMC_S1_COMMAND_SENT = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_command*)* @cb710_mmc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_command(%struct.mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.cb710_slot*, align 8
  %7 = alloca %struct.cb710_mmc_reader*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host* %10)
  store %struct.cb710_slot* %11, %struct.cb710_slot** %6, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %13 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %12)
  store %struct.cb710_mmc_reader* %13, %struct.cb710_mmc_reader** %7, align 8
  %14 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 3
  %16 = load %struct.mmc_data*, %struct.mmc_data** %15, align 8
  store %struct.mmc_data* %16, %struct.mmc_data** %8, align 8
  %17 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %7, align 8
  %18 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %19 = call i32 @cb710_encode_cmd_flags(%struct.cb710_mmc_reader* %17, %struct.mmc_command* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %21 = call i32 @cb710_slot_dev(%struct.cb710_slot* %20)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %25 = icmp ne %struct.mmc_data* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %28 = call i32 @cb710_is_transfer_size_supported(%struct.mmc_data* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 -1, i32* %3, align 4
  br label %108

35:                                               ; preds = %26
  %36 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %37 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cb710_mmc_set_transfer_size(%struct.cb710_slot* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %2
  %45 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %46 = load i32, i32* @CB710_MMC_S2_BUSY_20, align 4
  %47 = load i32, i32* @CB710_MMC_S2_BUSY_10, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @cb710_wait_while_busy(%struct.cb710_slot* %45, i32 %48)
  %50 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %51 = load i32, i32* @CB710_MMC_CMD_TYPE_PORT, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @cb710_write_port_16(%struct.cb710_slot* %50, i32 %51, i32 %52)
  %54 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %55 = load i32, i32* @CB710_MMC_S2_BUSY_20, align 4
  %56 = call i32 @cb710_wait_while_busy(%struct.cb710_slot* %54, i32 %55)
  %57 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %58 = load i32, i32* @CB710_MMC_CMD_PARAM_PORT, align 4
  %59 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cb710_write_port_32(%struct.cb710_slot* %57, i32 %58, i32 %61)
  %63 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %64 = call i32 @cb710_mmc_reset_events(%struct.cb710_slot* %63)
  %65 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %66 = load i32, i32* @CB710_MMC_S2_BUSY_20, align 4
  %67 = call i32 @cb710_wait_while_busy(%struct.cb710_slot* %65, i32 %66)
  %68 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %69 = load i32, i32* @CB710_MMC_CONFIG0_PORT, align 4
  %70 = call i32 @cb710_modify_port_8(%struct.cb710_slot* %68, i32 %69, i32 1, i32 0)
  %71 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %72 = load i32, i32* @CB710_MMC_S1_COMMAND_SENT, align 4
  %73 = call i64 @cb710_wait_for_event(%struct.cb710_slot* %71, i32 %72)
  %74 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %75 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %108

81:                                               ; preds = %44
  %82 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %90 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %91 = call i32 @cb710_receive_response(%struct.cb710_slot* %89, %struct.mmc_command* %90)
  %92 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %93 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %108

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %81
  %99 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %100 = icmp ne %struct.mmc_data* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %103 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %104 = call i32 @cb710_mmc_transfer_data(%struct.cb710_slot* %102, %struct.mmc_data* %103)
  %105 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %106 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %98
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %96, %80, %30
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host*) #1

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @cb710_encode_cmd_flags(%struct.cb710_mmc_reader*, %struct.mmc_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_is_transfer_size_supported(%struct.mmc_data*) #1

declare dso_local i32 @cb710_mmc_set_transfer_size(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @cb710_wait_while_busy(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_write_port_16(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @cb710_write_port_32(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @cb710_mmc_reset_events(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_modify_port_8(%struct.cb710_slot*, i32, i32, i32) #1

declare dso_local i64 @cb710_wait_for_event(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_receive_response(%struct.cb710_slot*, %struct.mmc_command*) #1

declare dso_local i32 @cb710_mmc_transfer_data(%struct.cb710_slot*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
