; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_wait_txq_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_wait_txq_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, %struct.iwl_txq* }
%struct.iwl_txq = type { %struct.iwl_queue }
%struct.iwl_queue = type { i64, i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@IWL_FLUSH_WAIT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"fail to flush all tx fifo queues Q %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Current SW read_ptr %d write_ptr %d\0A\00", align 1
@FH_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"FH TRBs(%d) = 0x%08x\0A\00", align 1
@SCD_QUEUE_STTS_REG_POS_TXF = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Q %d is %sactive and mapped to fifo %d ra_tid 0x%04x [%d,%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_trans_pcie_wait_txq_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_wait_txq_empty(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca %struct.iwl_txq*, align 8
  %6 = alloca %struct.iwl_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %17 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %16)
  store %struct.iwl_trans_pcie* %17, %struct.iwl_trans_pcie** %4, align 8
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %81, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %20, %27
  br i1 %28, label %29, label %84

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %81

36:                                               ; preds = %29
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 2
  %39 = load %struct.iwl_txq*, %struct.iwl_txq** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %39, i64 %41
  store %struct.iwl_txq* %42, %struct.iwl_txq** %5, align 8
  %43 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %43, i32 0, i32 0
  store %struct.iwl_queue* %44, %struct.iwl_queue** %6, align 8
  br label %45

45:                                               ; preds = %64, %36
  %46 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* @IWL_FLUSH_WAIT_MS, align 4
  %57 = call i64 @msecs_to_jiffies(i32 %56)
  %58 = add i64 %55, %57
  %59 = call i32 @time_after(i64 %54, i64 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %53, %45
  %63 = phi i1 [ false, %45 ], [ %61, %53 ]
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = call i32 @msleep(i32 1)
  br label %45

66:                                               ; preds = %62
  %67 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %71 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %84

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %35
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %19

84:                                               ; preds = %74, %19
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %206

88:                                               ; preds = %84
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %90 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %91 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %94, i64 %98)
  %100 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %104 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @SCD_TX_STTS_QUEUE_OFFSET(i32 %106)
  %108 = add nsw i32 %102, %107
  store i32 %108, i32* %9, align 4
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %110 = load i32, i32* %9, align 4
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %112 = call i32 @iwl_trans_read_mem_bytes(%struct.iwl_trans* %109, i32 %110, i32* %111, i32 64)
  %113 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %115 = call i32 @iwl_print_hex_error(%struct.iwl_trans* %113, i32* %114, i32 64)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %128, %88
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @FH_TCSR_CHNL_NUM, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @FH_TX_TRB_REG(i32 %124)
  %126 = call i32 @iwl_read_direct32(%struct.iwl_trans* %123, i32 %125)
  %127 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %116

131:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %201, %131
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %135 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %133, %140
  br i1 %141, label %142, label %204

142:                                              ; preds = %132
  %143 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @SCD_QUEUE_STATUS_BITS(i32 %144)
  %146 = call i32 @iwl_read_prph(%struct.iwl_trans* %143, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_TXF, align 4
  %149 = ashr i32 %147, %148
  %150 = and i32 %149, 7
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_ACTIVE, align 4
  %153 = call i32 @BIT(i32 %152)
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %14, align 4
  %159 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %160 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %161 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32 %163)
  %165 = add nsw i32 %162, %164
  %166 = call i32 @iwl_trans_read_mem32(%struct.iwl_trans* %159, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %142
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, -65536
  %173 = lshr i32 %172, 16
  store i32 %173, i32* %15, align 4
  br label %177

174:                                              ; preds = %142
  %175 = load i32, i32* %15, align 4
  %176 = and i32 %175, 65535
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %174, %170
  %178 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @SCD_QUEUE_RDPTR(i32 %187)
  %189 = call i32 @iwl_read_prph(%struct.iwl_trans* %186, i32 %188)
  %190 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %191 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, 1
  %195 = and i32 %189, %194
  %196 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @SCD_QUEUE_WRPTR(i32 %197)
  %199 = call i32 @iwl_read_prph(%struct.iwl_trans* %196, i32 %198)
  %200 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %178, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %179, i8* %183, i32 %184, i32 %185, i32 %195, i32 %199)
  br label %201

201:                                              ; preds = %177
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %132

204:                                              ; preds = %132
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %204, %87
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, ...) #1

declare dso_local i32 @SCD_TX_STTS_QUEUE_OFFSET(i32) #1

declare dso_local i32 @iwl_trans_read_mem_bytes(%struct.iwl_trans*, i32, i32*, i32) #1

declare dso_local i32 @iwl_print_hex_error(%struct.iwl_trans*, i32*, i32) #1

declare dso_local i32 @iwl_read_direct32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @FH_TX_TRB_REG(i32) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @SCD_QUEUE_STATUS_BITS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_trans_read_mem32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32) #1

declare dso_local i32 @SCD_QUEUE_RDPTR(i32) #1

declare dso_local i32 @SCD_QUEUE_WRPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
