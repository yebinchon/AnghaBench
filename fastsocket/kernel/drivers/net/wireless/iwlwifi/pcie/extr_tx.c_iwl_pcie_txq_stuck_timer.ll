; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_stuck_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_stuck_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_txq = type { %struct.TYPE_6__*, %struct.iwl_queue, i32, %struct.iwl_trans_pcie* }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_queue = type { i32, i64, i64, i32 }
%struct.iwl_trans_pcie = type { i32, i32 }
%struct.iwl_trans = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Queue %d stuck for %u ms.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Current SW read_ptr %d write_ptr %d\0A\00", align 1
@FH_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"FH TRBs(%d) = 0x%08x\0A\00", align 1
@SCD_QUEUE_STTS_REG_POS_TXF = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Q %d is %sactive and mapped to fifo %d ra_tid 0x%04x [%d,%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"scratch %d = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @iwl_pcie_txq_stuck_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_stuck_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iwl_txq*, align 8
  %4 = alloca %struct.iwl_queue*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_txq*
  store %struct.iwl_txq* %16, %struct.iwl_txq** %3, align 8
  %17 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %17, i32 0, i32 1
  store %struct.iwl_queue* %18, %struct.iwl_queue** %4, align 8
  %19 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %19, i32 0, i32 3
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %20, align 8
  store %struct.iwl_trans_pcie* %21, %struct.iwl_trans_pcie** %5, align 8
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %23 = call %struct.iwl_trans* @iwl_trans_pcie_get_trans(%struct.iwl_trans_pcie* %22)
  store %struct.iwl_trans* %23, %struct.iwl_trans** %6, align 8
  %24 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SCD_TX_STTS_QUEUE_OFFSET(i32 %30)
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %33, i32 0, i32 2
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  br label %206

49:                                               ; preds = %1
  %50 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %54 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @jiffies_to_msecs(i32 %60)
  %62 = call i32 (%struct.iwl_trans*, i8*, i32, i64, ...) @IWL_ERR(%struct.iwl_trans* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %61)
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %64 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (%struct.iwl_trans*, i8*, i32, i64, ...) @IWL_ERR(%struct.iwl_trans* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64 %72)
  %74 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %77 = call i32 @iwl_trans_read_mem_bytes(%struct.iwl_trans* %74, i32 %75, i32* %76, i32 64)
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %80 = call i32 @iwl_print_hex_error(%struct.iwl_trans* %78, i32* %79, i32 64)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %93, %49
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @FH_TCSR_CHNL_NUM, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @FH_TX_TRB_REG(i32 %89)
  %91 = call i64 @iwl_read_direct32(%struct.iwl_trans* %88, i32 %90)
  %92 = call i32 (%struct.iwl_trans*, i8*, i32, i64, ...) @IWL_ERR(%struct.iwl_trans* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %81

96:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %167, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %100 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %98, %105
  br i1 %106, label %107, label %170

107:                                              ; preds = %97
  %108 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @SCD_QUEUE_STATUS_BITS(i32 %109)
  %111 = call i32 @iwl_read_prph(%struct.iwl_trans* %108, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_TXF, align 4
  %114 = ashr i32 %112, %113
  %115 = and i32 %114, 7
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_ACTIVE, align 4
  %118 = call i32 @BIT(i32 %117)
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %12, align 4
  %124 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %125 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %126 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32 %128)
  %130 = add nsw i32 %127, %129
  %131 = call i32 @iwl_trans_read_mem32(%struct.iwl_trans* %124, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %107
  %136 = load i32, i32* %13, align 4
  %137 = and i32 %136, -65536
  %138 = lshr i32 %137, 16
  store i32 %138, i32* %13, align 4
  br label %142

139:                                              ; preds = %107
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %140, 65535
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %139, %135
  %143 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %149 = ptrtoint i8* %148 to i64
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @SCD_QUEUE_RDPTR(i32 %153)
  %155 = call i32 @iwl_read_prph(%struct.iwl_trans* %152, i32 %154)
  %156 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %157 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  %161 = and i32 %155, %160
  %162 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @SCD_QUEUE_WRPTR(i32 %163)
  %165 = call i32 @iwl_read_prph(%struct.iwl_trans* %162, i32 %164)
  %166 = call i32 (%struct.iwl_trans*, i8*, i32, i64, ...) @IWL_ERR(%struct.iwl_trans* %143, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %144, i64 %149, i32 %150, i32 %151, i32 %161, i32 %165)
  br label %167

167:                                              ; preds = %142
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %97

170:                                              ; preds = %97
  %171 = load %struct.iwl_queue*, %struct.iwl_queue** %4, align 8
  %172 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %195, %170
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = load %struct.iwl_queue*, %struct.iwl_queue** %4, align 8
  %179 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %177, %180
  br i1 %181, label %182, label %201

182:                                              ; preds = %175
  %183 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %186 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @le32_to_cpu(i32 %192)
  %194 = call i32 (%struct.iwl_trans*, i8*, i32, i64, ...) @IWL_ERR(%struct.iwl_trans* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %184, i64 %193)
  br label %195

195:                                              ; preds = %182
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.iwl_queue*, %struct.iwl_queue** %4, align 8
  %198 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @iwl_queue_inc_wrap(i32 %196, i32 %199)
  store i32 %200, i32* %9, align 4
  br label %175

201:                                              ; preds = %175
  %202 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %203 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @iwl_op_mode_nic_error(i32 %204)
  br label %206

206:                                              ; preds = %201, %45
  ret void
}

declare dso_local %struct.iwl_trans* @iwl_trans_pcie_get_trans(%struct.iwl_trans_pcie*) #1

declare dso_local i32 @SCD_TX_STTS_QUEUE_OFFSET(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, i64, ...) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @iwl_trans_read_mem_bytes(%struct.iwl_trans*, i32, i32*, i32) #1

declare dso_local i32 @iwl_print_hex_error(%struct.iwl_trans*, i32*, i32) #1

declare dso_local i64 @iwl_read_direct32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @FH_TX_TRB_REG(i32) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @SCD_QUEUE_STATUS_BITS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_trans_read_mem32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32) #1

declare dso_local i32 @SCD_QUEUE_RDPTR(i32) #1

declare dso_local i32 @SCD_QUEUE_WRPTR(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_queue_inc_wrap(i32, i32) #1

declare dso_local i32 @iwl_op_mode_nic_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
