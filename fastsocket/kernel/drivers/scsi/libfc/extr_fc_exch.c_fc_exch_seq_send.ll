; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_seq_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_seq_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_lport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }
%struct.fc_exch = type { void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)*, void (%struct.fc_seq*, i8*)*, i32, i64, i32, i32, i32, %struct.fc_seq, %struct.fc_lport*, i32, i8* }
%struct.fc_frame_header = type { i64, i32, i32, i32, i32 }
%struct.fc_fcp_pkt = type { i32 }

@ESB_ST_SEQ_INIT = common dso_local global i32 0, align 4
@FC_DEF_R_A_TOV = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CMD = common dso_local global i64 0, align 8
@FC_FC_FIRST_SEQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_seq* (%struct.fc_lport*, %struct.fc_frame.1*, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)*, void (%struct.fc_seq*, i8*)*, i8*, i32)* @fc_exch_seq_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_seq* @fc_exch_seq_send(%struct.fc_lport* %0, %struct.fc_frame.1* %1, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)* %2, void (%struct.fc_seq*, i8*)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.fc_seq*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fc_frame.1*, align 8
  %10 = alloca void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)*, align 8
  %11 = alloca void (%struct.fc_seq*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fc_exch*, align 8
  %15 = alloca %struct.fc_seq*, align 8
  %16 = alloca %struct.fc_frame_header*, align 8
  %17 = alloca %struct.fc_fcp_pkt*, align 8
  %18 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %8, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %9, align 8
  store void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)* %2, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)** %10, align 8
  store void (%struct.fc_seq*, i8*)* %3, void (%struct.fc_seq*, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.fc_seq* null, %struct.fc_seq** %15, align 8
  store %struct.fc_fcp_pkt* null, %struct.fc_fcp_pkt** %17, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %20 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %21 = call %struct.fc_exch* @fc_exch_alloc(%struct.fc_lport* %19, %struct.fc_frame.1* %20)
  store %struct.fc_exch* %21, %struct.fc_exch** %14, align 8
  %22 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %23 = icmp ne %struct.fc_exch* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %26 = call i32 @fc_frame_free(%struct.fc_frame.1* %25)
  store %struct.fc_seq* null, %struct.fc_seq** %7, align 8
  br label %168

27:                                               ; preds = %6
  %28 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %29 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %30 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %34 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.1* %33)
  store %struct.fc_frame_header* %34, %struct.fc_frame_header** %16, align 8
  %35 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %36 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %37 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntoh24(i32 %38)
  %40 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %41 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ntoh24(i32 %42)
  %44 = call i32 @fc_exch_set_addr(%struct.fc_exch* %35, i32 %39, i32 %43)
  %45 = load void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)** %10, align 8
  %46 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %47 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %46, i32 0, i32 0
  store void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)* %45, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)** %47, align 8
  %48 = load void (%struct.fc_seq*, i8*)*, void (%struct.fc_seq*, i8*)** %11, align 8
  %49 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %50 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %49, i32 0, i32 1
  store void (%struct.fc_seq*, i8*)* %48, void (%struct.fc_seq*, i8*)** %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %53 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @FC_DEF_R_A_TOV, align 4
  %55 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %56 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  %57 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %58 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %59 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %58, i32 0, i32 8
  store %struct.fc_lport* %57, %struct.fc_lport** %59, align 8
  %60 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %61 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %60, i32 0, i32 7
  store %struct.fc_seq* %61, %struct.fc_seq** %15, align 8
  %62 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %63 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %66 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %68 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ntoh24(i32 %69)
  %71 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %72 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %74 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %75 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %76 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @fc_exch_setup_hdr(%struct.fc_exch* %73, %struct.fc_frame.1* %74, i32 %77)
  %79 = load %struct.fc_seq*, %struct.fc_seq** %15, align 8
  %80 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %84 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %87 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %85, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %27
  %91 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %92 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @FC_RCTL_DD_UNSOL_CMD, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %98 = call %struct.fc_fcp_pkt* @fr_fsp(%struct.fc_frame.1* %97)
  store %struct.fc_fcp_pkt* %98, %struct.fc_fcp_pkt** %17, align 8
  %99 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %100 = call %struct.fc_fcp_pkt* @fr_fsp(%struct.fc_frame.1* %99)
  %101 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %102 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @fc_fcp_ddp_setup(%struct.fc_fcp_pkt* %100, i64 %103)
  br label %105

105:                                              ; preds = %96, %90, %27
  %106 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %107 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %108, align 8
  %110 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %111 = bitcast %struct.fc_lport* %110 to %struct.fc_lport.0*
  %112 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %113 = bitcast %struct.fc_frame.1* %112 to %struct.fc_frame*
  %114 = call i32 %109(%struct.fc_lport.0* %111, %struct.fc_frame* %113)
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %150

118:                                              ; preds = %105
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @fc_exch_timer_set_locked(%struct.fc_exch* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* @FC_FC_FIRST_SEQ, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %129 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %133 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %125
  %139 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %142 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %125
  %146 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %147 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %146, i32 0, i32 4
  %148 = call i32 @spin_unlock_bh(i32* %147)
  %149 = load %struct.fc_seq*, %struct.fc_seq** %15, align 8
  store %struct.fc_seq* %149, %struct.fc_seq** %7, align 8
  br label %168

150:                                              ; preds = %117
  %151 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %17, align 8
  %152 = icmp ne %struct.fc_fcp_pkt* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %17, align 8
  %155 = call i32 @fc_fcp_ddp_done(%struct.fc_fcp_pkt* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %158 = call i32 @fc_exch_done_locked(%struct.fc_exch* %157)
  store i32 %158, i32* %18, align 4
  %159 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %160 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %159, i32 0, i32 4
  %161 = call i32 @spin_unlock_bh(i32* %160)
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %166 = call i32 @fc_exch_delete(%struct.fc_exch* %165)
  br label %167

167:                                              ; preds = %164, %156
  store %struct.fc_seq* null, %struct.fc_seq** %7, align 8
  br label %168

168:                                              ; preds = %167, %145, %24
  %169 = load %struct.fc_seq*, %struct.fc_seq** %7, align 8
  ret %struct.fc_seq* %169
}

declare dso_local %struct.fc_exch* @fc_exch_alloc(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_exch_set_addr(%struct.fc_exch*, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @fc_exch_setup_hdr(%struct.fc_exch*, %struct.fc_frame.1*, i32) #1

declare dso_local %struct.fc_fcp_pkt* @fr_fsp(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_fcp_ddp_setup(%struct.fc_fcp_pkt*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fc_exch_timer_set_locked(%struct.fc_exch*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_fcp_ddp_done(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_exch_done_locked(%struct.fc_exch*) #1

declare dso_local i32 @fc_exch_delete(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
