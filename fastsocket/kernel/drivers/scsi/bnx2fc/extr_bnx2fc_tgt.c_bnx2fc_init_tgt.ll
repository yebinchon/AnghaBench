; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_init_tgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_init_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.fcoe_port*, %struct.fc_rport_priv*, %struct.fc_rport*, %struct.b577xx_fcoe_rx_doorbell, %struct.b577xx_doorbell_set_prod }
%struct.fc_rport = type { i32 }
%struct.b577xx_fcoe_rx_doorbell = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.b577xx_doorbell_set_prod = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { i64 }
%struct.fc_rport_priv = type { i32, %struct.TYPE_4__, %struct.fc_rport* }
%struct.TYPE_4__ = type { i32 }

@BNX2FC_NUM_MAX_SESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"exceeded max sessions. logoff this tgt\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"init_tgt - conn_id = 0x%x\0A\00", align 1
@BNX2FC_SQ_WQES_MAX = common dso_local global i32 0, align 4
@BNX2FC_RQ_WQES_MAX = common dso_local global i32 0, align 4
@BNX2FC_CQ_WQES_MAX = common dso_local global i32 0, align 4
@FC_RP_FLAGS_RETRY = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@TYPE_TAPE = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i32 0, align 4
@BNX2FC_IO_TIMEOUT = common dso_local global i64 0, align 8
@B577XX_DOORBELL_HDR_DB_TYPE = common dso_local global i32 0, align 4
@B577XX_FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@B577XX_DOORBELL_HDR_RX_SHIFT = common dso_local global i32 0, align 4
@B577XX_DOORBELL_HDR_DB_TYPE_SHIFT = common dso_local global i32 0, align 4
@B577XX_FCOE_RX_DOORBELL_NEGATIVE_ARM_SHIFT = common dso_local global i32 0, align 4
@B577XX_FCOE_RX_DOORBELL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2fc_rport*, %struct.fcoe_port*, %struct.fc_rport_priv*)* @bnx2fc_init_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_init_tgt(%struct.bnx2fc_rport* %0, %struct.fcoe_port* %1, %struct.fc_rport_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2fc_rport*, align 8
  %6 = alloca %struct.fcoe_port*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.bnx2fc_interface*, align 8
  %10 = alloca %struct.bnx2fc_hba*, align 8
  %11 = alloca %struct.b577xx_doorbell_set_prod*, align 8
  %12 = alloca %struct.b577xx_fcoe_rx_doorbell*, align 8
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %5, align 8
  store %struct.fcoe_port* %1, %struct.fcoe_port** %6, align 8
  store %struct.fc_rport_priv* %2, %struct.fc_rport_priv** %7, align 8
  %13 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %14 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %13, i32 0, i32 2
  %15 = load %struct.fc_rport*, %struct.fc_rport** %14, align 8
  store %struct.fc_rport* %15, %struct.fc_rport** %8, align 8
  %16 = load %struct.fcoe_port*, %struct.fcoe_port** %6, align 8
  %17 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %16, i32 0, i32 0
  %18 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %17, align 8
  store %struct.bnx2fc_interface* %18, %struct.bnx2fc_interface** %9, align 8
  %19 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %9, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %19, i32 0, i32 0
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %20, align 8
  store %struct.bnx2fc_hba* %21, %struct.bnx2fc_hba** %10, align 8
  %22 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %22, i32 0, i32 26
  store %struct.b577xx_doorbell_set_prod* %23, %struct.b577xx_doorbell_set_prod** %11, align 8
  %24 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %24, i32 0, i32 25
  store %struct.b577xx_fcoe_rx_doorbell* %25, %struct.b577xx_fcoe_rx_doorbell** %12, align 8
  %26 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %27 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %27, i32 0, i32 24
  store %struct.fc_rport* %26, %struct.fc_rport** %28, align 8
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %30 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %30, i32 0, i32 23
  store %struct.fc_rport_priv* %29, %struct.fc_rport_priv** %31, align 8
  %32 = load %struct.fcoe_port*, %struct.fcoe_port** %6, align 8
  %33 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %34 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %33, i32 0, i32 22
  store %struct.fcoe_port* %32, %struct.fcoe_port** %34, align 8
  %35 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %10, align 8
  %36 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BNX2FC_NUM_MAX_SESS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %42 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  store i32 -1, i32* %4, align 4
  br label %181

45:                                               ; preds = %3
  %46 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %10, align 8
  %47 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %48 = call i32 @bnx2fc_alloc_conn_id(%struct.bnx2fc_hba* %46, %struct.bnx2fc_rport* %47)
  %49 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %50 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %181

56:                                               ; preds = %45
  %57 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %58 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @BNX2FC_SQ_WQES_MAX, align 4
  %63 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %63, i32 0, i32 21
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @BNX2FC_RQ_WQES_MAX, align 4
  %66 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %67 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %66, i32 0, i32 20
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @BNX2FC_CQ_WQES_MAX, align 4
  %69 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %70 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %69, i32 0, i32 19
  store i32 %68, i32* %70, align 4
  %71 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %72 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %71, i32 0, i32 18
  %73 = load i32, i32* @BNX2FC_SQ_WQES_MAX, align 4
  %74 = call i32 @atomic_set(i32* %72, i32 %73)
  %75 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %76 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %78 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %80 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %79, i32 0, i32 17
  store i64 0, i64* %80, align 8
  %81 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %82 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %81, i32 0, i32 16
  store i64 0, i64* %82, align 8
  %83 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %83, i32 0, i32 3
  store i32 32768, i32* %84, align 4
  %85 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %86 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %85, i32 0, i32 15
  store i64 0, i64* %86, align 8
  %87 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %88 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %87, i32 0, i32 14
  %89 = call i32 @atomic_set(i32* %88, i32 0)
  %90 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %91 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @FC_RP_FLAGS_RETRY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %56
  %97 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %98 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %96
  %105 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %106 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* @TYPE_TAPE, align 4
  %114 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %115 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 8
  %116 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %117 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %116, i32 0, i32 12
  store i64 0, i64* %117, align 8
  br label %125

118:                                              ; preds = %104, %96, %56
  %119 = load i32, i32* @TYPE_DISK, align 4
  %120 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %121 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %120, i32 0, i32 13
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* @BNX2FC_IO_TIMEOUT, align 8
  %123 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %124 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %123, i32 0, i32 12
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %118, %112
  %126 = load i32, i32* @B577XX_DOORBELL_HDR_DB_TYPE, align 4
  %127 = load %struct.b577xx_doorbell_set_prod*, %struct.b577xx_doorbell_set_prod** %11, align 8
  %128 = getelementptr inbounds %struct.b577xx_doorbell_set_prod, %struct.b577xx_doorbell_set_prod* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @B577XX_FCOE_CONNECTION_TYPE, align 4
  %131 = load i32, i32* @B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load %struct.b577xx_doorbell_set_prod*, %struct.b577xx_doorbell_set_prod** %11, align 8
  %134 = getelementptr inbounds %struct.b577xx_doorbell_set_prod, %struct.b577xx_doorbell_set_prod* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @B577XX_DOORBELL_HDR_RX_SHIFT, align 4
  %139 = shl i32 1, %138
  %140 = load i32, i32* @B577XX_DOORBELL_HDR_DB_TYPE_SHIFT, align 4
  %141 = shl i32 1, %140
  %142 = or i32 %139, %141
  %143 = load i32, i32* @B577XX_FCOE_CONNECTION_TYPE, align 4
  %144 = load i32, i32* @B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = or i32 %142, %145
  %147 = load %struct.b577xx_fcoe_rx_doorbell*, %struct.b577xx_fcoe_rx_doorbell** %12, align 8
  %148 = getelementptr inbounds %struct.b577xx_fcoe_rx_doorbell, %struct.b577xx_fcoe_rx_doorbell* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* @B577XX_FCOE_RX_DOORBELL_NEGATIVE_ARM_SHIFT, align 4
  %151 = shl i32 2, %150
  %152 = load i32, i32* @B577XX_FCOE_RX_DOORBELL_OPCODE_SHIFT, align 4
  %153 = shl i32 3, %152
  %154 = or i32 %151, %153
  %155 = load %struct.b577xx_fcoe_rx_doorbell*, %struct.b577xx_fcoe_rx_doorbell** %12, align 8
  %156 = getelementptr inbounds %struct.b577xx_fcoe_rx_doorbell, %struct.b577xx_fcoe_rx_doorbell* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %158 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %157, i32 0, i32 11
  %159 = call i32 @spin_lock_init(i32* %158)
  %160 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %161 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %160, i32 0, i32 10
  %162 = call i32 @spin_lock_init(i32* %161)
  %163 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %164 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %163, i32 0, i32 9
  %165 = call i32 @INIT_LIST_HEAD(i32* %164)
  %166 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %167 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %166, i32 0, i32 8
  %168 = call i32 @INIT_LIST_HEAD(i32* %167)
  %169 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %170 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %169, i32 0, i32 7
  %171 = call i32 @INIT_LIST_HEAD(i32* %170)
  %172 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %173 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %172, i32 0, i32 6
  %174 = call i32 @INIT_LIST_HEAD(i32* %173)
  %175 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %176 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %175, i32 0, i32 5
  %177 = call i32 @init_waitqueue_head(i32* %176)
  %178 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %179 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %178, i32 0, i32 4
  %180 = call i32 @init_waitqueue_head(i32* %179)
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %125, %55, %40
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @BNX2FC_TGT_DBG(%struct.bnx2fc_rport*, i8*, ...) #1

declare dso_local i32 @bnx2fc_alloc_conn_id(%struct.bnx2fc_hba*, %struct.bnx2fc_rport*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
