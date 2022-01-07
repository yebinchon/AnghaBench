; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_fini_all_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_fini_all_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_vf = type { i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@EFX_VI_BASE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@VF_MAX_RX_QUEUES = common dso_local global i64 0, align 8
@MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@VFDI_RC_ENOMEM = common dso_local global i32 0, align 4
@FRF_AZ_TX_FLUSH_DESCQ_CMD = common dso_local global i32 0, align 4
@FRF_AZ_TX_FLUSH_DESCQ = common dso_local global i32 0, align 4
@FR_AZ_TX_FLUSH_DESCQ = common dso_local global i32 0, align 4
@MC_CMD_FLUSH_RX_QUEUES = common dso_local global i32 0, align 4
@FR_BZ_RX_DESC_PTR_TBL = common dso_local global i32 0, align 4
@FR_BZ_TX_DESC_PTR_TBL = common dso_local global i32 0, align 4
@FR_BZ_EVQ_PTR_TBL = common dso_local global i32 0, align 4
@FR_BZ_TIMER_TBL = common dso_local global i32 0, align 4
@EFX_VF_BUFTBL_PER_VI = common dso_local global i32 0, align 4
@VFDI_RC_ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_vf*)* @efx_vfdi_fini_all_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_vfdi_fini_all_queues(%struct.efx_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_vf*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.efx_vf* %0, %struct.efx_vf** %3, align 8
  %13 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %14 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %13, i32 0, i32 10
  %15 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  store %struct.efx_nic* %15, %struct.efx_nic** %4, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %17 = call i32 @efx_vf_size(%struct.efx_nic* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @EFX_VI_BASE, align 4
  %19 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %20 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %23 = call i32 @efx_vf_size(%struct.efx_nic* %22)
  %24 = mul i32 %21, %23
  %25 = add i32 %18, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @HZ, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* @VF_MAX_RX_QUEUES, align 8
  %28 = load i64, i64* @MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM, align 8
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUILD_BUG_ON(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kmalloc(i32 %35, i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @VFDI_RC_ENOMEM, align 4
  store i32 %41, i32* %2, align 4
  br label %222

42:                                               ; preds = %1
  %43 = call i32 (...) @rtnl_lock()
  %44 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %45 = call i32 @siena_prepare_flush(%struct.efx_nic* %44)
  %46 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %87, %42
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %54 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @test_bit(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @FRF_AZ_TX_FLUSH_DESCQ_CMD, align 4
  %61 = load i32, i32* @FRF_AZ_TX_FLUSH_DESCQ, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %62, %63
  %65 = call i32 @EFX_POPULATE_OWORD_2(i32 %59, i32 %60, i32 1, i32 %61, i32 %64)
  %66 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %67 = load i32, i32* @FR_AZ_TX_FLUSH_DESCQ, align 4
  %68 = call i32 @efx_writeo(%struct.efx_nic* %66, i32* %5, i32 %67)
  br label %69

69:                                               ; preds = %58, %51
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %72 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @test_bit(i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %77, %78
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %76, %69
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %47

90:                                               ; preds = %47
  %91 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %92 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %91, i32 0, i32 3
  %93 = call i32 @atomic_set(i32* %92, i32 0)
  br label %94

94:                                               ; preds = %159, %90
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %99 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %104 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ true, %97 ], [ %106, %102 ]
  br label %109

109:                                              ; preds = %107, %94
  %110 = phi i1 [ false, %94 ], [ %108, %107 ]
  br i1 %110, label %111, label %160

111:                                              ; preds = %109
  %112 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %113 = load i32, i32* @MC_CMD_FLUSH_RX_QUEUES, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %112, i32 %113, i32* %114, i32 %118, i32* null, i32 0, i32* null)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @WARN_ON(i32 %122)
  %124 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %125 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %128 = call i32 @efx_vfdi_flush_wake(%struct.efx_vf* %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @wait_event_timeout(i32 %126, i32 %128, i32 %129)
  store i32 %130, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %156, %111
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %131
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %138 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @test_and_clear_bit(i32 %136, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %144 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %143, i32 0, i32 3
  %145 = call i32 @atomic_dec(i32* %144)
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %146, %147
  %149 = call i32 @cpu_to_le32(i32 %148)
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %10, align 4
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %142, %135
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %131

159:                                              ; preds = %131
  br label %94

160:                                              ; preds = %109
  %161 = call i32 (...) @rtnl_lock()
  %162 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %163 = call i32 @siena_finish_flush(%struct.efx_nic* %162)
  %164 = call i32 (...) @rtnl_unlock()
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @EFX_ZERO_OWORD(i32 %165)
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %196, %160
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %199

171:                                              ; preds = %167
  %172 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %173 = load i32, i32* @FR_BZ_RX_DESC_PTR_TBL, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %174, %175
  %177 = call i32 @efx_writeo_table(%struct.efx_nic* %172, i32* %5, i32 %173, i32 %176)
  %178 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %179 = load i32, i32* @FR_BZ_TX_DESC_PTR_TBL, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %180, %181
  %183 = call i32 @efx_writeo_table(%struct.efx_nic* %178, i32* %5, i32 %179, i32 %182)
  %184 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %185 = load i32, i32* @FR_BZ_EVQ_PTR_TBL, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add i32 %186, %187
  %189 = call i32 @efx_writeo_table(%struct.efx_nic* %184, i32* %5, i32 %185, i32 %188)
  %190 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %191 = load i32, i32* @FR_BZ_TIMER_TBL, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %9, align 4
  %194 = add i32 %192, %193
  %195 = call i32 @efx_writeo_table(%struct.efx_nic* %190, i32* %5, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %171
  %197 = load i32, i32* %9, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %167

199:                                              ; preds = %167
  %200 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %201 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %202 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @EFX_VF_BUFTBL_PER_VI, align 4
  %205 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %206 = call i32 @efx_vf_size(%struct.efx_nic* %205)
  %207 = mul i32 %204, %206
  %208 = call i32 @efx_sriov_bufs(%struct.efx_nic* %200, i32 %203, i32* null, i32 %207)
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 @kfree(i32* %209)
  %211 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %212 = call i32 @efx_vfdi_flush_clear(%struct.efx_vf* %211)
  %213 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %214 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %213, i32 0, i32 1
  store i64 0, i64* %214, align 8
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %199
  br label %220

218:                                              ; preds = %199
  %219 = load i32, i32* @VFDI_RC_ETIMEDOUT, align 4
  br label %220

220:                                              ; preds = %218, %217
  %221 = phi i32 [ 0, %217 ], [ %219, %218 ]
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %220, %40
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @siena_prepare_flush(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @efx_vfdi_flush_wake(%struct.efx_vf*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @siena_finish_flush(%struct.efx_nic*) #1

declare dso_local i32 @EFX_ZERO_OWORD(i32) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @efx_sriov_bufs(%struct.efx_nic*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @efx_vfdi_flush_clear(%struct.efx_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
