; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_c-qcam.c_qcam_read_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_c-qcam.c_qcam_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32, i64 }

@force_rgb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcam_device*, i8*, i32)* @qcam_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcam_read_bytes(%struct.qcam_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcam_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qcam_device* %0, %struct.qcam_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %22 = call i32 @qcam_set_ack(%struct.qcam_device* %21, i32 0)
  %23 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %24 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %135

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %133, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %134

32:                                               ; preds = %28
  %33 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %34 = call i64 @qcam_await_ready2(%struct.qcam_device* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %238

38:                                               ; preds = %32
  %39 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %40 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @parport_read_data(i32 %41)
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %45 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @parport_read_status(i32 %46)
  %48 = ashr i32 %47, 3
  %49 = and i32 %48, 31
  %50 = xor i32 %49, 16
  store i32 %50, i32* %10, align 4
  %51 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %52 = call i32 @qcam_set_ack(%struct.qcam_device* %51, i32 1)
  %53 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %54 = call i64 @qcam_await_ready2(%struct.qcam_device* %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %238

58:                                               ; preds = %38
  %59 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %60 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @parport_read_data(i32 %61)
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %65 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @parport_read_status(i32 %66)
  %68 = ashr i32 %67, 3
  %69 = and i32 %68, 31
  %70 = xor i32 %69, 16
  store i32 %70, i32* %12, align 4
  %71 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %72 = call i32 @qcam_set_ack(%struct.qcam_device* %71, i32 0)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 1
  %76 = shl i32 %75, 7
  %77 = or i32 %73, %76
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %13, align 1
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 30
  %81 = shl i32 %80, 3
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 30
  %84 = lshr i32 %83, 1
  %85 = or i32 %81, %84
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %14, align 1
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, 1
  %90 = shl i32 %89, 7
  %91 = or i32 %87, %90
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %15, align 1
  %93 = load i64, i64* @force_rgb, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %58
  %96 = load i8, i8* %13, align 1
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %96, i8* %101, align 1
  %102 = load i8, i8* %14, align 1
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  %108 = load i8, i8* %15, align 1
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8 %108, i8* %113, align 1
  br label %133

114:                                              ; preds = %58
  %115 = load i8, i8* %15, align 1
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %115, i8* %120, align 1
  %121 = load i8, i8* %14, align 1
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = zext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 %121, i8* %126, align 1
  %127 = load i8, i8* %13, align 1
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %8, align 4
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 %127, i8* %132, align 1
  br label %133

133:                                              ; preds = %114, %95
  br label %28

134:                                              ; preds = %28
  br label %236

135:                                              ; preds = %3
  store i32 0, i32* %16, align 4
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %230, %135
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %231

141:                                              ; preds = %137
  %142 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %143 = call i64 @qcam_await_ready1(%struct.qcam_device* %142, i32 1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %4, align 4
  br label %238

147:                                              ; preds = %141
  %148 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %149 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @parport_read_status(i32 %150)
  %152 = and i32 %151, 240
  store i32 %152, i32* %19, align 4
  %153 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %154 = call i32 @qcam_set_ack(%struct.qcam_device* %153, i32 1)
  %155 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %156 = call i64 @qcam_await_ready1(%struct.qcam_device* %155, i32 0)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %4, align 4
  br label %238

160:                                              ; preds = %147
  %161 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %162 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @parport_read_status(i32 %163)
  %165 = and i32 %164, 240
  store i32 %165, i32* %20, align 4
  %166 = load %struct.qcam_device*, %struct.qcam_device** %5, align 8
  %167 = call i32 @qcam_set_ack(%struct.qcam_device* %166, i32 0)
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %20, align 4
  %170 = lshr i32 %169, 4
  %171 = or i32 %168, %170
  %172 = xor i32 %171, 136
  %173 = trunc i32 %172 to i8
  %174 = load i32, i32* %8, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %8, align 4
  %176 = urem i32 %174, 3
  store i32 %176, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 %177
  store i8 %173, i8* %178, align 1
  %179 = load i32, i32* %16, align 4
  %180 = icmp sge i32 %179, 2
  br i1 %180, label %181, label %230

181:                                              ; preds = %160
  br label %182

182:                                              ; preds = %234, %181
  %183 = load i64, i64* @force_rgb, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %182
  %186 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = load i8*, i8** %6, align 8
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8 %187, i8* %192, align 1
  %193 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 %194, i8* %199, align 1
  %200 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 2
  %201 = load i8, i8* %200, align 1
  %202 = load i8*, i8** %6, align 8
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %17, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  store i8 %201, i8* %206, align 1
  br label %229

207:                                              ; preds = %182
  %208 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 2
  %209 = load i8, i8* %208, align 1
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  store i8 %209, i8* %214, align 1
  %215 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %6, align 8
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %17, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 %216, i8* %221, align 1
  %222 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = load i8*, i8** %6, align 8
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %17, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  store i8 %223, i8* %228, align 1
  br label %229

229:                                              ; preds = %207, %185
  br label %230

230:                                              ; preds = %229, %160
  br label %137

231:                                              ; preds = %137
  %232 = load i32, i32* %16, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 0, i32* %16, align 4
  br label %182

235:                                              ; preds = %231
  br label %236

236:                                              ; preds = %235, %134
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %236, %158, %145, %56, %36
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @qcam_set_ack(%struct.qcam_device*, i32) #1

declare dso_local i64 @qcam_await_ready2(%struct.qcam_device*, i32) #1

declare dso_local i32 @parport_read_data(i32) #1

declare dso_local i32 @parport_read_status(i32) #1

declare dso_local i64 @qcam_await_ready1(%struct.qcam_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
