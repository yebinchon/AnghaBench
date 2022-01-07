; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_ofld_txq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_ofld_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.sge_ofld_txq = type { i64, i64, i32, i32, %struct.adapter*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32* }
%struct.net_device = type { i32 }
%struct.fw_eq_ofld_cmd = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.port_info = type { i32 }

@STAT_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_EQ_OFLD_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_CMD_EXEC = common dso_local global i32 0, align 4
@FW_EQ_OFLD_CMD_ALLOC = common dso_local global i32 0, align 4
@FW_EQ_OFLD_CMD_EQSTART = common dso_local global i32 0, align 4
@restart_ofldq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_alloc_ofld_txq(%struct.adapter* %0, %struct.sge_ofld_txq* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_ofld_txq*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_eq_ofld_cmd, align 8
  %13 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_ofld_txq* %1, %struct.sge_ofld_txq** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.port_info* @netdev_priv(%struct.net_device* %14)
  store %struct.port_info* %15, %struct.port_info** %13, align 8
  %16 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %17 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* @STAT_LEN, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = add i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.adapter*, %struct.adapter** %6, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %30 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %34 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %37 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* @STAT_LEN, align 4
  %40 = call i32* @alloc_ring(i32 %28, i32 %32, i32 4, i32 4, i32* %35, i32** %38, i32 %39)
  %41 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %42 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32* %40, i32** %43, align 8
  %44 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %45 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %168

52:                                               ; preds = %4
  %53 = call i32 @memset(%struct.fw_eq_ofld_cmd* %12, i32 0, i32 40)
  %54 = load i32, i32* @FW_EQ_OFLD_CMD, align 4
  %55 = call i32 @FW_CMD_OP(i32 %54)
  %56 = load i32, i32* @FW_CMD_REQUEST, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FW_CMD_WRITE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FW_CMD_EXEC, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.adapter*, %struct.adapter** %6, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @FW_EQ_OFLD_CMD_PFN(i32 %64)
  %66 = or i32 %61, %65
  %67 = call i32 @FW_EQ_OFLD_CMD_VFN(i32 0)
  %68 = or i32 %66, %67
  %69 = call i8* @htonl(i32 %68)
  %70 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %12, i32 0, i32 5
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* @FW_EQ_OFLD_CMD_ALLOC, align 4
  %72 = load i32, i32* @FW_EQ_OFLD_CMD_EQSTART, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @FW_LEN16(%struct.fw_eq_ofld_cmd* byval(%struct.fw_eq_ofld_cmd) align 8 %12)
  %75 = or i32 %73, %74
  %76 = call i8* @htonl(i32 %75)
  %77 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %12, i32 0, i32 4
  store i8* %76, i8** %77, align 8
  %78 = call i32 @FW_EQ_OFLD_CMD_HOSTFCMODE(i32 2)
  %79 = load %struct.port_info*, %struct.port_info** %13, align 8
  %80 = getelementptr inbounds %struct.port_info, %struct.port_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FW_EQ_OFLD_CMD_PCIECHN(i32 %81)
  %83 = or i32 %78, %82
  %84 = call i32 @FW_EQ_OFLD_CMD_FETCHRO(i32 1)
  %85 = or i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @FW_EQ_OFLD_CMD_IQID(i32 %86)
  %88 = or i32 %85, %87
  %89 = call i8* @htonl(i32 %88)
  %90 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %12, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  %91 = call i32 @FW_EQ_OFLD_CMD_FBMIN(i32 2)
  %92 = call i32 @FW_EQ_OFLD_CMD_FBMAX(i32 3)
  %93 = or i32 %91, %92
  %94 = call i32 @FW_EQ_OFLD_CMD_CIDXFTHRESH(i32 5)
  %95 = or i32 %93, %94
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @FW_EQ_OFLD_CMD_EQSIZE(i32 %96)
  %98 = or i32 %95, %97
  %99 = call i8* @htonl(i32 %98)
  %100 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %12, i32 0, i32 2
  store i8* %99, i8** %100, align 8
  %101 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %102 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @cpu_to_be64(i32 %104)
  %106 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %12, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.adapter*, %struct.adapter** %6, align 8
  %108 = load %struct.adapter*, %struct.adapter** %6, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @t4_wr_mbox(%struct.adapter* %107, i32 %110, %struct.fw_eq_ofld_cmd* %12, i32 40, %struct.fw_eq_ofld_cmd* %12)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %52
  %115 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %116 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @kfree(i32* %118)
  %120 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %121 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i32* null, i32** %122, align 8
  %123 = load %struct.adapter*, %struct.adapter** %6, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %131 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %135 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dma_free_coherent(i32 %125, i32 %129, i32* %133, i32 %137)
  %139 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %140 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i32* null, i32** %141, align 8
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %5, align 4
  br label %168

143:                                              ; preds = %52
  %144 = load %struct.adapter*, %struct.adapter** %6, align 8
  %145 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %146 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %12, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ntohl(i32 %148)
  %150 = call i32 @FW_EQ_OFLD_CMD_EQID_GET(i32 %149)
  %151 = call i32 @init_txq(%struct.adapter* %144, %struct.TYPE_2__* %146, i32 %150)
  %152 = load %struct.adapter*, %struct.adapter** %6, align 8
  %153 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %154 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %153, i32 0, i32 4
  store %struct.adapter* %152, %struct.adapter** %154, align 8
  %155 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %156 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %155, i32 0, i32 3
  %157 = call i32 @skb_queue_head_init(i32* %156)
  %158 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %159 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %158, i32 0, i32 2
  %160 = load i32, i32* @restart_ofldq, align 4
  %161 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %162 = ptrtoint %struct.sge_ofld_txq* %161 to i64
  %163 = call i32 @tasklet_init(i32* %159, i32 %160, i64 %162)
  %164 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %165 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %167 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %143, %114, %49
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @alloc_ring(i32, i32, i32, i32, i32*, i32**, i32) #1

declare dso_local i32 @memset(%struct.fw_eq_ofld_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_PFN(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_VFN(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_eq_ofld_cmd* byval(%struct.fw_eq_ofld_cmd) align 8) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_HOSTFCMODE(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_PCIECHN(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_FETCHRO(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_IQID(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_FBMIN(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_FBMAX(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_CIDXFTHRESH(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_EQSIZE(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_eq_ofld_cmd*, i32, %struct.fw_eq_ofld_cmd*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @init_txq(%struct.adapter*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_EQID_GET(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
