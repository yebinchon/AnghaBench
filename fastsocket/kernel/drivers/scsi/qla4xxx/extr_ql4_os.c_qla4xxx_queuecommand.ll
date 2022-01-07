; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ddb_entry*, i32 }
%struct.ddb_entry = type { %struct.iscsi_cls_session* }
%struct.iscsi_cls_session = type { i32 }
%struct.scsi_qla_host = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.srb = type { i32 }

@AF_EEH_BUSY = common dso_local global i32 0, align 4
@AF_PCI_CHANNEL_IO_PERM_FAILURE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@DPC_RESET_HA_INTR = common dso_local global i32 0, align 4
@DPC_RESET_ACTIVE = common dso_local global i32 0, align 4
@DPC_RESET_HA = common dso_local global i32 0, align 4
@DPC_HA_UNRECOVERABLE = common dso_local global i32 0, align 4
@DPC_HA_NEED_QUIESCENT = common dso_local global i32 0, align 4
@AF_ONLINE = common dso_local global i32 0, align 4
@AF_LINK_UP = common dso_local global i32 0, align 4
@AF_LOOPBACK = common dso_local global i32 0, align 4
@DPC_RESET_HA_FW_CONTEXT = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @qla4xxx_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.ddb_entry*, align 8
  %8 = alloca %struct.iscsi_cls_session*, align 8
  %9 = alloca %struct.srb*, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.scsi_qla_host* @to_qla_host(i32 %15)
  store %struct.scsi_qla_host* %16, %struct.scsi_qla_host** %6, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ddb_entry*, %struct.ddb_entry** %20, align 8
  store %struct.ddb_entry* %21, %struct.ddb_entry** %7, align 8
  %22 = load %struct.ddb_entry*, %struct.ddb_entry** %7, align 8
  %23 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %22, i32 0, i32 0
  %24 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %23, align 8
  store %struct.iscsi_cls_session* %24, %struct.iscsi_cls_session** %8, align 8
  %25 = load i32, i32* @AF_EEH_BUSY, align 4
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 3
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load i32, i32* @AF_PCI_CHANNEL_IO_PERM_FAILURE, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 3
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @DID_NO_CONNECT, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %46

41:                                               ; preds = %30
  %42 = load i32, i32* @DID_REQUEUE, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %36
  br label %167

47:                                               ; preds = %2
  %48 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %49 = icmp ne %struct.iscsi_cls_session* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @DID_IMM_RETRY, align 4
  %52 = shl i32 %51, 16
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %167

55:                                               ; preds = %47
  %56 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %57 = call i32 @iscsi_session_chkready(%struct.iscsi_cls_session* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %167

64:                                               ; preds = %55
  %65 = load i32, i32* @DPC_RESET_HA_INTR, align 4
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %67 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %66, i32 0, i32 2
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %118, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @DPC_RESET_ACTIVE, align 4
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 2
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %118, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @DPC_RESET_HA, align 4
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 2
  %80 = call i64 @test_bit(i32 %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %118, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @DPC_HA_UNRECOVERABLE, align 4
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %85 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %84, i32 0, i32 2
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %118, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @DPC_HA_NEED_QUIESCENT, align 4
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %91 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %90, i32 0, i32 2
  %92 = call i64 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @AF_ONLINE, align 4
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %97 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %96, i32 0, i32 3
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load i32, i32* @AF_LINK_UP, align 4
  %102 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %103 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %102, i32 0, i32 3
  %104 = call i64 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i32, i32* @AF_LOOPBACK, align 4
  %108 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %109 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %108, i32 0, i32 3
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* @DPC_RESET_HA_FW_CONTEXT, align 4
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %114, i32 0, i32 2
  %116 = call i64 @test_bit(i32 %113, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112, %106, %100, %94, %88, %82, %76, %70, %64
  br label %165

119:                                              ; preds = %112
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %121 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @spin_unlock_irq(i32 %124)
  %126 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %127 = load %struct.ddb_entry*, %struct.ddb_entry** %7, align 8
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %129 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %130 = call %struct.srb* @qla4xxx_get_new_srb(%struct.scsi_qla_host* %126, %struct.ddb_entry* %127, %struct.scsi_cmnd* %128, void (%struct.scsi_cmnd*)* %129)
  store %struct.srb* %130, %struct.srb** %9, align 8
  %131 = load %struct.srb*, %struct.srb** %9, align 8
  %132 = icmp ne %struct.srb* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %119
  br label %158

134:                                              ; preds = %119
  %135 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %136 = load %struct.srb*, %struct.srb** %9, align 8
  %137 = call i32 @qla4xxx_send_command_to_isp(%struct.scsi_qla_host* %135, %struct.srb* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @QLA_SUCCESS, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %149

142:                                              ; preds = %134
  %143 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %144 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @spin_lock_irq(i32 %147)
  store i32 0, i32* %3, align 4
  br label %170

149:                                              ; preds = %141
  %150 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %151 = load %struct.srb*, %struct.srb** %9, align 8
  %152 = call i32 @qla4xxx_srb_free_dma(%struct.scsi_qla_host* %150, %struct.srb* %151)
  %153 = load %struct.srb*, %struct.srb** %9, align 8
  %154 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %155 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @mempool_free(%struct.srb* %153, i32 %156)
  br label %158

158:                                              ; preds = %149, %133
  %159 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %160 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @spin_lock_irq(i32 %163)
  br label %165

165:                                              ; preds = %158, %118
  %166 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %166, i32* %3, align 4
  br label %170

167:                                              ; preds = %60, %50, %46
  %168 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %168(%struct.scsi_cmnd* %169)
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %165, %142
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.scsi_qla_host* @to_qla_host(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iscsi_session_chkready(%struct.iscsi_cls_session*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.srb* @qla4xxx_get_new_srb(%struct.scsi_qla_host*, %struct.ddb_entry*, %struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*) #1

declare dso_local i32 @qla4xxx_send_command_to_isp(%struct.scsi_qla_host*, %struct.srb*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @qla4xxx_srb_free_dma(%struct.scsi_qla_host*, %struct.srb*) #1

declare dso_local i32 @mempool_free(%struct.srb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
