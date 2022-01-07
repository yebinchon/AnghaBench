; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_ft_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_ft_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_disc = type { i32, i32 }
%struct.fc_ct_hdr = type { i64, i32, i32, i32 }
%struct.fc_frame_header = type { i64, i32, i32, i32 }

@DISC_EV_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Received a GPN_FT response\0A\00", align 1
@FC_SOF_I3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"GPN_FT response too short, len %d\0A\00", align 1
@DISC_EV_FAILED = common dso_local global i32 0, align 4
@FC_FS_ACC = common dso_local global i32 0, align 4
@FC_FS_RJT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"GPN_FT rejected reason %x exp %x (check zoning)\0A\00", align 1
@FC_FS_RJT_UNABL = common dso_local global i32 0, align 4
@FC_FS_EXP_FTNR = common dso_local global i64 0, align 8
@DISC_EV_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"GPN_FT unexpected response code %x\0A\00", align 1
@FC_SOF_N3 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [81 x i8] c"GPN_FT unexpected frame - out of sequence? seq_cnt %x expected %x sof %x eof %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_disc_gpn_ft_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_gpn_ft_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_disc*, align 8
  %8 = alloca %struct.fc_ct_hdr*, align 8
  %9 = alloca %struct.fc_frame_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.fc_disc*
  store %struct.fc_disc* %15, %struct.fc_disc** %7, align 8
  %16 = load i32, i32* @DISC_EV_NONE, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %18 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %21 = call i32 (%struct.fc_disc*, i8*, ...) @FC_DISC_DBG(%struct.fc_disc* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %23 = call i64 @IS_ERR(%struct.fc_frame* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %27 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %28 = call i32 @fc_disc_error(%struct.fc_disc* %26, %struct.fc_frame* %27)
  %29 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %30 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %186

32:                                               ; preds = %3
  %33 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %34 = call i32 @fc_frame_is_linear(%struct.fc_frame* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %40 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %39)
  store %struct.fc_frame_header* %40, %struct.fc_frame_header** %9, align 8
  %41 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %42 = call i32 @fr_len(%struct.fc_frame* %41)
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 24
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %47 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ntohs(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %51 = call i64 @fr_sof(%struct.fc_frame* %50)
  %52 = load i64, i64* @FC_SOF_I3, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %134

54:                                               ; preds = %32
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %134

57:                                               ; preds = %54
  %58 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %59 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %134

62:                                               ; preds = %57
  %63 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %64 = call %struct.fc_frame_header* @fc_frame_payload_get(%struct.fc_frame* %63, i32 24)
  %65 = bitcast %struct.fc_frame_header* %64 to %struct.fc_ct_hdr*
  store %struct.fc_ct_hdr* %65, %struct.fc_ct_hdr** %8, align 8
  %66 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %67 = icmp ne %struct.fc_ct_hdr* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %70 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %71 = call i32 @fr_len(%struct.fc_frame* %70)
  %72 = call i32 (%struct.fc_disc*, i8*, ...) @FC_DISC_DBG(%struct.fc_disc* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @DISC_EV_FAILED, align 4
  store i32 %73, i32* %10, align 4
  br label %133

74:                                               ; preds = %62
  %75 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %76 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ntohs(i32 %77)
  %79 = load i32, i32* @FC_FS_ACC, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, i32* %12, align 4
  %83 = zext i32 %82 to i64
  %84 = sub i64 %83, 24
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %87 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %88 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %87, i64 1
  %89 = bitcast %struct.fc_ct_hdr* %88 to %struct.fc_frame_header*
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @fc_disc_gpn_ft_parse(%struct.fc_disc* %86, %struct.fc_frame_header* %89, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %132

92:                                               ; preds = %74
  %93 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %94 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ntohs(i32 %95)
  %97 = load i32, i32* @FC_FS_RJT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %92
  %100 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %101 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %102 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %105 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (%struct.fc_disc*, i8*, ...) @FC_DISC_DBG(%struct.fc_disc* %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %103, i64 %106)
  %108 = load i32, i32* @DISC_EV_FAILED, align 4
  store i32 %108, i32* %10, align 4
  %109 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %110 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FC_FS_RJT_UNABL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %99
  %115 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %116 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @FC_FS_EXP_FTNR, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @DISC_EV_SUCCESS, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %114, %99
  br label %131

123:                                              ; preds = %92
  %124 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %125 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %126 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ntohs(i32 %127)
  %129 = call i32 (%struct.fc_disc*, i8*, ...) @FC_DISC_DBG(%struct.fc_disc* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @DISC_EV_FAILED, align 4
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %123, %122
  br label %132

132:                                              ; preds = %131, %81
  br label %133

133:                                              ; preds = %132, %68
  br label %164

134:                                              ; preds = %57, %54, %32
  %135 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %136 = call i64 @fr_sof(%struct.fc_frame* %135)
  %137 = load i64, i64* @FC_SOF_N3, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %142 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %147 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %148 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %147, i64 1
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @fc_disc_gpn_ft_parse(%struct.fc_disc* %146, %struct.fc_frame_header* %148, i32 %149)
  store i32 %150, i32* %13, align 4
  br label %163

151:                                              ; preds = %139, %134
  %152 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %155 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %158 = call i64 @fr_sof(%struct.fc_frame* %157)
  %159 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %160 = call i32 @fr_eof(%struct.fc_frame* %159)
  %161 = call i32 (%struct.fc_disc*, i8*, ...) @FC_DISC_DBG(%struct.fc_disc* %152, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %153, i32 %156, i64 %158, i32 %160)
  %162 = load i32, i32* @DISC_EV_FAILED, align 4
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %151, %145
  br label %164

164:                                              ; preds = %163, %133
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %169 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %170 = call i32 @fc_disc_error(%struct.fc_disc* %168, %struct.fc_frame* %169)
  br label %180

171:                                              ; preds = %164
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @DISC_EV_NONE, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @fc_disc_done(%struct.fc_disc* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %167
  %181 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %182 = call i32 @fc_frame_free(%struct.fc_frame* %181)
  %183 = load %struct.fc_disc*, %struct.fc_disc** %7, align 8
  %184 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %183, i32 0, i32 1
  %185 = call i32 @mutex_unlock(i32* %184)
  br label %186

186:                                              ; preds = %180, %25
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_DISC_DBG(%struct.fc_disc*, i8*, ...) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_disc_error(%struct.fc_disc*, %struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fc_frame_is_linear(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @fr_sof(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @fc_disc_gpn_ft_parse(%struct.fc_disc*, %struct.fc_frame_header*, i32) #1

declare dso_local i32 @fr_eof(%struct.fc_frame*) #1

declare dso_local i32 @fc_disc_done(%struct.fc_disc*, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
