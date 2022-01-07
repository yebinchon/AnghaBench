; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_add_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, %struct.TYPE_6__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.csr1212_keyval* }
%struct.csr1212_keyval = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.hpsb_host*, i32, i32, i32)* }

@CSR_BUS_INFO_SIZE = common dso_local global i32 0, align 4
@csr_highlevel = common dso_local global i32 0, align 4
@reg_ops = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_CONFIG_ROM = common dso_local global i64 0, align 8
@config_rom_ops = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM_END = common dso_local global i64 0, align 8
@fcp = common dso_local global i64 0, align 8
@fcp_ops = common dso_local global i32 0, align 4
@CSR_FCP_COMMAND = common dso_local global i64 0, align 8
@CSR_FCP_END = common dso_local global i64 0, align 8
@map_ops = common dso_local global i32 0, align 4
@CSR_TOPOLOGY_MAP = common dso_local global i64 0, align 8
@CSR_TOPOLOGY_MAP_END = common dso_local global i64 0, align 8
@CSR_SPEED_MAP = common dso_local global i64 0, align 8
@CSR_SPEED_MAP_END = common dso_local global i64 0, align 8
@IEEE1394_BUSID_MAGIC = common dso_local global i32 0, align 4
@hpsb_disable_irm = common dso_local global i64 0, align 8
@CSR_IRMC_SHIFT = common dso_local global i32 0, align 4
@CSR_CMC_SHIFT = common dso_local global i32 0, align 4
@CSR_ISC_SHIFT = common dso_local global i32 0, align 4
@CSR_BMC_SHIFT = common dso_local global i32 0, align 4
@CSR_PMC_SHIFT = common dso_local global i32 0, align 4
@CSR_CYC_CLK_ACC_SHIFT = common dso_local global i32 0, align 4
@CSR_MAX_REC_SHIFT = common dso_local global i32 0, align 4
@CSR_MAX_ROM_SHIFT = common dso_local global i32 0, align 4
@CSR_GENERATION_SHIFT = common dso_local global i32 0, align 4
@node_cap = common dso_local global i32 0, align 4
@CSR1212_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Failed to attach Node Capabilities to root directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %6 = load i32, i32* @CSR_BUS_INFO_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %11 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %12 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %13 = load i64, i64* @CSR_CONFIG_ROM, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @hpsb_register_addrspace(i32* @csr_highlevel, %struct.hpsb_host* %10, i32* @reg_ops, i64 %11, i64 %14)
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %17 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %18 = load i64, i64* @CSR_CONFIG_ROM, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %21 = load i64, i64* @CSR_CONFIG_ROM_END, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @hpsb_register_addrspace(i32* @csr_highlevel, %struct.hpsb_host* %16, i32* @config_rom_ops, i64 %19, i64 %22)
  %24 = load i64, i64* @fcp, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %28 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %29 = load i64, i64* @CSR_FCP_COMMAND, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %32 = load i64, i64* @CSR_FCP_END, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @hpsb_register_addrspace(i32* @csr_highlevel, %struct.hpsb_host* %27, i32* @fcp_ops, i64 %30, i64 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %37 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %38 = load i64, i64* @CSR_TOPOLOGY_MAP, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %41 = load i64, i64* @CSR_TOPOLOGY_MAP_END, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @hpsb_register_addrspace(i32* @csr_highlevel, %struct.hpsb_host* %36, i32* @map_ops, i64 %39, i64 %42)
  %44 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %45 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %46 = load i64, i64* @CSR_SPEED_MAP, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %49 = load i64, i64* @CSR_SPEED_MAP_END, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @hpsb_register_addrspace(i32* @csr_highlevel, %struct.hpsb_host* %44, i32* @map_ops, i64 %47, i64 %50)
  %52 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %53 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 19
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %57 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 18
  store i64 0, i64* %58, align 8
  %59 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %60 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 17
  store i64 0, i64* %61, align 8
  %62 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %63 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 16
  store i64 0, i64* %64, align 8
  %65 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %66 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 419430400, i32* %67, align 8
  %68 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %69 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %68, i32 0, i32 1
  %70 = call i32 @calculate_expire(%struct.TYPE_6__* %69)
  %71 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %72 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 15
  store i64 0, i64* %73, align 8
  %74 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %75 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 14
  store i64 0, i64* %76, align 8
  %77 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %78 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 63, i32* %79, align 4
  %80 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %81 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32 4915, i32* %82, align 8
  %83 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %84 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32 -2, i32* %85, align 4
  %86 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %87 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 13
  store i32 -1, i32* %88, align 8
  %89 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %90 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  store i32 -2147483617, i32* %91, align 8
  %92 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %93 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %35
  %97 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %98 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.hpsb_host*, i32, i32, i32)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %105 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %107, align 8
  %109 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %110 = call i32 %108(%struct.hpsb_host* %109, i32 2, i32 -2, i32 -1)
  br label %111

