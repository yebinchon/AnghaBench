; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb_rdma_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb_rdma_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__, %struct.mc7, %struct.mc7, %struct.mc7, i64, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.mc7 = type { i32 }
%struct.pci_dev = type { i32 }
%struct.rdma_info = type { %struct.pci_dev*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.rdma_cq_op = type { i32, i32, i32 }
%struct.ch_mem_range = type { i32, i32, i64, i32 }
%struct.rdma_cq_setup = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ctrlqp_setup = type { i32, i32 }
%struct.tp_mib_stats = type { i32 }

@A_ULPTX_TPT_LLIMIT = common dso_local global i32 0, align 4
@A_ULPTX_TPT_ULIMIT = common dso_local global i32 0, align 4
@A_ULPTX_PBL_LLIMIT = common dso_local global i32 0, align 4
@A_ULPTX_PBL_ULIMIT = common dso_local global i32 0, align 4
@A_ULPRX_RQ_LLIMIT = common dso_local global i32 0, align 4
@A_ULPRX_RQ_ULIMIT = common dso_local global i32 0, align 4
@A_SG_KDOORBELL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEM_CM = common dso_local global i32 0, align 4
@MEM_PMRX = common dso_local global i32 0, align 4
@MEM_PMTX = common dso_local global i32 0, align 4
@ASYNC_NOTIF_RSPQ = common dso_local global i32 0, align 4
@FW_RI_SGEEC_START = common dso_local global i32 0, align 4
@SGE_CNTXT_RDMA = common dso_local global i32 0, align 4
@FW_RI_TID_START = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i8*)* @cxgb_rdma_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_rdma_ctl(%struct.adapter* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rdma_info*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rdma_cq_op*, align 8
  %13 = alloca %struct.ch_mem_range*, align 8
  %14 = alloca %struct.mc7*, align 8
  %15 = alloca %struct.rdma_cq_setup*, align 8
  %16 = alloca %struct.rdma_ctrlqp_setup*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %245 [
    i32 128, label %18
    i32 133, label %72
    i32 130, label %96
    i32 132, label %165
    i32 134, label %197
    i32 131, label %211
    i32 129, label %234
  ]

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.rdma_info*
  store %struct.rdma_info* %20, %struct.rdma_info** %9, align 8
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 6
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %10, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %25 = call i32 @pci_resource_start(%struct.pci_dev* %24, i32 2)
  %26 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %27 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %29 = call i32 @pci_resource_len(%struct.pci_dev* %28, i32 2)
  %30 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %31 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = load i32, i32* @A_ULPTX_TPT_LLIMIT, align 4
  %34 = call i8* @t3_read_reg(%struct.adapter* %32, i32 %33)
  %35 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %36 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = load i32, i32* @A_ULPTX_TPT_ULIMIT, align 4
  %39 = call i8* @t3_read_reg(%struct.adapter* %37, i32 %38)
  %40 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %41 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.adapter*, %struct.adapter** %5, align 8
  %43 = load i32, i32* @A_ULPTX_PBL_LLIMIT, align 4
  %44 = call i8* @t3_read_reg(%struct.adapter* %42, i32 %43)
  %45 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %46 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = load i32, i32* @A_ULPTX_PBL_ULIMIT, align 4
  %49 = call i8* @t3_read_reg(%struct.adapter* %47, i32 %48)
  %50 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %51 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.adapter*, %struct.adapter** %5, align 8
  %53 = load i32, i32* @A_ULPRX_RQ_LLIMIT, align 4
  %54 = call i8* @t3_read_reg(%struct.adapter* %52, i32 %53)
  %55 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %56 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.adapter*, %struct.adapter** %5, align 8
  %58 = load i32, i32* @A_ULPRX_RQ_ULIMIT, align 4
  %59 = call i8* @t3_read_reg(%struct.adapter* %57, i32 %58)
  %60 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %61 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.adapter*, %struct.adapter** %5, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @A_SG_KDOORBELL, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %68 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %70 = load %struct.rdma_info*, %struct.rdma_info** %9, align 8
  %71 = getelementptr inbounds %struct.rdma_info, %struct.rdma_info* %70, i32 0, i32 0
  store %struct.pci_dev* %69, %struct.pci_dev** %71, align 8
  br label %248

72:                                               ; preds = %3
  %73 = load i8*, i8** %7, align 8
  %74 = bitcast i8* %73 to %struct.rdma_cq_op*
  store %struct.rdma_cq_op* %74, %struct.rdma_cq_op** %12, align 8
  %75 = load %struct.adapter*, %struct.adapter** %5, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.adapter*, %struct.adapter** %5, align 8
  %81 = load %struct.rdma_cq_op*, %struct.rdma_cq_op** %12, align 8
  %82 = getelementptr inbounds %struct.rdma_cq_op, %struct.rdma_cq_op* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rdma_cq_op*, %struct.rdma_cq_op** %12, align 8
  %85 = getelementptr inbounds %struct.rdma_cq_op, %struct.rdma_cq_op* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rdma_cq_op*, %struct.rdma_cq_op** %12, align 8
  %88 = getelementptr inbounds %struct.rdma_cq_op, %struct.rdma_cq_op* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @t3_sge_cqcntxt_op(%struct.adapter* %80, i32 %83, i32 %86, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.adapter*, %struct.adapter** %5, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %248

96:                                               ; preds = %3
  %97 = load i8*, i8** %7, align 8
  %98 = bitcast i8* %97 to %struct.ch_mem_range*
  store %struct.ch_mem_range* %98, %struct.ch_mem_range** %13, align 8
  %99 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %100 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 7
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %96
  %105 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %106 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 7
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %96
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %250

113:                                              ; preds = %104
  %114 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %115 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MEM_CM, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.adapter*, %struct.adapter** %5, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 4
  store %struct.mc7* %121, %struct.mc7** %14, align 8
  br label %145

122:                                              ; preds = %113
  %123 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %124 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MEM_PMRX, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.adapter*, %struct.adapter** %5, align 8
  %130 = getelementptr inbounds %struct.adapter, %struct.adapter* %129, i32 0, i32 3
  store %struct.mc7* %130, %struct.mc7** %14, align 8
  br label %144

131:                                              ; preds = %122
  %132 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %133 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MEM_PMTX, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.adapter*, %struct.adapter** %5, align 8
  %139 = getelementptr inbounds %struct.adapter, %struct.adapter* %138, i32 0, i32 2
  store %struct.mc7* %139, %struct.mc7** %14, align 8
  br label %143

140:                                              ; preds = %131
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %250

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %128
  br label %145

145:                                              ; preds = %144, %119
  %146 = load %struct.mc7*, %struct.mc7** %14, align 8
  %147 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %148 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sdiv i32 %149, 8
  %151 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %152 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, 8
  %155 = load %struct.ch_mem_range*, %struct.ch_mem_range** %13, align 8
  %156 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = call i32 @t3_mc7_bd_read(%struct.mc7* %146, i32 %150, i32 %154, i32* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %145
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %4, align 4
  br label %250

164:                                              ; preds = %145
  br label %248

165:                                              ; preds = %3
  %166 = load i8*, i8** %7, align 8
  %167 = bitcast i8* %166 to %struct.rdma_cq_setup*
  store %struct.rdma_cq_setup* %167, %struct.rdma_cq_setup** %15, align 8
  %168 = load %struct.adapter*, %struct.adapter** %5, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = call i32 @spin_lock_irq(i32* %170)
  %172 = load %struct.adapter*, %struct.adapter** %5, align 8
  %173 = load %struct.rdma_cq_setup*, %struct.rdma_cq_setup** %15, align 8
  %174 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.rdma_cq_setup*, %struct.rdma_cq_setup** %15, align 8
  %177 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.rdma_cq_setup*, %struct.rdma_cq_setup** %15, align 8
  %180 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ASYNC_NOTIF_RSPQ, align 4
  %183 = load %struct.rdma_cq_setup*, %struct.rdma_cq_setup** %15, align 8
  %184 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.rdma_cq_setup*, %struct.rdma_cq_setup** %15, align 8
  %187 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.rdma_cq_setup*, %struct.rdma_cq_setup** %15, align 8
  %190 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @t3_sge_init_cqcntxt(%struct.adapter* %172, i32 %175, i32 %178, i32 %181, i32 %182, i32 %185, i32 %188, i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load %struct.adapter*, %struct.adapter** %5, align 8
  %194 = getelementptr inbounds %struct.adapter, %struct.adapter* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = call i32 @spin_unlock_irq(i32* %195)
  br label %248

197:                                              ; preds = %3
  %198 = load %struct.adapter*, %struct.adapter** %5, align 8
  %199 = getelementptr inbounds %struct.adapter, %struct.adapter* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = call i32 @spin_lock_irq(i32* %200)
  %202 = load %struct.adapter*, %struct.adapter** %5, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = bitcast i8* %203 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @t3_sge_disable_cqcntxt(%struct.adapter* %202, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = load %struct.adapter*, %struct.adapter** %5, align 8
  %208 = getelementptr inbounds %struct.adapter, %struct.adapter* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = call i32 @spin_unlock_irq(i32* %209)
  br label %248

211:                                              ; preds = %3
  %212 = load i8*, i8** %7, align 8
  %213 = bitcast i8* %212 to %struct.rdma_ctrlqp_setup*
  store %struct.rdma_ctrlqp_setup* %213, %struct.rdma_ctrlqp_setup** %16, align 8
  %214 = load %struct.adapter*, %struct.adapter** %5, align 8
  %215 = getelementptr inbounds %struct.adapter, %struct.adapter* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = call i32 @spin_lock_irq(i32* %216)
  %218 = load %struct.adapter*, %struct.adapter** %5, align 8
  %219 = load i32, i32* @FW_RI_SGEEC_START, align 4
  %220 = load i32, i32* @SGE_CNTXT_RDMA, align 4
  %221 = load i32, i32* @ASYNC_NOTIF_RSPQ, align 4
  %222 = load %struct.rdma_ctrlqp_setup*, %struct.rdma_ctrlqp_setup** %16, align 8
  %223 = getelementptr inbounds %struct.rdma_ctrlqp_setup, %struct.rdma_ctrlqp_setup* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.rdma_ctrlqp_setup*, %struct.rdma_ctrlqp_setup** %16, align 8
  %226 = getelementptr inbounds %struct.rdma_ctrlqp_setup, %struct.rdma_ctrlqp_setup* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @FW_RI_TID_START, align 4
  %229 = call i32 @t3_sge_init_ecntxt(%struct.adapter* %218, i32 %219, i32 0, i32 %220, i32 %221, i32 %224, i32 %227, i32 %228, i32 1, i32 0)
  store i32 %229, i32* %8, align 4
  %230 = load %struct.adapter*, %struct.adapter** %5, align 8
  %231 = getelementptr inbounds %struct.adapter, %struct.adapter* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = call i32 @spin_unlock_irq(i32* %232)
  br label %248

234:                                              ; preds = %3
  %235 = load %struct.adapter*, %struct.adapter** %5, align 8
  %236 = getelementptr inbounds %struct.adapter, %struct.adapter* %235, i32 0, i32 0
  %237 = call i32 @spin_lock(i32* %236)
  %238 = load %struct.adapter*, %struct.adapter** %5, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = bitcast i8* %239 to %struct.tp_mib_stats*
  %241 = call i32 @t3_tp_get_mib_stats(%struct.adapter* %238, %struct.tp_mib_stats* %240)
  %242 = load %struct.adapter*, %struct.adapter** %5, align 8
  %243 = getelementptr inbounds %struct.adapter, %struct.adapter* %242, i32 0, i32 0
  %244 = call i32 @spin_unlock(i32* %243)
  br label %248

245:                                              ; preds = %3
  %246 = load i32, i32* @EOPNOTSUPP, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %8, align 4
  br label %248

248:                                              ; preds = %245, %234, %211, %197, %165, %164, %72, %18
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %248, %162, %140, %110
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @t3_sge_cqcntxt_op(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @t3_mc7_bd_read(%struct.mc7*, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @t3_sge_init_cqcntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @t3_sge_disable_cqcntxt(%struct.adapter*, i32) #1

declare dso_local i32 @t3_sge_init_ecntxt(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t3_tp_get_mib_stats(%struct.adapter*, %struct.tp_mib_stats*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
