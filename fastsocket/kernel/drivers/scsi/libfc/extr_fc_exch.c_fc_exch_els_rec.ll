; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_exch = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fc_els_rec = type { i32, i32, i32 }
%struct.fc_els_rec_acc = type { i8*, i8*, i32, i32, i32, i32, i32 }

@ELS_RJT_LOGIC = common dso_local global i32 0, align 4
@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_EXPL_OXID_RXID = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@ELS_LS_ACC = common dso_local global i32 0, align 4
@ESB_ST_RESP = common dso_local global i32 0, align 4
@ESB_ST_SEQ_INIT = common dso_local global i32 0, align 4
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*)* @fc_exch_els_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_els_rec(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_exch*, align 8
  %6 = alloca %struct.fc_els_rec*, align 8
  %7 = alloca %struct.fc_els_rec_acc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  %13 = load i32, i32* @ELS_RJT_LOGIC, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %15 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %14)
  store %struct.fc_lport* %15, %struct.fc_lport** %3, align 8
  %16 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %17 = call i8* @fc_frame_payload_get(%struct.fc_frame* %16, i32 12)
  %18 = bitcast i8* %17 to %struct.fc_els_rec*
  store %struct.fc_els_rec* %18, %struct.fc_els_rec** %6, align 8
  %19 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %21 = icmp ne %struct.fc_els_rec* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %173

23:                                               ; preds = %1
  %24 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %25 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ntoh24(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %29 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohs(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %33 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ntohs(i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @fc_host_port_id(i32 %40)
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i64, i64* %12, align 8
  br label %47

45:                                               ; preds = %23
  %46 = load i64, i64* %11, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  %49 = call %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport* %36, i64 %48)
  store %struct.fc_exch* %49, %struct.fc_exch** %5, align 8
  %50 = load i32, i32* @ELS_EXPL_OXID_RXID, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %52 = icmp ne %struct.fc_exch* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %173

54:                                               ; preds = %47
  %55 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %56 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %63 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54
  br label %170

67:                                               ; preds = %60
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %74 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %170

78:                                               ; preds = %71, %67
  %79 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %80 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %79, i32 40)
  store %struct.fc_frame* %80, %struct.fc_frame** %4, align 8
  %81 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %82 = icmp ne %struct.fc_frame* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %167

84:                                               ; preds = %78
  %85 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %86 = call i8* @fc_frame_payload_get(%struct.fc_frame* %85, i32 40)
  %87 = bitcast i8* %86 to %struct.fc_els_rec_acc*
  store %struct.fc_els_rec_acc* %87, %struct.fc_els_rec_acc** %7, align 8
  %88 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %89 = call i32 @memset(%struct.fc_els_rec_acc* %88, i32 0, i32 40)
  %90 = load i32, i32* @ELS_LS_ACC, align 4
  %91 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %92 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %94 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %97 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %99 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %102 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %100, i32 %103, i32 3)
  %105 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %106 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @htons(i64 %107)
  %109 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %110 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %112 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %115 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %84
  %119 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %120 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %123 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @hton24(i32 %121, i64 %124)
  br label %134

126:                                              ; preds = %84
  %127 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %128 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %131 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @hton24(i32 %129, i64 %132)
  br label %134

134:                                              ; preds = %126, %118
  %135 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %136 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @htonl(i32 %138)
  %140 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %141 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %143 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ESB_ST_RESP, align 4
  %146 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %144, %149
  %151 = call i8* @htonl(i32 %150)
  %152 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %153 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %155 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %156 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %157 = call i32 @fc_fill_reply_hdr(%struct.fc_frame* %154, %struct.fc_frame* %155, i32 %156, i32 0)
  %158 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %159 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)** %160, align 8
  %162 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %163 = bitcast %struct.fc_lport* %162 to %struct.fc_lport.0*
  %164 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %165 = bitcast %struct.fc_frame* %164 to %struct.fc_frame.1*
  %166 = call i32 %161(%struct.fc_lport.0* %163, %struct.fc_frame.1* %165)
  br label %167

167:                                              ; preds = %134, %83
  %168 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %169 = call i32 @fc_exch_release(%struct.fc_exch* %168)
  br label %178

170:                                              ; preds = %77, %66
  %171 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %172 = call i32 @fc_exch_release(%struct.fc_exch* %171)
  br label %173

173:                                              ; preds = %170, %53, %22
  %174 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @fc_seq_ls_rjt(%struct.fc_frame* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %167
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport*, i64) #1

declare dso_local i64 @fc_host_port_id(i32) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_rec_acc*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @hton24(i32, i64) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame*, %struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

declare dso_local i32 @fc_seq_ls_rjt(%struct.fc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
