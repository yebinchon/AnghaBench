; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_deinterlace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_deinterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov511_frame = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"fieldheight=%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid height\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@RAWFMT_YUV420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov511_frame*, i32, i8*, i8*)* @deinterlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinterlace(%struct.ov511_frame* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ov511_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.ov511_frame* %0, %struct.ov511_frame** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %18 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %23 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %27 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @PDEBUG(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %32 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %35 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %240

40:                                               ; preds = %4
  %41 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %42 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 2
  %45 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %46 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %240

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %16, align 8
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %102, %51
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %94, %62
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %66 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load i8*, i8** %14, align 8
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %16, align 8
  store i8 %71, i8* %72, align 1
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %14, align 8
  %75 = load i8, i8* %73, align 1
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8 %75, i8* %77, align 1
  %78 = load i8*, i8** %15, align 8
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %16, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 %79, i8* %83, align 1
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %15, align 8
  %86 = load i8, i8* %84, align 1
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %86, i8* %91, align 1
  %92 = load i8*, i8** %16, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %16, align 8
  br label %94

94:                                               ; preds = %69
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %63

97:                                               ; preds = %63
  %98 = load i32, i32* %11, align 4
  %99 = load i8*, i8** %16, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %16, align 8
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %58

105:                                              ; preds = %58
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @RAWFMT_YUV420, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %240

109:                                              ; preds = %105
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8* %114, i8** %15, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sdiv i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8* %119, i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %169, %109
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sdiv i32 %122, 2
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %172

125:                                              ; preds = %120
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %160, %125
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %129 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %130, 2
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %126
  %134 = load i8*, i8** %14, align 8
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %16, align 8
  store i8 %135, i8* %136, align 1
  %137 = load i8*, i8** %14, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %14, align 8
  %139 = load i8, i8* %137, align 1
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 %139, i8* %141, align 1
  %142 = load i8*, i8** %15, align 8
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %16, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sdiv i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8 %143, i8* %148, align 1
  %149 = load i8*, i8** %15, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %15, align 8
  %151 = load i8, i8* %149, align 1
  %152 = load i8*, i8** %16, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sdiv i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8 %151, i8* %157, align 1
  %158 = load i8*, i8** %16, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8* %159, i8** %16, align 8
  br label %160

160:                                              ; preds = %133
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %126

163:                                              ; preds = %126
  %164 = load i32, i32* %11, align 4
  %165 = sdiv i32 %164, 2
  %166 = load i8*, i8** %16, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %16, align 8
  br label %169

169:                                              ; preds = %163
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %120

172:                                              ; preds = %120
  %173 = load i8*, i8** %7, align 8
  %174 = load i32, i32* %10, align 4
  %175 = mul nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = load i32, i32* %10, align 4
  %179 = sdiv i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8* %181, i8** %15, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sdiv i32 %183, 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8* %186, i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %236, %172
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %9, align 4
  %190 = sdiv i32 %189, 2
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %239

192:                                              ; preds = %187
  store i32 0, i32* %12, align 4
  br label %193

193:                                              ; preds = %227, %192
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.ov511_frame*, %struct.ov511_frame** %5, align 8
  %196 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 %197, 2
  %199 = icmp slt i32 %194, %198
  br i1 %199, label %200, label %230

200:                                              ; preds = %193
  %201 = load i8*, i8** %14, align 8
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** %16, align 8
  store i8 %202, i8* %203, align 1
  %204 = load i8*, i8** %14, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %14, align 8
  %206 = load i8, i8* %204, align 1
  %207 = load i8*, i8** %16, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %206, i8* %208, align 1
  %209 = load i8*, i8** %15, align 8
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %16, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sdiv i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 %210, i8* %215, align 1
  %216 = load i8*, i8** %15, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %15, align 8
  %218 = load i8, i8* %216, align 1
  %219 = load i8*, i8** %16, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sdiv i32 %220, 2
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  store i8 %218, i8* %224, align 1
  %225 = load i8*, i8** %16, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 2
  store i8* %226, i8** %16, align 8
  br label %227

227:                                              ; preds = %200
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %193

230:                                              ; preds = %193
  %231 = load i32, i32* %11, align 4
  %232 = sdiv i32 %231, 2
  %233 = load i8*, i8** %16, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** %16, align 8
  br label %236

236:                                              ; preds = %230
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %187

239:                                              ; preds = %187
  br label %240

240:                                              ; preds = %38, %49, %239, %105
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
