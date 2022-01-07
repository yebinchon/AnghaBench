; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_freqerr_chk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_freqerr_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*, i32, i32, i32)* @freqerr_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freqerr_chk(%struct.mb86a16_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mb86a16_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %23, align 4
  %28 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %29 = call i32 @mb86a16_read(%struct.mb86a16_state* %28, i32 67, i8* %10)
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %211

32:                                               ; preds = %4
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sgt i32 %34, 127
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 256
  store i32 %39, i32* %16, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %16, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 256
  store i32 %47, i32* %19, align 4
  %48 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %49 = call i32 @mb86a16_read(%struct.mb86a16_state* %48, i32 73, i8* %13)
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %211

52:                                               ; preds = %43
  %53 = load i8, i8* %13, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 4
  %56 = ashr i32 %55, 2
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %61 = call i32 @mb86a16_read(%struct.mb86a16_state* %60, i32 42, i8* %13)
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %211

64:                                               ; preds = %59
  %65 = load i8, i8* %13, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 32
  %68 = ashr i32 %67, 5
  store i32 %68, i32* %23, align 4
  br label %69

69:                                               ; preds = %64, %52
  %70 = load i32, i32* %22, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %74 = call i32 @mb86a16_read(%struct.mb86a16_state* %73, i32 14, i8* %11)
  %75 = icmp ne i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %211

77:                                               ; preds = %72
  %78 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %79 = call i32 @mb86a16_read(%struct.mb86a16_state* %78, i32 15, i8* %12)
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %211

82:                                               ; preds = %77
  br label %98

83:                                               ; preds = %69
  %84 = load i32, i32* %23, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %88 = call i32 @mb86a16_read(%struct.mb86a16_state* %87, i32 43, i8* %11)
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %211

91:                                               ; preds = %86
  %92 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %93 = call i32 @mb86a16_read(%struct.mb86a16_state* %92, i32 44, i8* %12)
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %211

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i32, i32* %22, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %23, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %129

104:                                              ; preds = %101, %98
  %105 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @smrt_info_get(%struct.mb86a16_state* %105, i32 %106)
  %108 = load i8, i8* %12, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 1
  %111 = shl i32 %110, 8
  %112 = load i8, i8* %11, align 1
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 %111, %113
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp sgt i32 %115, 255
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load i32, i32* %18, align 4
  %119 = sub nsw i32 %118, 512
  store i32 %119, i32* %17, align 4
  br label %122

120:                                              ; preds = %104
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %125 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = sdiv i32 %127, 8192
  store i32 %128, i32* %20, align 4
  br label %130

129:                                              ; preds = %101
  store i32 0, i32* %20, align 4
  br label %130

130:                                              ; preds = %129, %122
  %131 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %132 = call i32 @mb86a16_read(%struct.mb86a16_state* %131, i32 34, i8* %13)
  %133 = icmp ne i32 %132, 2
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %211

135:                                              ; preds = %130
  %136 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %137 = call i32 @mb86a16_read(%struct.mb86a16_state* %136, i32 35, i8* %14)
  %138 = icmp ne i32 %137, 2
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %211

140:                                              ; preds = %135
  %141 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %142 = call i32 @mb86a16_read(%struct.mb86a16_state* %141, i32 36, i8* %15)
  %143 = icmp ne i32 %142, 2
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %211

145:                                              ; preds = %140
  %146 = load i8, i8* %13, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 224
  %149 = ashr i32 %148, 5
  store i32 %149, i32* %24, align 4
  %150 = load i8, i8* %13, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 31
  %153 = shl i32 %152, 12
  %154 = load i8, i8* %14, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 4
  %157 = add nsw i32 %153, %156
  %158 = load i8, i8* %15, align 1
  %159 = zext i8 %158 to i32
  %160 = ashr i32 %159, 4
  %161 = add nsw i32 %157, %160
  store i32 %161, i32* %25, align 4
  %162 = load i32, i32* %24, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %145
  %165 = load i32, i32* %25, align 4
  %166 = mul nsw i32 2, %165
  store i32 %166, i32* %26, align 4
  br label %169

167:                                              ; preds = %145
  %168 = load i32, i32* %25, align 4
  store i32 %168, i32* %26, align 4
  br label %169

169:                                              ; preds = %167, %164
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %7, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %27, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %202

175:                                              ; preds = %169
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %27, align 4
  %180 = mul nsw i32 %179, 1000
  %181 = add nsw i32 %178, %180
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %175
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %27, align 4
  %188 = mul nsw i32 %187, 1000
  %189 = add nsw i32 %186, %188
  %190 = add nsw i32 %189, 500
  %191 = sdiv i32 %190, 1000
  store i32 %191, i32* %21, align 4
  br label %201

192:                                              ; preds = %175
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %20, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %27, align 4
  %197 = mul nsw i32 %196, 1000
  %198 = add nsw i32 %195, %197
  %199 = sub nsw i32 %198, 500
  %200 = sdiv i32 %199, 1000
  store i32 %200, i32* %21, align 4
  br label %201

201:                                              ; preds = %192, %183
  br label %209

202:                                              ; preds = %169
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %27, align 4
  %207 = mul nsw i32 %206, 1000
  %208 = add nsw i32 %205, %207
  store i32 %208, i32* %21, align 4
  br label %209

209:                                              ; preds = %202, %201
  %210 = load i32, i32* %21, align 4
  store i32 %210, i32* %5, align 4
  br label %217

211:                                              ; preds = %144, %139, %134, %95, %90, %81, %76, %63, %51, %31
  %212 = load i32, i32* @verbose, align 4
  %213 = load i32, i32* @MB86A16_ERROR, align 4
  %214 = call i32 @dprintk(i32 %212, i32 %213, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %215 = load i32, i32* @EREMOTEIO, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %211, %209
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i8*) #1

declare dso_local i32 @smrt_info_get(%struct.mb86a16_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
