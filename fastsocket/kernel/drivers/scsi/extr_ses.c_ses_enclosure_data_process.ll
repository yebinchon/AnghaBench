; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_enclosure_data_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_enclosure_data_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.enclosure_component*, %struct.ses_device* }
%struct.enclosure_component = type { i32 }
%struct.ses_device = type { i32*, i8*, i32 }
%struct.scsi_device = type { i32 }

@INIT_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENCLOSURE_COMPONENT_DEVICE = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_ARRAY_DEVICE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_device*, %struct.scsi_device*, i32)* @ses_enclosure_data_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_enclosure_data_process(%struct.enclosure_device* %0, %struct.scsi_device* %1, i32 %2) #0 {
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ses_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.enclosure_component*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %11, align 8
  %22 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %23 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %22, i32 0, i32 1
  %24 = load %struct.ses_device*, %struct.ses_device** %23, align 8
  store %struct.ses_device* %24, %struct.ses_device** %17, align 8
  %25 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %26 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 10
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* @INIT_ALLOC_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %85

36:                                               ; preds = %3
  %37 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %38 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %43 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %44 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %47 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ses_recv_diag(%struct.scsi_device* %42, i32 10, i8* %45, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i32, i32* @INIT_ALLOC_SIZE, align 4
  %54 = call i64 @ses_recv_diag(%struct.scsi_device* %51, i32 7, i8* %52, i32 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %85

58:                                               ; preds = %50
  %59 = load i8*, i8** %19, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %63, %67
  %69 = add nsw i32 %68, 4
  store i32 %69, i32* %15, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kzalloc(i32 %71, i32 %72)
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %58
  br label %85

77:                                               ; preds = %58
  %78 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @ses_recv_diag(%struct.scsi_device* %78, i32 7, i8* %79, i32 %80)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %76, %57, %35
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @kfree(i8* %86)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %116

88:                                               ; preds = %77
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %95, %99
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 4
  %103 = load i8*, i8** %10, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %10, align 8
  %106 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %107 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %88
  %111 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %112 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  store i8* %114, i8** %11, align 8
  br label %115

115:                                              ; preds = %110, %88
  br label %116

116:                                              ; preds = %115, %85
  %117 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %118 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  %121 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %122 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 11
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = bitcast i32* %127 to i8*
  store i8* %128, i8** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %244, %116
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %249

133:                                              ; preds = %129
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %240, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %243

141:                                              ; preds = %134
  store i8* null, i8** %20, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %171

144:                                              ; preds = %141
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = icmp uge i8* %145, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i8* null, i8** %10, align 8
  br label %170

152:                                              ; preds = %144
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 2
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl i32 %156, 8
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 %157, %161
  store i32 %162, i32* %15, align 4
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 4
  store i8* %164, i8** %10, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 0, i8* %168, align 1
  %169 = load i8*, i8** %10, align 8
  store i8* %169, i8** %20, align 8
  br label %170

170:                                              ; preds = %152, %151
  br label %171

171:                                              ; preds = %170, %141
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* @ENCLOSURE_COMPONENT_DEVICE, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %171
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8, i8* @ENCLOSURE_COMPONENT_ARRAY_DEVICE, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %219

187:                                              ; preds = %179, %171
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %20, align 8
  %198 = call %struct.enclosure_component* @enclosure_component_register(%struct.enclosure_device* %191, i32 %192, i8 zeroext %196, i8* %197)
  store %struct.enclosure_component* %198, %struct.enclosure_component** %21, align 8
  br label %207

199:                                              ; preds = %187
  %200 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %201 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %200, i32 0, i32 0
  %202 = load %struct.enclosure_component*, %struct.enclosure_component** %201, align 8
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %202, i64 %205
  store %struct.enclosure_component* %206, %struct.enclosure_component** %21, align 8
  br label %207

207:                                              ; preds = %199, %190
  %208 = load %struct.enclosure_component*, %struct.enclosure_component** %21, align 8
  %209 = call i32 @IS_ERR(%struct.enclosure_component* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = load i8*, i8** %11, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.enclosure_component*, %struct.enclosure_component** %21, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = call i32 @ses_process_descriptor(%struct.enclosure_component* %215, i8* %216)
  br label %218

218:                                              ; preds = %214, %211, %207
  br label %219

219:                                              ; preds = %218, %179
  %220 = load i8*, i8** %10, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32, i32* %15, align 4
  %224 = load i8*, i8** %10, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %10, align 8
  br label %227

227:                                              ; preds = %222, %219
  %228 = load i8*, i8** %11, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load i8*, i8** %11, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = add nsw i32 %234, 2
  %236 = load i8*, i8** %11, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8* %238, i8** %11, align 8
  br label %239

239:                                              ; preds = %230, %227
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %13, align 4
  br label %134

243:                                              ; preds = %134
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  %247 = load i8*, i8** %9, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 4
  store i8* %248, i8** %9, align 8
  br label %129

249:                                              ; preds = %129
  %250 = load i8*, i8** %8, align 8
  %251 = call i32 @kfree(i8* %250)
  %252 = load i8*, i8** %19, align 8
  %253 = call i32 @kfree(i8* %252)
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @ses_recv_diag(%struct.scsi_device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.enclosure_component* @enclosure_component_register(%struct.enclosure_device*, i32, i8 zeroext, i8*) #1

declare dso_local i32 @IS_ERR(%struct.enclosure_component*) #1

declare dso_local i32 @ses_process_descriptor(%struct.enclosure_component*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
