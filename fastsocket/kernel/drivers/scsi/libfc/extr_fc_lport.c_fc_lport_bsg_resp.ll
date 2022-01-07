; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_bsg_info = type { i16, i32, i32, i32, %struct.fc_lport*, %struct.fc_bsg_job* }
%struct.fc_lport = type { i32 }
%struct.fc_bsg_job = type { i32, i32 (%struct.fc_bsg_job*)*, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.fc_frame_header = type { i32, i32 }
%struct.fc_ct_hdr = type { i32 }

@FC_EX_CLOSED = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@FC_RQST_STATE_DONE = common dso_local global i32 0, align 4
@FC_SOF_I3 = common dso_local global i64 0, align 8
@FC_FS_ACC = common dso_local global i16 0, align 2
@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@FC_CTELS_STATUS_REJECT = common dso_local global i32 0, align 4
@KM_BIO_SRC_IRQ = common dso_local global i32 0, align 4
@FC_EOF_T = common dso_local global i64 0, align 8
@FC_FC_LAST_SEQ = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_lport_bsg_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_bsg_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_bsg_info*, align 8
  %8 = alloca %struct.fc_bsg_job*, align 8
  %9 = alloca %struct.fc_lport*, align 8
  %10 = alloca %struct.fc_frame_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i16, align 2
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.fc_bsg_info*
  store %struct.fc_bsg_info* %15, %struct.fc_bsg_info** %7, align 8
  %16 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %17 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %16, i32 0, i32 5
  %18 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %17, align 8
  store %struct.fc_bsg_job* %18, %struct.fc_bsg_job** %8, align 8
  %19 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %20 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %19, i32 0, i32 4
  %21 = load %struct.fc_lport*, %struct.fc_lport** %20, align 8
  store %struct.fc_lport* %21, %struct.fc_lport** %9, align 8
  %22 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %23 = call i64 @IS_ERR(%struct.fc_frame* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %3
  %26 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %27 = call i32 @PTR_ERR(%struct.fc_frame* %26)
  %28 = load i32, i32* @FC_EX_CLOSED, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @ECONNABORTED, align 8
  %33 = sub nsw i64 0, %32
  br label %37

34:                                               ; preds = %25
  %35 = load i64, i64* @ETIMEDOUT, align 8
  %36 = sub nsw i64 0, %35
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i64 [ %33, %31 ], [ %36, %34 ]
  %39 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i64 %38, i64* %42, align 8
  %43 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %44 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load i32, i32* @FC_RQST_STATE_DONE, align 4
  %46 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %47 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %51 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %50, i32 0, i32 1
  %52 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %51, align 8
  %53 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %54 = call i32 %52(%struct.fc_bsg_job* %53)
  %55 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %56 = call i32 @kfree(%struct.fc_bsg_info* %55)
  br label %199

57:                                               ; preds = %3
  %58 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %62 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %61)
  store %struct.fc_frame_header* %62, %struct.fc_frame_header** %10, align 8
  %63 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %64 = call i32 @fr_len(%struct.fc_frame* %63)
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 8
  store i64 %66, i64* %11, align 8
  %67 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %68 = call i8* @fc_frame_payload_get(%struct.fc_frame* %67, i32 0)
  store i8* %68, i8** %12, align 8
  %69 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %70 = call i64 @fr_sof(%struct.fc_frame* %69)
  %71 = load i64, i64* @FC_SOF_I3, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %121

73:                                               ; preds = %57
  %74 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %75 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call zeroext i16 @ntohs(i32 %76)
  %78 = icmp ne i16 %77, 0
  br i1 %78, label %121, label %79

79:                                               ; preds = %73
  %80 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %81 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %80, i32 0, i32 0
  %82 = load i16, i16* %81, align 8
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* @FC_FS_ACC, align 2
  %85 = zext i16 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i8*, i8** %12, align 8
  %89 = bitcast i8* %88 to %struct.fc_ct_hdr*
  %90 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call zeroext i16 @ntohs(i32 %91)
  %93 = zext i16 %92 to i32
  br label %99

94:                                               ; preds = %79
  %95 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %96 = call i64 @fc_frame_payload_op(%struct.fc_frame* %95)
  %97 = trunc i64 %96 to i16
  %98 = zext i16 %97 to i32
  br label %99

99:                                               ; preds = %94, %87
  %100 = phi i32 [ %93, %87 ], [ %98, %94 ]
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %13, align 2
  %102 = load i16, i16* %13, align 2
  %103 = zext i16 %102 to i32
  %104 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %104, i32 0, i32 0
  %106 = load i16, i16* %105, align 8
  %107 = zext i16 %106 to i32
  %108 = icmp eq i32 %103, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  br label %113

111:                                              ; preds = %99
  %112 = load i32, i32* @FC_CTELS_STATUS_REJECT, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %116 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %115, i32 0, i32 3
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %114, i32* %120, align 8
  br label %121

121:                                              ; preds = %113, %73, %57
  %122 = load i8*, i8** %12, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %125 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %128 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %127, i32 0, i32 2
  %129 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %130 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %129, i32 0, i32 1
  %131 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %132 = call i64 @fc_copy_buffer_to_sglist(i8* %122, i64 %123, i32 %126, i32* %128, i32* %130, i32 %131, i32* null)
  %133 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %134 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %133, i32 0, i32 3
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %132
  store i64 %138, i64* %136, align 8
  %139 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %140 = call i64 @fr_eof(%struct.fc_frame* %139)
  %141 = load i64, i64* @FC_EOF_T, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %193

143:                                              ; preds = %121
  %144 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %145 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ntoh24(i32 %146)
  %148 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %149 = load i32, i32* @FC_FC_END_SEQ, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %153 = load i32, i32* @FC_FC_END_SEQ, align 4
  %154 = or i32 %152, %153
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %193

156:                                              ; preds = %143
  %157 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %158 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %157, i32 0, i32 3
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %163 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %161, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %156
  %168 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %169 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %173 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %172, i32 0, i32 3
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  br label %176

176:                                              ; preds = %167, %156
  %177 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %178 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %177, i32 0, i32 3
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* @FC_RQST_STATE_DONE, align 4
  %182 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %183 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %187 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %186, i32 0, i32 1
  %188 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %187, align 8
  %189 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %190 = call i32 %188(%struct.fc_bsg_job* %189)
  %191 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %192 = call i32 @kfree(%struct.fc_bsg_info* %191)
  br label %193

193:                                              ; preds = %176, %143, %121
  %194 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %195 = call i32 @fc_frame_free(%struct.fc_frame* %194)
  %196 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %197 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %196, i32 0, i32 0
  %198 = call i32 @mutex_unlock(i32* %197)
  br label %199

199:                                              ; preds = %193, %37
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i32 @kfree(%struct.fc_bsg_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @fr_sof(%struct.fc_frame*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i64 @fc_copy_buffer_to_sglist(i8*, i64, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @fr_eof(%struct.fc_frame*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