111:                                              ; preds = %103, %96
  br label %112

112:                                              ; preds = %111, %35
  %113 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %114 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 9
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %120 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 6
  store i32 2, i32* %121, align 8
  br label %137

122:                                              ; preds = %112
  %123 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %124 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 5
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %130 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 6
  store i32 1, i32* %131, align 8
  br label %136

132:                                              ; preds = %122
  %133 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %134 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 6
  store i32 0, i32* %135, align 8
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136, %118
  %138 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %139 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 7
  store i32 2, i32* %140, align 4
  %141 = load i32, i32* @IEEE1394_BUSID_MAGIC, align 4
  %142 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 %141, i32* %142, align 4
  %143 = load i64, i64* @hpsb_disable_irm, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @CSR_IRMC_SHIFT, align 4
  %148 = shl i32 1, %147
  br label %149

149:                                              ; preds = %146, %145
  %150 = phi i32 [ 0, %145 ], [ %148, %146 ]
  %151 = load i32, i32* @CSR_CMC_SHIFT, align 4
  %152 = shl i32 1, %151
  %153 = or i32 %150, %152
  %154 = load i32, i32* @CSR_ISC_SHIFT, align 4
  %155 = shl i32 1, %154
  %156 = or i32 %153, %155
  %157 = load i32, i32* @CSR_BMC_SHIFT, align 4
  %158 = shl i32 0, %157
  %159 = or i32 %156, %158
  %160 = load i32, i32* @CSR_PMC_SHIFT, align 4
  %161 = shl i32 0, %160
  %162 = or i32 %159, %161
  %163 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %164 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @CSR_CYC_CLK_ACC_SHIFT, align 4
  %168 = shl i32 %166, %167
  %169 = or i32 %162, %168
  %170 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %171 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CSR_MAX_REC_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = or i32 %169, %175
  %177 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %178 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CSR_MAX_ROM_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = or i32 %176, %182
  %184 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %185 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @CSR_GENERATION_SHIFT, align 4
  %189 = shl i32 %187, %188
  %190 = or i32 %183, %189
  %191 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %192 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %190, %194
  %196 = call i32 @cpu_to_be32(i32 %195)
  %197 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 %196, i32* %197, align 8
  %198 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %199 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @cpu_to_be32(i32 %201)
  %203 = getelementptr inbounds i32, i32* %9, i64 3
  store i32 %202, i32* %203, align 4
  %204 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %205 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @cpu_to_be32(i32 %207)
  %209 = getelementptr inbounds i32, i32* %9, i64 4
  store i32 %208, i32* %209, align 16
  %210 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %211 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 12
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %215 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @csr1212_init_local_csr(%struct.TYPE_5__* %213, i32* %9, i32 %217)
  %219 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %220 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 12
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %223, align 8
  store %struct.csr1212_keyval* %224, %struct.csr1212_keyval** %3, align 8
  %225 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %226 = load i32, i32* @node_cap, align 4
  %227 = call i64 @csr1212_attach_keyval_to_directory(%struct.csr1212_keyval* %225, i32 %226)
  %228 = load i64, i64* @CSR1212_SUCCESS, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %149
  %231 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %149
  %233 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %234 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  %235 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %235)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hpsb_register_addrspace(i32*, %struct.hpsb_host*, i32*, i64, i64) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @calculate_expire(%struct.TYPE_6__*) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @csr1212_init_local_csr(%struct.TYPE_5__*, i32*, i32) #2

declare dso_local i64 @csr1212_attach_keyval_to_directory(%struct.csr1212_keyval*, i32) #2

declare dso_local i32 @HPSB_ERR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
