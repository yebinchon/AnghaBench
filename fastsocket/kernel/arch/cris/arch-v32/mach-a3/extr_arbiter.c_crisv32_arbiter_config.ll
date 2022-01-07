; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_arbiter.c_crisv32_arbiter_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_arbiter.c_crisv32_arbiter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32**, i32** }

@NBR_OF_SLOTS = common dso_local global i32 0, align 4
@arbiters = common dso_local global %struct.TYPE_2__* null, align 8
@EXT_REGION = common dso_local global i32 0, align 4
@marb_foo = common dso_local global i32 0, align 4
@regi_marb_foo = common dso_local global i32 0, align 4
@rw_l2_slots = common dso_local global i32 0, align 4
@INT_REGION = common dso_local global i32 0, align 4
@rw_intm_slots = common dso_local global i32 0, align 4
@marb_bar = common dso_local global i32 0, align 4
@regi_marb_bar = common dso_local global i32 0, align 4
@rw_ddr2_slots = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @crisv32_arbiter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crisv32_arbiter_config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @NBR_OF_SLOTS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %26, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NBR_OF_SLOTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %17, i64 %24
  store i32 -1, i32* %25, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %18

29:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %120, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arbiters, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %31, %37
  br i1 %38, label %39, label %123

39:                                               ; preds = %30
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arbiters, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %39
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arbiters, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %55
  br label %120

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @NBR_OF_SLOTS, align 4
  store i32 %78, i32* %9, align 4
  br label %96

79:                                               ; preds = %39
  %80 = load i32, i32* @NBR_OF_SLOTS, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arbiters, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %80, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %79, %75
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %118, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @NBR_OF_SLOTS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %17, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %118

110:                                              ; preds = %101
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %17, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %110, %107
  br label %97

119:                                              ; preds = %97
  br label %120

120:                                              ; preds = %119, %74
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %30

123:                                              ; preds = %30
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %226, %123
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @NBR_OF_SLOTS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %229

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %17, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %182

134:                                              ; preds = %128
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %167, %134
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arbiters, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  br i1 %152, label %153, label %168

153:                                              ; preds = %136
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arbiters, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = srem i32 %155, %161
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  br label %168

167:                                              ; preds = %153
  br label %136

168:                                              ; preds = %166, %136
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %17, i64 %171
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arbiters, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = srem i32 %174, %180
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %168, %128
  %183 = load i32, i32* %4, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %182
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @EXT_REGION, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load i32, i32* @marb_foo, align 4
  %191 = load i32, i32* @regi_marb_foo, align 4
  %192 = load i32, i32* @rw_l2_slots, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %17, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @REG_WR_INT_VECT(i32 %190, i32 %191, i32 %192, i32 %193, i32 %197)
  br label %214

199:                                              ; preds = %185
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @INT_REGION, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %199
  %204 = load i32, i32* @marb_foo, align 4
  %205 = load i32, i32* @regi_marb_foo, align 4
  %206 = load i32, i32* @rw_intm_slots, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %17, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @REG_WR_INT_VECT(i32 %204, i32 %205, i32 %206, i32 %207, i32 %211)
  br label %213

213:                                              ; preds = %203, %199
  br label %214

214:                                              ; preds = %213, %189
  br label %225

215:                                              ; preds = %182
  %216 = load i32, i32* @marb_bar, align 4
  %217 = load i32, i32* @regi_marb_bar, align 4
  %218 = load i32, i32* @rw_ddr2_slots, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %17, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @REG_WR_INT_VECT(i32 %216, i32 %217, i32 %218, i32 %219, i32 %223)
  br label %225

225:                                              ; preds = %215, %214
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %124

229:                                              ; preds = %124
  %230 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %230)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @REG_WR_INT_VECT(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
