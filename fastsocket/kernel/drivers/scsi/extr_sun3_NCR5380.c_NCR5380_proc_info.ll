; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.NCR5380_hostdata = type { i64, i64, i64 }
%struct.scsi_cmnd = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NCR5380 core release=%d.\0A\00", align 1
@NCR5380_PUBLIC_RELEASE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"NCR5380: coroutine is%s running.\0A\00", align 1
@main_running = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"n't\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"scsi%d: no currently connected command\0A\00", align 1
@HOSTNO = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"scsi%d: issue_queue\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"scsi%d: disconnected_queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i64, i32, i32)* @NCR5380_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.NCR5380_hostdata*, align 8
  %16 = alloca %struct.scsi_cmnd*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %14, align 8
  store i64 0, i64* %18, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.NCR5380_hostdata*
  store %struct.NCR5380_hostdata* %23, %struct.NCR5380_hostdata** %15, align 8
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %265

29:                                               ; preds = %6
  %30 = load i8*, i8** @NCR5380_PUBLIC_RELEASE, align 8
  %31 = call i32 @SPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %18, align 8
  %40 = sub nsw i64 %38, %39
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %18, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %18, align 8
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %14, align 8
  br label %51

51:                                               ; preds = %42, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @local_irq_save(i64 %53)
  %55 = load i64, i64* @main_running, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 @SPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %18, align 8
  %68 = sub nsw i64 %66, %67
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load i8*, i8** %14, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i64, i64* %18, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %18, align 8
  %78 = load i8*, i8** %9, align 8
  store i8* %78, i8** %14, align 8
  br label %79

79:                                               ; preds = %70, %60
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %15, align 8
  %82 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** @HOSTNO, align 8
  %87 = call i32 @SPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %15, align 8
  %90 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.scsi_cmnd*
  %93 = load i8*, i8** %14, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i8* @lprint_Scsi_Cmnd(%struct.scsi_cmnd* %92, i8* %93, i8* %94, i32 %95)
  store i8* %96, i8** %14, align 8
  br label %97

97:                                               ; preds = %88, %85
  %98 = load i8*, i8** @HOSTNO, align 8
  %99 = call i32 @SPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %14, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %18, align 8
  %108 = sub nsw i64 %106, %107
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %100
  %111 = load i8*, i8** %14, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load i64, i64* %18, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %18, align 8
  %118 = load i8*, i8** %9, align 8
  store i8* %118, i8** %14, align 8
  br label %119

119:                                              ; preds = %110, %100
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %15, align 8
  %122 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %124, %struct.scsi_cmnd** %16, align 8
  br label %125

125:                                              ; preds = %155, %120
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %127 = icmp ne %struct.scsi_cmnd* %126, null
  br i1 %127, label %128, label %158

128:                                              ; preds = %125
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i8* @lprint_Scsi_Cmnd(%struct.scsi_cmnd* %129, i8* %130, i8* %131, i32 %132)
  store i8* %133, i8** %14, align 8
  br label %134

134:                                              ; preds = %128
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %18, align 8
  %142 = sub nsw i64 %140, %141
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %134
  %145 = load i8*, i8** %14, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = load i64, i64* %18, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %18, align 8
  %152 = load i8*, i8** %9, align 8
  store i8* %152, i8** %14, align 8
  br label %153

153:                                              ; preds = %144, %134
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %157 = call %struct.scsi_cmnd* @NEXT(%struct.scsi_cmnd* %156)
  store %struct.scsi_cmnd* %157, %struct.scsi_cmnd** %16, align 8
  br label %125

158:                                              ; preds = %125
  %159 = load i8*, i8** @HOSTNO, align 8
  %160 = call i32 @SPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %14, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* %18, align 8
  %169 = sub nsw i64 %167, %168
  %170 = icmp slt i64 %166, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %161
  %172 = load i8*, i8** %14, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = load i64, i64* %18, align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* %18, align 8
  %179 = load i8*, i8** %9, align 8
  store i8* %179, i8** %14, align 8
  br label %180

180:                                              ; preds = %171, %161
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %15, align 8
  %183 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %185, %struct.scsi_cmnd** %16, align 8
  br label %186

186:                                              ; preds = %216, %181
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %188 = icmp ne %struct.scsi_cmnd* %187, null
  br i1 %188, label %189, label %219

189:                                              ; preds = %186
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %191 = load i8*, i8** %14, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i8* @lprint_Scsi_Cmnd(%struct.scsi_cmnd* %190, i8* %191, i8* %192, i32 %193)
  store i8* %194, i8** %14, align 8
  br label %195

195:                                              ; preds = %189
  %196 = load i8*, i8** %14, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* %18, align 8
  %203 = sub nsw i64 %201, %202
  %204 = icmp slt i64 %200, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %195
  %206 = load i8*, i8** %14, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = load i64, i64* %18, align 8
  %212 = add nsw i64 %211, %210
  store i64 %212, i64* %18, align 8
  %213 = load i8*, i8** %9, align 8
  store i8* %213, i8** %14, align 8
  br label %214

214:                                              ; preds = %205, %195
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  %217 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %218 = call %struct.scsi_cmnd* @NEXT(%struct.scsi_cmnd* %217)
  store %struct.scsi_cmnd* %218, %struct.scsi_cmnd** %16, align 8
  br label %186

219:                                              ; preds = %186
  %220 = load i64, i64* %17, align 8
  %221 = call i32 @local_irq_restore(i64 %220)
  %222 = load i8*, i8** %9, align 8
  %223 = load i64, i64* %11, align 8
  %224 = load i64, i64* %18, align 8
  %225 = sub nsw i64 %223, %224
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  %227 = load i8**, i8*** %10, align 8
  store i8* %226, i8** %227, align 8
  %228 = load i8*, i8** %14, align 8
  %229 = load i8*, i8** %9, align 8
  %230 = ptrtoint i8* %228 to i64
  %231 = ptrtoint i8* %229 to i64
  %232 = sub i64 %230, %231
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %18, align 8
  %235 = sub nsw i64 %233, %234
  %236 = icmp slt i64 %232, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %219
  store i32 0, i32* %7, align 4
  br label %265

238:                                              ; preds = %219
  %239 = load i8*, i8** %14, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = load i64, i64* %11, align 8
  %245 = load i64, i64* %18, align 8
  %246 = sub nsw i64 %244, %245
  %247 = sub nsw i64 %243, %246
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = icmp slt i64 %247, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %238
  %252 = load i8*, i8** %14, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* %18, align 8
  %259 = sub nsw i64 %257, %258
  %260 = sub nsw i64 %256, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %7, align 4
  br label %265

262:                                              ; preds = %238
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %12, align 4
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %263, %251, %237, %26
  %266 = load i32, i32* %7, align 4
  ret i32 %266
}

declare dso_local i32 @SPRINTF(i8*, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @lprint_Scsi_Cmnd(%struct.scsi_cmnd*, i8*, i8*, i32) #1

declare dso_local %struct.scsi_cmnd* @NEXT(%struct.scsi_cmnd*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
