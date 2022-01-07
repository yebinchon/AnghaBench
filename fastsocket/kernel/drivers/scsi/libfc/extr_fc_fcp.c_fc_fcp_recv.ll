; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_fcp_pkt = type { i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i64 }
%struct.fc_frame_header = type { i64, i64 }
%struct.fcp_txrdy = type { i32, i32 }

@LPORT_ST_READY = common dso_local global i64 0, align 8
@FC_TYPE_BLS = common dso_local global i64 0, align 8
@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@FC_RCTL_DD_DATA_DESC = common dso_local global i64 0, align 8
@FCPHF_CRC_UNCHECKED = common dso_local global i32 0, align 4
@FC_RCTL_DD_SOL_DATA = common dso_local global i64 0, align 8
@FC_RCTL_DD_CMD_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"unexpected frame.  r_ctl %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_fcp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_recv(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_fcp_pkt*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fc_frame_header*, align 8
  %10 = alloca %struct.fcp_txrdy*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.fc_fcp_pkt*
  store %struct.fc_fcp_pkt* %14, %struct.fc_fcp_pkt** %7, align 8
  %15 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %15, i32 0, i32 3
  %17 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  store %struct.fc_lport* %17, %struct.fc_lport** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %19 = call i64 @IS_ERR(%struct.fc_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %23 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %24 = call i32 @fc_fcp_error(%struct.fc_fcp_pkt* %22, %struct.fc_frame* %23)
  br label %144

25:                                               ; preds = %3
  %26 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %27 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %26)
  store %struct.fc_frame_header* %27, %struct.fc_frame_header** %9, align 8
  %28 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %29 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LPORT_ST_READY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %141

37:                                               ; preds = %25
  %38 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %39 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %141

42:                                               ; preds = %37
  %43 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %44 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FC_TYPE_BLS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %50 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %51 = call i32 @fc_fcp_abts_resp(%struct.fc_fcp_pkt* %49, %struct.fc_frame* %50)
  br label %138

52:                                               ; preds = %42
  %53 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %54 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FC_SRB_ABORTED, align 4
  %57 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %138

62:                                               ; preds = %52
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @FC_RCTL_DD_DATA_DESC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  %67 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %68 = call i32 @fr_flags(%struct.fc_frame* %67)
  %69 = load i32, i32* @FCPHF_CRC_UNCHECKED, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %73 = call %struct.fcp_txrdy* @fc_frame_payload_get(%struct.fc_frame* %72, i32 8)
  store %struct.fcp_txrdy* %73, %struct.fcp_txrdy** %10, align 8
  %74 = load %struct.fcp_txrdy*, %struct.fcp_txrdy** %10, align 8
  %75 = icmp ne %struct.fcp_txrdy* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %80 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %81 = load %struct.fcp_txrdy*, %struct.fcp_txrdy** %10, align 8
  %82 = getelementptr inbounds %struct.fcp_txrdy, %struct.fcp_txrdy* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ntohl(i32 %83)
  %85 = load %struct.fcp_txrdy*, %struct.fcp_txrdy** %10, align 8
  %86 = getelementptr inbounds %struct.fcp_txrdy, %struct.fcp_txrdy* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ntohl(i32 %87)
  %89 = call i32 @fc_fcp_send_data(%struct.fc_fcp_pkt* %79, %struct.fc_seq* %80, i64 %84, i64 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %66
  %93 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %94 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %97 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %66
  br label %137

99:                                               ; preds = %62
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @FC_RCTL_DD_SOL_DATA, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %105 = call i32 @fr_len(%struct.fc_frame* %104)
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %106, 16
  %108 = zext i1 %107 to i32
  %109 = call i32 @WARN_ON(i32 %108)
  %110 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %111 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %112 = call i32 @fc_fcp_recv_data(%struct.fc_fcp_pkt* %110, %struct.fc_frame* %111)
  %113 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %114 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %117 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %136

118:                                              ; preds = %99
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @FC_RCTL_DD_CMD_STATUS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %124 = call i32 @fr_flags(%struct.fc_frame* %123)
  %125 = load i32, i32* @FCPHF_CRC_UNCHECKED, align 4
  %126 = and i32 %124, %125
  %127 = call i32 @WARN_ON(i32 %126)
  %128 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %129 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %130 = call i32 @fc_fcp_resp(%struct.fc_fcp_pkt* %128, %struct.fc_frame* %129)
  br label %135

131:                                              ; preds = %118
  %132 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @FC_FCP_DBG(%struct.fc_fcp_pkt* %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %131, %122
  br label %136

136:                                              ; preds = %135, %103
  br label %137

137:                                              ; preds = %136, %98
  br label %138

138:                                              ; preds = %137, %61, %48
  %139 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %140 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %139)
  br label %141

141:                                              ; preds = %138, %41, %36
  %142 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %143 = call i32 @fc_frame_free(%struct.fc_frame* %142)
  br label %144

144:                                              ; preds = %141, %21
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_error(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_abts_resp(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fr_flags(%struct.fc_frame*) #1

declare dso_local %struct.fcp_txrdy* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @fc_fcp_send_data(%struct.fc_fcp_pkt*, %struct.fc_seq*, i64, i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_recv_data(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_resp(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*, i64) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
