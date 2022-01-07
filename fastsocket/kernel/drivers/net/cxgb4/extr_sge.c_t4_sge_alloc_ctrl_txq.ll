; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_ctrl_txq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_ctrl_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.sge_ctrl_txq = type { i64, i32, i32, %struct.adapter*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.net_device = type { i32 }
%struct.fw_eq_ctrl_cmd = type { i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.port_info = type { i32 }

@STAT_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_EQ_CTRL_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_CMD_EXEC = common dso_local global i32 0, align 4
@FW_EQ_CTRL_CMD_ALLOC = common dso_local global i32 0, align 4
@FW_EQ_CTRL_CMD_EQSTART = common dso_local global i32 0, align 4
@FW_EQ_CTRL_CMD_FETCHRO = common dso_local global i32 0, align 4
@restart_ctrlq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_alloc_ctrl_txq(%struct.adapter* %0, %struct.sge_ctrl_txq* %1, %struct.net_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge_ctrl_txq*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fw_eq_ctrl_cmd, align 8
  %15 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.sge_ctrl_txq* %1, %struct.sge_ctrl_txq** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call %struct.port_info* @netdev_priv(%struct.net_device* %16)
  store %struct.port_info* %17, %struct.port_info** %15, align 8
  %18 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %19 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %18, i32 0, i32 4
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
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %33 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = call i32* @alloc_ring(i32 %30, i32 %31, i32 4, i32 0, i32* %34, i32* null, i32 0)
  %36 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %37 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32* %35, i32** %38, align 8
  %39 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %40 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %5
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %158

47:                                               ; preds = %5
  %48 = load i32, i32* @FW_EQ_CTRL_CMD, align 4
  %49 = call i32 @FW_CMD_OP(i32 %48)
  %50 = load i32, i32* @FW_CMD_REQUEST, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FW_CMD_WRITE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FW_CMD_EXEC, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.adapter*, %struct.adapter** %7, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FW_EQ_CTRL_CMD_PFN(i32 %58)
  %60 = or i32 %55, %59
  %61 = call i32 @FW_EQ_CTRL_CMD_VFN(i32 0)
  %62 = or i32 %60, %61
  %63 = call i8* @htonl(i32 %62)
  %64 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 6
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* @FW_EQ_CTRL_CMD_ALLOC, align 4
  %66 = load i32, i32* @FW_EQ_CTRL_CMD_EQSTART, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @FW_LEN16(%struct.fw_eq_ctrl_cmd* byval(%struct.fw_eq_ctrl_cmd) align 8 %14)
  %69 = or i32 %67, %68
  %70 = call i8* @htonl(i32 %69)
  %71 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 5
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @FW_EQ_CTRL_CMD_CMPLIQID(i32 %72)
  %74 = call i8* @htonl(i32 %73)
  %75 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = call i8* @htonl(i32 0)
  %77 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 4
  store i8* %76, i8** %77, align 8
  %78 = call i32 @FW_EQ_CTRL_CMD_HOSTFCMODE(i32 2)
  %79 = load %struct.port_info*, %struct.port_info** %15, align 8
  %80 = getelementptr inbounds %struct.port_info, %struct.port_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FW_EQ_CTRL_CMD_PCIECHN(i32 %81)
  %83 = or i32 %78, %82
  %84 = load i32, i32* @FW_EQ_CTRL_CMD_FETCHRO, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @FW_EQ_CTRL_CMD_IQID(i32 %86)
  %88 = or i32 %85, %87
  %89 = call i8* @htonl(i32 %88)
  %90 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  %91 = call i32 @FW_EQ_CTRL_CMD_FBMIN(i32 2)
  %92 = call i32 @FW_EQ_CTRL_CMD_FBMAX(i32 3)
  %93 = or i32 %91, %92
  %94 = call i32 @FW_EQ_CTRL_CMD_CIDXFTHRESH(i32 5)
  %95 = or i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @FW_EQ_CTRL_CMD_EQSIZE(i32 %96)
  %98 = or i32 %95, %97
  %99 = call i8* @htonl(i32 %98)
  %100 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 2
  store i8* %99, i8** %100, align 8
  %101 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %102 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @cpu_to_be64(i32 %104)
  %106 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  %107 = load %struct.adapter*, %struct.adapter** %7, align 8
  %108 = load %struct.adapter*, %struct.adapter** %7, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @t4_wr_mbox(%struct.adapter* %107, i32 %110, %struct.fw_eq_ctrl_cmd* %14, i32 56, %struct.fw_eq_ctrl_cmd* %14)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %47
  %115 = load %struct.adapter*, %struct.adapter** %7, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %123 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %127 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dma_free_coherent(i32 %117, i32 %121, i32* %125, i32 %129)
  %131 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %132 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %6, align 4
  br label %158

135:                                              ; preds = %47
  %136 = load %struct.adapter*, %struct.adapter** %7, align 8
  %137 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %138 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, %struct.fw_eq_ctrl_cmd* %14, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @ntohl(i8* %140)
  %142 = call i32 @FW_EQ_CTRL_CMD_EQID_GET(i32 %141)
  %143 = call i32 @init_txq(%struct.adapter* %136, %struct.TYPE_2__* %138, i32 %142)
  %144 = load %struct.adapter*, %struct.adapter** %7, align 8
  %145 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %146 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %145, i32 0, i32 3
  store %struct.adapter* %144, %struct.adapter** %146, align 8
  %147 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %148 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %147, i32 0, i32 2
  %149 = call i32 @skb_queue_head_init(i32* %148)
  %150 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %151 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %150, i32 0, i32 1
  %152 = load i32, i32* @restart_ctrlq, align 4
  %153 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %154 = ptrtoint %struct.sge_ctrl_txq* %153 to i64
  %155 = call i32 @tasklet_init(i32* %151, i32 %152, i64 %154)
  %156 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %157 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %135, %114, %44
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @alloc_ring(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_PFN(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_VFN(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_eq_ctrl_cmd* byval(%struct.fw_eq_ctrl_cmd) align 8) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_CMPLIQID(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_HOSTFCMODE(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_PCIECHN(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_IQID(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_FBMIN(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_FBMAX(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_CIDXFTHRESH(i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_EQSIZE(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_eq_ctrl_cmd*, i32, %struct.fw_eq_ctrl_cmd*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @init_txq(%struct.adapter*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @FW_EQ_CTRL_CMD_EQID_GET(i32) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
