; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { %struct.zfcp_unit*, %struct.TYPE_4__* }
%struct.zfcp_unit = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }
%struct.TYPE_4__ = type { i64* }
%struct.fc_rport = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @zfcp_scsi_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.zfcp_unit*, align 8
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_rport*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @scsi_target(%struct.TYPE_6__* %14)
  %16 = call %struct.fc_rport* @starget_to_rport(i32 %15)
  store %struct.fc_rport* %16, %struct.fc_rport** %11, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %21, void (%struct.scsi_cmnd*)** %23, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %33, %struct.zfcp_adapter** %7, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.zfcp_unit*, %struct.zfcp_unit** %37, align 8
  store %struct.zfcp_unit* %38, %struct.zfcp_unit** %6, align 8
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %40 = icmp ne %struct.zfcp_adapter* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %43 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %46, align 8
  %48 = icmp ne %struct.zfcp_adapter* %42, %47
  br label %49

49:                                               ; preds = %41, %2
  %50 = phi i1 [ true, %2 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 1
  %55 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %54, align 8
  %56 = icmp ne void (%struct.scsi_cmnd*)* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %61 = icmp ne %struct.zfcp_unit* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %49
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = load i32, i32* @DID_NO_CONNECT, align 4
  %69 = call i32 @zfcp_scsi_command_fail(%struct.scsi_cmnd* %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %148

70:                                               ; preds = %49
  %71 = load %struct.fc_rport*, %struct.fc_rport** %11, align 8
  %72 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %81 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = call i32 @zfcp_dbf_scsi_result(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 %82, %struct.scsi_cmnd* %83, i32* null)
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 1
  %87 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %86, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %87(%struct.scsi_cmnd* %88)
  store i32 0, i32* %3, align 4
  br label %148

89:                                               ; preds = %70
  %90 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %91 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %90, i32 0, i32 1
  %92 = call i32 @atomic_read(i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %95 = and i32 %93, %94
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %100 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = call i32 @atomic_read(i32* %102)
  %104 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %98
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %109 = load i32, i32* @DID_ERROR, align 4
  %110 = call i32 @zfcp_scsi_command_fail(%struct.scsi_cmnd* %108, i32 %109)
  store i32 0, i32* %3, align 4
  br label %148

111:                                              ; preds = %98, %89
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = load i32, i32* @DID_IMM_RETRY, align 4
  %123 = call i32 @zfcp_scsi_command_fail(%struct.scsi_cmnd* %121, i32 %122)
  store i32 0, i32* %3, align 4
  br label %148

124:                                              ; preds = %111
  %125 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %127 = call i32 @zfcp_fsf_send_fcp_command_task(%struct.zfcp_unit* %125, %struct.scsi_cmnd* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @EBUSY, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %136, i32* %3, align 4
  br label %148

137:                                              ; preds = %124
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %144, i32* %3, align 4
  br label %148

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %143, %135, %120, %107, %76, %66
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_scsi_command_fail(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @zfcp_dbf_scsi_result(i8*, i32, i32, %struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_fsf_send_fcp_command_task(%struct.zfcp_unit*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
