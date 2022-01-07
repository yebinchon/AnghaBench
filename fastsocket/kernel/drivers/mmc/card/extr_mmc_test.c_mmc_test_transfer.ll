; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32*, i32* }
%struct.scatterlist = type { i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RESULT_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, %struct.scatterlist*, i32, i32, i32, i32, i32)* @mmc_test_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_transfer(%struct.mmc_test_card* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_test_card*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = mul i32 %25, %26
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i32, i32* %17, align 4
  %31 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %32 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %17, align 4
  br label %23

40:                                               ; preds = %23
  br label %47

41:                                               ; preds = %7
  %42 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %43 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @BUFFER_SIZE, align 4
  %46 = call i32 @memset(i32* %44, i32 0, i32 %45)
  br label %47

47:                                               ; preds = %41, %40
  %48 = load i64, i64* %18, align 8
  %49 = call i32 @local_irq_save(i64 %48)
  %50 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %53 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @BUFFER_SIZE, align 4
  %56 = call i32 @sg_copy_from_buffer(%struct.scatterlist* %50, i32 %51, i32* %54, i32 %55)
  %57 = load i64, i64* %18, align 8
  %58 = call i32 @local_irq_restore(i64 %57)
  %59 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @mmc_test_set_blksize(%struct.mmc_test_card* %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %8, align 4
  br label %226

66:                                               ; preds = %47
  %67 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %68 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @mmc_test_simple_transfer(%struct.mmc_test_card* %67, %struct.scatterlist* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %8, align 4
  br label %226

79:                                               ; preds = %66
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %190

82:                                               ; preds = %79
  %83 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %84 = call i32 @mmc_test_set_blksize(%struct.mmc_test_card* %83, i32 512)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %8, align 4
  br label %226

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = mul i32 %90, %91
  %93 = add i32 %92, 511
  %94 = udiv i32 %93, 512
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = mul nsw i32 %95, 512
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = mul i32 %97, %98
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load i32, i32* %19, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %101, %89
  %105 = load i32, i32* %19, align 4
  %106 = mul nsw i32 %105, 512
  %107 = load i32, i32* @BUFFER_SIZE, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %226

112:                                              ; preds = %104
  %113 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %114 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %19, align 4
  %117 = mul nsw i32 %116, 512
  %118 = call i32 @memset(i32* %115, i32 0, i32 %117)
  store i32 0, i32* %17, align 4
  br label %119

119:                                              ; preds = %142, %112
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %19, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %119
  %124 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %125 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %126 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 %128, 512
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %17, align 4
  %134 = mul nsw i32 %133, 512
  %135 = add i32 %132, %134
  %136 = call i32 @mmc_test_buffer_transfer(%struct.mmc_test_card* %124, i32* %131, i32 %135, i32 512, i32 0)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %123
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %8, align 4
  br label %226

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  br label %119

145:                                              ; preds = %119
  store i32 0, i32* %17, align 4
  br label %146

146:                                              ; preds = %165, %145
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = mul i32 %148, %149
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %154 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* @RESULT_FAIL, align 4
  store i32 %163, i32* %8, align 4
  br label %226

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %146

168:                                              ; preds = %146
  br label %169

169:                                              ; preds = %186, %168
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %19, align 4
  %172 = mul nsw i32 %171, 512
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %176 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 223
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @RESULT_FAIL, align 4
  store i32 %184, i32* %8, align 4
  br label %226

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %17, align 4
  br label %169

189:                                              ; preds = %169
  br label %225

190:                                              ; preds = %79
  %191 = load i64, i64* %18, align 8
  %192 = call i32 @local_irq_save(i64 %191)
  %193 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %196 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* @BUFFER_SIZE, align 4
  %199 = call i32 @sg_copy_to_buffer(%struct.scatterlist* %193, i32 %194, i32* %197, i32 %198)
  %200 = load i64, i64* %18, align 8
  %201 = call i32 @local_irq_restore(i64 %200)
  store i32 0, i32* %17, align 4
  br label %202

202:                                              ; preds = %221, %190
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %14, align 4
  %206 = mul i32 %204, %205
  %207 = icmp ult i32 %203, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %202
  %209 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %210 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %17, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %208
  %219 = load i32, i32* @RESULT_FAIL, align 4
  store i32 %219, i32* %8, align 4
  br label %226

220:                                              ; preds = %208
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %17, align 4
  br label %202

224:                                              ; preds = %202
  br label %225

225:                                              ; preds = %224, %189
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %225, %218, %183, %162, %139, %109, %87, %77, %64
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sg_copy_from_buffer(%struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @mmc_test_set_blksize(%struct.mmc_test_card*, i32) #1

declare dso_local i32 @mmc_test_simple_transfer(%struct.mmc_test_card*, %struct.scatterlist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_test_buffer_transfer(%struct.mmc_test_card*, i32*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.scatterlist*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
