; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_adap_init1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_adap_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.fw_caps_config_cmd = type { i32, i8*, i8* }

@FW_CAPS_CONFIG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_READ = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_NIC_VM = common dso_local global i32 0, align 4
@vf_acls = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"virtualization ACLs not supported\00", align 1
@FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_TNLMAPEN = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_TNLALLLKP = common dso_local global i32 0, align 4
@MAX_EGRQ = common dso_local global i32 0, align 4
@MAX_INGQ = common dso_local global i32 0, align 4
@FW_CMD_CAP_PF = common dso_local global i32 0, align 4
@TP_SHIFT_CNT = common dso_local global i32 0, align 4
@ULP_RX_TDDP_PSZ = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TP_PIO_ADDR = common dso_local global i32 0, align 4
@TP_INGRESS_CONFIG = common dso_local global i32 0, align 4
@TP_PIO_DATA = common dso_local global i32 0, align 4
@CSUM_HAS_PSEUDO_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.fw_caps_config_cmd*)* @adap_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adap_init1(%struct.adapter* %0, %struct.fw_caps_config_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.fw_caps_config_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.fw_caps_config_cmd* %1, %struct.fw_caps_config_cmd** %5, align 8
  %8 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %9 = call i32 @memset(%struct.fw_caps_config_cmd* %8, i32 0, i32 24)
  %10 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %11 = call i32 @FW_CMD_OP(i32 %10)
  %12 = load i32, i32* @FW_CMD_REQUEST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FW_CMD_READ, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @htonl(i32 %15)
  %17 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %20 = call i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8 %19)
  %21 = call i8* @htonl(i32 %20)
  %22 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %29 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %30 = call i32 @t4_wr_mbox(%struct.adapter* %24, i32 %27, %struct.fw_caps_config_cmd* %28, i32 24, %struct.fw_caps_config_cmd* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %151

35:                                               ; preds = %2
  %36 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FW_CAPS_CONFIG_NIC_VM, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = load i64, i64* @vf_acls, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @FW_CAPS_CONFIG_NIC_VM, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %58

53:                                               ; preds = %43
  %54 = load i32, i32* @FW_CAPS_CONFIG_NIC_VM, align 4
  %55 = call i32 @htons(i32 %54)
  %56 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %46
  br label %69

59:                                               ; preds = %35
  %60 = load i64, i64* @vf_acls, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.adapter*, %struct.adapter** %4, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %151

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %71 = call i32 @FW_CMD_OP(i32 %70)
  %72 = load i32, i32* @FW_CMD_REQUEST, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @FW_CMD_WRITE, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @htonl(i32 %75)
  %77 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.adapter*, %struct.adapter** %4, align 8
  %80 = load %struct.adapter*, %struct.adapter** %4, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %5, align 8
  %84 = call i32 @t4_wr_mbox(%struct.adapter* %79, i32 %82, %struct.fw_caps_config_cmd* %83, i32 24, %struct.fw_caps_config_cmd* null)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %69
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %151

89:                                               ; preds = %69
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = load %struct.adapter*, %struct.adapter** %4, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL, align 4
  %95 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_TNLMAPEN, align 4
  %96 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_TNLALLLKP, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @t4_config_glbl_rss(%struct.adapter* %90, i32 %93, i32 %94, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %151

103:                                              ; preds = %89
  %104 = load %struct.adapter*, %struct.adapter** %4, align 8
  %105 = load %struct.adapter*, %struct.adapter** %4, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.adapter*, %struct.adapter** %4, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MAX_EGRQ, align 4
  %112 = load i32, i32* @MAX_INGQ, align 4
  %113 = load i32, i32* @FW_CMD_CAP_PF, align 4
  %114 = load i32, i32* @FW_CMD_CAP_PF, align 4
  %115 = call i32 @t4_cfg_pfvf(%struct.adapter* %104, i32 %107, i32 %110, i32 0, i32 %111, i32 64, i32 %112, i32 0, i32 0, i32 4, i32 15, i32 15, i32 16, i32 %113, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %151

120:                                              ; preds = %103
  %121 = load %struct.adapter*, %struct.adapter** %4, align 8
  %122 = call i32 @t4_sge_init(%struct.adapter* %121)
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = load i32, i32* @TP_SHIFT_CNT, align 4
  %125 = call i32 @t4_write_reg(%struct.adapter* %123, i32 %124, i32 105875529)
  %126 = load %struct.adapter*, %struct.adapter** %4, align 8
  %127 = load i32, i32* @ULP_RX_TDDP_PSZ, align 4
  %128 = load i64, i64* @PAGE_SHIFT, align 8
  %129 = sub nsw i64 %128, 12
  %130 = call i32 @HPZ0(i64 %129)
  %131 = call i32 @t4_write_reg(%struct.adapter* %126, i32 %127, i32 %130)
  %132 = load %struct.adapter*, %struct.adapter** %4, align 8
  %133 = load i32, i32* @TP_PIO_ADDR, align 4
  %134 = load i32, i32* @TP_INGRESS_CONFIG, align 4
  %135 = call i32 @t4_write_reg(%struct.adapter* %132, i32 %133, i32 %134)
  %136 = load %struct.adapter*, %struct.adapter** %4, align 8
  %137 = load i32, i32* @TP_PIO_DATA, align 4
  %138 = call i32 @t4_read_reg(%struct.adapter* %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.adapter*, %struct.adapter** %4, align 8
  %140 = load i32, i32* @TP_PIO_DATA, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @CSUM_HAS_PSEUDO_HDR, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = call i32 @t4_write_reg(%struct.adapter* %139, i32 %140, i32 %144)
  %146 = load %struct.adapter*, %struct.adapter** %4, align 8
  %147 = load %struct.adapter*, %struct.adapter** %4, align 8
  %148 = getelementptr inbounds %struct.adapter, %struct.adapter* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @t4_early_init(%struct.adapter* %146, i32 %149)
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %120, %118, %101, %87, %62, %33
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @memset(%struct.fw_caps_config_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_caps_config_cmd*, i32, %struct.fw_caps_config_cmd*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @t4_config_glbl_rss(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t4_cfg_pfvf(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t4_sge_init(%struct.adapter*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @HPZ0(i64) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_early_init(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
