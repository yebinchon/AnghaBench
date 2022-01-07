; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_eth_txq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_eth_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.sge_eth_txq = type { i64, i64, i64, i64, %struct.netdev_queue*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32* }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.fw_eq_eth_cmd = type { i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.port_info = type { i32, i32 }

@STAT_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_EQ_ETH_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_CMD_EXEC = common dso_local global i32 0, align 4
@FW_EQ_ETH_CMD_ALLOC = common dso_local global i32 0, align 4
@FW_EQ_ETH_CMD_EQSTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_alloc_eth_txq(%struct.adapter* %0, %struct.sge_eth_txq* %1, %struct.net_device* %2, %struct.netdev_queue* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge_eth_txq*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fw_eq_eth_cmd, align 8
  %15 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.sge_eth_txq* %1, %struct.sge_eth_txq** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.netdev_queue* %3, %struct.netdev_queue** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call %struct.port_info* @netdev_priv(%struct.net_device* %16)
  store %struct.port_info* %17, %struct.port_info** %15, align 8
  %18 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %19 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* @STAT_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = add i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load %struct.adapter*, %struct.adapter** %7, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %32 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %36 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %39 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* @STAT_LEN, align 4
  %42 = call i32* @alloc_ring(i32 %30, i32 %34, i32 4, i32 4, i32* %37, i32** %40, i32 %41)
  %43 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %44 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %47 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %5
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %171

54:                                               ; preds = %5
  %55 = call i32 @memset(%struct.fw_eq_eth_cmd* %14, i32 0, i32 48)
  %56 = load i32, i32* @FW_EQ_ETH_CMD, align 4
  %57 = call i32 @FW_CMD_OP(i32 %56)
  %58 = load i32, i32* @FW_CMD_REQUEST, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FW_CMD_WRITE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FW_CMD_EXEC, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.adapter*, %struct.adapter** %7, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FW_EQ_ETH_CMD_PFN(i32 %66)
  %68 = or i32 %63, %67
  %69 = call i32 @FW_EQ_ETH_CMD_VFN(i32 0)
  %70 = or i32 %68, %69
  %71 = call i8* @htonl(i32 %70)
  %72 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %14, i32 0, i32 6
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @FW_EQ_ETH_CMD_ALLOC, align 4
  %74 = load i32, i32* @FW_EQ_ETH_CMD_EQSTART, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @FW_LEN16(%struct.fw_eq_eth_cmd* byval(%struct.fw_eq_eth_cmd) align 8 %14)
  %77 = or i32 %75, %76
  %78 = call i8* @htonl(i32 %77)
  %79 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %14, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load %struct.port_info*, %struct.port_info** %15, align 8
  %81 = getelementptr inbounds %struct.port_info, %struct.port_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @FW_EQ_ETH_CMD_VIID(i32 %82)
  %84 = call i8* @htonl(i32 %83)
  %85 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %14, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = call i32 @FW_EQ_ETH_CMD_HOSTFCMODE(i32 2)
  %87 = load %struct.port_info*, %struct.port_info** %15, align 8
  %88 = getelementptr inbounds %struct.port_info, %struct.port_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FW_EQ_ETH_CMD_PCIECHN(i32 %89)
  %91 = or i32 %86, %90
  %92 = call i32 @FW_EQ_ETH_CMD_FETCHRO(i32 1)
  %93 = or i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @FW_EQ_ETH_CMD_IQID(i32 %94)
  %96 = or i32 %93, %95
  %97 = call i8* @htonl(i32 %96)
  %98 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %14, i32 0, i32 3
  store i8* %97, i8** %98, align 8
  %99 = call i32 @FW_EQ_ETH_CMD_FBMIN(i32 2)
  %100 = call i32 @FW_EQ_ETH_CMD_FBMAX(i32 3)
  %101 = or i32 %99, %100
  %102 = call i32 @FW_EQ_ETH_CMD_CIDXFTHRESH(i32 5)
  %103 = or i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @FW_EQ_ETH_CMD_EQSIZE(i32 %104)
  %106 = or i32 %103, %105
  %107 = call i8* @htonl(i32 %106)
  %108 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %14, i32 0, i32 2
  store i8* %107, i8** %108, align 8
  %109 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %110 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @cpu_to_be64(i32 %112)
  %114 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %14, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load %struct.adapter*, %struct.adapter** %7, align 8
  %116 = load %struct.adapter*, %struct.adapter** %7, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @t4_wr_mbox(%struct.adapter* %115, i32 %118, %struct.fw_eq_eth_cmd* %14, i32 48, %struct.fw_eq_eth_cmd* %14)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %54
  %123 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %124 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @kfree(i32* %126)
  %128 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %129 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  store i32* null, i32** %130, align 8
  %131 = load %struct.adapter*, %struct.adapter** %7, align 8
  %132 = getelementptr inbounds %struct.adapter, %struct.adapter* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %139 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %143 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dma_free_coherent(i32 %133, i32 %137, i32* %141, i32 %145)
  %147 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %148 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %6, align 4
  br label %171

151:                                              ; preds = %54
  %152 = load %struct.adapter*, %struct.adapter** %7, align 8
  %153 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %154 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %14, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ntohl(i32 %156)
  %158 = call i32 @FW_EQ_ETH_CMD_EQID_GET(i32 %157)
  %159 = call i32 @init_txq(%struct.adapter* %152, %struct.TYPE_2__* %154, i32 %158)
  %160 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %161 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %162 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %161, i32 0, i32 4
  store %struct.netdev_queue* %160, %struct.netdev_queue** %162, align 8
  %163 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %164 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %166 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %168 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %167, i32 0, i32 3
  store i64 0, i64* %168, align 8
  %169 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %170 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %151, %122, %51
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @alloc_ring(i32, i32, i32, i32, i32*, i32**, i32) #1

declare dso_local i32 @memset(%struct.fw_eq_eth_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_PFN(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_VFN(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_eq_eth_cmd* byval(%struct.fw_eq_eth_cmd) align 8) #1

declare dso_local i32 @FW_EQ_ETH_CMD_VIID(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_HOSTFCMODE(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_PCIECHN(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_FETCHRO(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_IQID(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_FBMIN(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_FBMAX(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_CIDXFTHRESH(i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_EQSIZE(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_eq_eth_cmd*, i32, %struct.fw_eq_eth_cmd*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @init_txq(%struct.adapter*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @FW_EQ_ETH_CMD_EQID_GET(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
