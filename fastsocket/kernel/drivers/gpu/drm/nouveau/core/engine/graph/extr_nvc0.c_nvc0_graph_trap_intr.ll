; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_trap_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_trap_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"DISPATCH 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"M2MF 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CCACHE 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SHADER 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"UNK6 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"MACRO 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ROP%d 0x%08x 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"TRAP UNHANDLED 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_graph_trap_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_graph_trap_intr(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %16 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %17 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %16, i32 4194568)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %23 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %22, i32 4210688)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %28 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %27, i32 4210688, i32 -1073741824)
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %30 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %29, i32 4194568, i32 1)
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %21, %1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %39 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %38, i32 4212224)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %44 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %43, i32 4212224, i32 -1073741824)
  %45 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %46 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %45, i32 4194568, i32 2)
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, -3
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %33
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %55 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %54, i32 4227120)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %60 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %59, i32 4227120, i32 -1073741824)
  %61 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %62 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %61, i32 4194568, i32 8)
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, -9
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %53, %49
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 16
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %71 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %70, i32 4216896)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %76 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %75, i32 4216896, i32 -1073741824)
  %77 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %78 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %77, i32 4194568, i32 16)
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, -17
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %69, %65
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 64
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %87 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %86, i32 4218908)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %92 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %91, i32 4218908, i32 -1073741824)
  %93 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %94 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %93, i32 4194568, i32 64)
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, -65
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %85, %81
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %103 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %102, i32 4211856)
  store i32 %103, i32* %11, align 4
  %104 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %108 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %107, i32 4211856, i32 -1073741824)
  %109 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %110 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %109, i32 4194568, i32 128)
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, -129
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %101, %97
  %114 = load i32, i32* %3, align 4
  %115 = and i32 %114, 16777216
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  %118 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %119 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %118, i32 4194584)
  store i32 %119, i32* %12, align 4
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %150, %117
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %126 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br label %129

129:                                              ; preds = %123, %120
  %130 = phi i1 [ false, %120 ], [ %128, %123 ]
  br i1 %130, label %131, label %153

131:                                              ; preds = %129
  %132 = load i32, i32* %5, align 4
  %133 = shl i32 1, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %131
  %139 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @nvc0_graph_trap_gpc(%struct.nvc0_graph_priv* %139, i32 %140)
  %142 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %142, i32 4194584, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %138, %131
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %120

153:                                              ; preds = %129
  %154 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %155 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %154, i32 4194568, i32 16777216)
  %156 = load i32, i32* %3, align 4
  %157 = and i32 %156, -16777217
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %113
  %159 = load i32, i32* %3, align 4
  %160 = and i32 %159, 33554432
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %199

162:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %191, %162
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %166 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %163
  %170 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @ROP_UNIT(i32 %171, i32 112)
  %173 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %170, i32 %172)
  store i32 %173, i32* %14, align 4
  %174 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @ROP_UNIT(i32 %175, i32 324)
  %177 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %174, i32 %176)
  store i32 %177, i32* %15, align 4
  %178 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %179, i32 %180, i32 %181)
  %183 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @ROP_UNIT(i32 %184, i32 112)
  %186 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %183, i32 %185, i32 -1073741824)
  %187 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @ROP_UNIT(i32 %188, i32 324)
  %190 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %187, i32 %189, i32 -1073741824)
  br label %191

191:                                              ; preds = %169
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %163

194:                                              ; preds = %163
  %195 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %196 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %195, i32 4194568, i32 33554432)
  %197 = load i32, i32* %3, align 4
  %198 = and i32 %197, -33554433
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %194, %158
  %200 = load i32, i32* %3, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %204 = load i32, i32* %3, align 4
  %205 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, ...) @nv_error(%struct.nvc0_graph_priv* %203, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  %206 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %206, i32 4194568, i32 %207)
  br label %209

209:                                              ; preds = %202, %199
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, i32, ...) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @nvc0_graph_trap_gpc(%struct.nvc0_graph_priv*, i32) #1

declare dso_local i32 @ROP_UNIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
