; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_default_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_default_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@R600_VC_ENABLE = common dso_local global i32 0, align 4
@R600_DX9_CONSTS = common dso_local global i32 0, align 4
@R600_ALU_INST_PREFER_VECTOR = common dso_local global i32 0, align 4
@r7xx_default_size = common dso_local global i32 0, align 4
@r7xx_default_state = common dso_local global i32* null, align 8
@r6xx_default_size = common dso_local global i32 0, align 4
@r6xx_default_state = common dso_local global i32* null, align 8
@R600_IT_EVENT_WRITE = common dso_local global i32 0, align 4
@R600_CACHE_FLUSH_AND_INV_EVENT = common dso_local global i32 0, align 4
@R600_IT_SET_CONFIG_REG = common dso_local global i32 0, align 4
@R600_SQ_CONFIG = common dso_local global i32 0, align 4
@R600_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @set_default_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_state(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %23 = load i32, i32* @RING_LOCALS, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %32 [
    i32 139, label %29
    i32 134, label %30
    i32 133, label %30
    i32 136, label %31
    i32 135, label %31
    i32 138, label %31
    i32 137, label %31
    i32 132, label %33
    i32 128, label %34
    i32 130, label %35
    i32 129, label %35
    i32 131, label %36
  ]

29:                                               ; preds = %1
  store i32 192, i32* %10, align 4
  store i32 56, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 136, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 4, i32* %18, align 4
  store i32 128, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %37

30:                                               ; preds = %1, %1
  store i32 84, i32* %10, align 4
  store i32 36, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 144, i32* %15, align 4
  store i32 40, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 4, i32* %18, align 4
  store i32 40, i32* %19, align 4
  store i32 40, i32* %20, align 4
  store i32 32, i32* %21, align 4
  store i32 16, i32* %22, align 4
  br label %37

31:                                               ; preds = %1, %1, %1, %1
  br label %32

32:                                               ; preds = %1, %31
  store i32 84, i32* %10, align 4
  store i32 36, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 136, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 4, i32* %18, align 4
  store i32 40, i32* %19, align 4
  store i32 40, i32* %20, align 4
  store i32 32, i32* %21, align 4
  store i32 16, i32* %22, align 4
  br label %37

33:                                               ; preds = %1
  store i32 144, i32* %10, align 4
  store i32 40, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 136, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 4, i32* %18, align 4
  store i32 40, i32* %19, align 4
  store i32 40, i32* %20, align 4
  store i32 32, i32* %21, align 4
  store i32 16, i32* %22, align 4
  br label %37

34:                                               ; preds = %1
  store i32 192, i32* %10, align 4
  store i32 56, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 188, i32* %15, align 4
  store i32 60, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 256, i32* %19, align 4
  store i32 256, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %37

35:                                               ; preds = %1, %1
  store i32 84, i32* %10, align 4
  store i32 36, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 188, i32* %15, align 4
  store i32 60, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 128, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %37

36:                                               ; preds = %1
  store i32 192, i32* %10, align 4
  store i32 56, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 144, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 128, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %32, %30, %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 136
  br i1 %43, label %72, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 135
  br i1 %50, label %72, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 138
  br i1 %57, label %72, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 137
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 131
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %58, %51, %44, %37
  store i32 0, i32* %4, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @R600_VC_ENABLE, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = load i32, i32* @R600_DX9_CONSTS, align 4
  %77 = load i32, i32* @R600_ALU_INST_PREFER_VECTOR, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @R600_PS_PRIO(i32 0)
  %80 = or i32 %78, %79
  %81 = call i32 @R600_VS_PRIO(i32 1)
  %82 = or i32 %80, %81
  %83 = call i32 @R600_GS_PRIO(i32 2)
  %84 = or i32 %82, %83
  %85 = call i32 @R600_ES_PRIO(i32 3)
  %86 = or i32 %84, %85
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @R600_NUM_PS_GPRS(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @R600_NUM_VS_GPRS(i32 %91)
  %93 = or i32 %90, %92
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @R600_NUM_CLAUSE_TEMP_GPRS(i32 %94)
  %96 = or i32 %93, %95
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @R600_NUM_GS_GPRS(i32 %97)
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @R600_NUM_ES_GPRS(i32 %99)
  %101 = or i32 %98, %100
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @R600_NUM_PS_THREADS(i32 %102)
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @R600_NUM_VS_THREADS(i32 %104)
  %106 = or i32 %103, %105
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @R600_NUM_GS_THREADS(i32 %107)
  %109 = or i32 %106, %108
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @R600_NUM_ES_THREADS(i32 %110)
  %112 = or i32 %109, %111
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @R600_NUM_PS_STACK_ENTRIES(i32 %113)
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @R600_NUM_VS_STACK_ENTRIES(i32 %115)
  %117 = or i32 %114, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %21, align 4
  %119 = call i32 @R600_NUM_GS_STACK_ENTRIES(i32 %118)
  %120 = load i32, i32* %22, align 4
  %121 = call i32 @R600_NUM_ES_STACK_ENTRIES(i32 %120)
  %122 = or i32 %119, %121
  store i32 %122, i32* %9, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp sge i32 %127, 128
  br i1 %128, label %129, label %148

129:                                              ; preds = %75
  %130 = load i32, i32* @r7xx_default_size, align 4
  %131 = add nsw i32 %130, 10
  %132 = call i32 @BEGIN_RING(i32 %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %144, %129
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @r7xx_default_size, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load i32*, i32** @r7xx_default_state, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @OUT_RING(i32 %142)
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %133

147:                                              ; preds = %133
  br label %167

148:                                              ; preds = %75
  %149 = load i32, i32* @r6xx_default_size, align 4
  %150 = add nsw i32 %149, 10
  %151 = call i32 @BEGIN_RING(i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %163, %148
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @r6xx_default_size, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32*, i32** @r6xx_default_state, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @OUT_RING(i32 %161)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %3, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %3, align 4
  br label %152

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %147
  %168 = load i32, i32* @R600_IT_EVENT_WRITE, align 4
  %169 = call i32 @CP_PACKET3(i32 %168, i32 0)
  %170 = call i32 @OUT_RING(i32 %169)
  %171 = load i32, i32* @R600_CACHE_FLUSH_AND_INV_EVENT, align 4
  %172 = call i32 @OUT_RING(i32 %171)
  %173 = load i32, i32* @R600_IT_SET_CONFIG_REG, align 4
  %174 = call i32 @CP_PACKET3(i32 %173, i32 6)
  %175 = call i32 @OUT_RING(i32 %174)
  %176 = load i32, i32* @R600_SQ_CONFIG, align 4
  %177 = load i32, i32* @R600_SET_CONFIG_REG_OFFSET, align 4
  %178 = sub nsw i32 %176, %177
  %179 = ashr i32 %178, 2
  %180 = call i32 @OUT_RING(i32 %179)
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @OUT_RING(i32 %181)
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @OUT_RING(i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @OUT_RING(i32 %185)
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @OUT_RING(i32 %187)
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @OUT_RING(i32 %189)
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @OUT_RING(i32 %191)
  %193 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @R600_PS_PRIO(i32) #1

declare dso_local i32 @R600_VS_PRIO(i32) #1

declare dso_local i32 @R600_GS_PRIO(i32) #1

declare dso_local i32 @R600_ES_PRIO(i32) #1

declare dso_local i32 @R600_NUM_PS_GPRS(i32) #1

declare dso_local i32 @R600_NUM_VS_GPRS(i32) #1

declare dso_local i32 @R600_NUM_CLAUSE_TEMP_GPRS(i32) #1

declare dso_local i32 @R600_NUM_GS_GPRS(i32) #1

declare dso_local i32 @R600_NUM_ES_GPRS(i32) #1

declare dso_local i32 @R600_NUM_PS_THREADS(i32) #1

declare dso_local i32 @R600_NUM_VS_THREADS(i32) #1

declare dso_local i32 @R600_NUM_GS_THREADS(i32) #1

declare dso_local i32 @R600_NUM_ES_THREADS(i32) #1

declare dso_local i32 @R600_NUM_PS_STACK_ENTRIES(i32) #1

declare dso_local i32 @R600_NUM_VS_STACK_ENTRIES(i32) #1

declare dso_local i32 @R600_NUM_GS_STACK_ENTRIES(i32) #1

declare dso_local i32 @R600_NUM_ES_STACK_ENTRIES(i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
