; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@SAVAGE_SCSTART_S3D = common dso_local global i32 0, align 4
@SAVAGE_SCEND_S3D = common dso_local global i32 0, align 4
@SAVAGE_DRAWCTRL0_S4 = common dso_local global i32 0, align 4
@SAVAGE_DRAWCTRL1_S4 = common dso_local global i32 0, align 4
@BCI_CMD_WAIT = common dso_local global i32 0, align 4
@BCI_CMD_WAIT_3D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*)* @savage_dispatch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_dispatch_state(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @DMA_LOCALS, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %228

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S3_SAVAGE3D_SERIES(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @savage_verify_state_s3d(%struct.TYPE_9__* %33, i32 %34, i32 %35, i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %228

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SAVAGE_SCSTART_S3D, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %47, %48
  %50 = load i32, i32* @SAVAGE_SCEND_S3D, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp ugt i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SAVAGE_SCEND_S3D, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %9, align 4
  %58 = sub i32 %56, %57
  %59 = sub i32 %54, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %53, %46
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* @SAVAGE_SCSTART_S3D, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @SAVAGE_SCSTART_S3D, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub i32 %67, %68
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %60
  br label %94

71:                                               ; preds = %42
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SAVAGE_SCEND_S3D, align 4
  %74 = icmp ule i32 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %76, %77
  %79 = load i32, i32* @SAVAGE_SCEND_S3D, align 4
  %80 = add nsw i32 %79, 1
  %81 = icmp ugt i32 %78, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32, i32* @SAVAGE_SCEND_S3D, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %9, align 4
  %86 = sub i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @SAVAGE_SCEND_S3D, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %92

91:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %228

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %70
  br label %158

95:                                               ; preds = %26
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @savage_verify_state_s4(%struct.TYPE_9__* %96, i32 %97, i32 %98, i32* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %4, align 4
  br label %228

105:                                              ; preds = %95
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @SAVAGE_DRAWCTRL0_S4, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %110, %111
  %113 = load i32, i32* @SAVAGE_DRAWCTRL1_S4, align 4
  %114 = add nsw i32 %113, 1
  %115 = icmp ugt i32 %112, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @SAVAGE_DRAWCTRL1_S4, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %9, align 4
  %121 = sub i32 %119, %120
  %122 = sub i32 %117, %121
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %116, %109
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add i32 %124, %125
  %127 = load i32, i32* @SAVAGE_DRAWCTRL0_S4, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @SAVAGE_DRAWCTRL0_S4, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sub i32 %130, %131
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %123
  br label %157

134:                                              ; preds = %105
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @SAVAGE_DRAWCTRL1_S4, align 4
  %137 = icmp ule i32 %135, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %8, align 4
  %141 = add i32 %139, %140
  %142 = load i32, i32* @SAVAGE_DRAWCTRL1_S4, align 4
  %143 = add nsw i32 %142, 1
  %144 = icmp ugt i32 %141, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load i32, i32* @SAVAGE_DRAWCTRL1_S4, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %9, align 4
  %149 = sub i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* @SAVAGE_DRAWCTRL1_S4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %155

154:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %228

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %134
  br label %157

157:                                              ; preds = %156, %133
  br label %158

158:                                              ; preds = %157, %94
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %160, 254
  %162 = udiv i32 %161, 255
  %163 = add i32 %159, %162
  %164 = load i32, i32* %10, align 4
  %165 = add i32 %163, %164
  %166 = load i32, i32* %10, align 4
  %167 = add i32 %166, 254
  %168 = udiv i32 %167, 255
  %169 = add i32 %165, %168
  store i32 %169, i32* %11, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %158
  %176 = load i32, i32* %11, align 4
  %177 = add i32 %176, 1
  %178 = call i32 @BEGIN_DMA(i32 %177)
  %179 = load i32, i32* @BCI_CMD_WAIT, align 4
  %180 = load i32, i32* @BCI_CMD_WAIT_3D, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @DMA_WRITE(i32 %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 4
  br label %188

185:                                              ; preds = %158
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @BEGIN_DMA(i32 %186)
  br label %188

188:                                              ; preds = %185, %175
  br label %189

189:                                              ; preds = %223, %188
  br label %190

190:                                              ; preds = %199, %189
  %191 = load i32, i32* %8, align 4
  %192 = icmp ugt i32 %191, 0
  br i1 %192, label %193, label %217

193:                                              ; preds = %190
  %194 = load i32, i32* %8, align 4
  %195 = icmp ult i32 %194, 255
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* %8, align 4
  br label %199

198:                                              ; preds = %193
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 255, %198 ]
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @DMA_SET_REGISTERS(i32 %201, i32 %202)
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @DMA_COPY(i32* %204, i32 %205)
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %8, align 4
  %209 = sub i32 %208, %207
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %9, align 4
  %212 = add i32 %211, %210
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32*, i32** %7, align 8
  %215 = zext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %7, align 8
  br label %190

217:                                              ; preds = %190
  %218 = load i32, i32* %9, align 4
  %219 = add i32 %218, 2
  store i32 %219, i32* %9, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32* %221, i32** %7, align 8
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %217
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %189, label %226

226:                                              ; preds = %223
  %227 = call i32 (...) @DMA_COMMIT()
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %226, %154, %103, %91, %40, %25
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i64 @S3_SAVAGE3D_SERIES(i32) #1

declare dso_local i32 @savage_verify_state_s3d(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @savage_verify_state_s4(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_WRITE(i32) #1

declare dso_local i32 @DMA_SET_REGISTERS(i32, i32) #1

declare dso_local i32 @DMA_COPY(i32*, i32) #1

declare dso_local i32 @DMA_COMMIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
