; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx21.c__clk_clko_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx21.c__clk_clko_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }

@CCM_CCSR = common dso_local global i32 0, align 4
@CCM_CCSR_CLKOSEL_MASK = common dso_local global i32 0, align 4
@ckil_clk = common dso_local global %struct.clk zeroinitializer, align 8
@CCM_CCSR_CLKOSEL_OFFSET = common dso_local global i32 0, align 4
@fpm_clk = common dso_local global %struct.clk zeroinitializer, align 8
@ckih_clk = common dso_local global %struct.clk zeroinitializer, align 8
@mpll_clk = common dso_local global %struct.clk zeroinitializer, align 8
@spll_clk = common dso_local global %struct.clk zeroinitializer, align 8
@fclk_clk = common dso_local global %struct.clk zeroinitializer, align 8
@hclk_clk = common dso_local global %struct.clk zeroinitializer, align 8
@ipg_clk = common dso_local global %struct.clk zeroinitializer, align 8
@per_clk = common dso_local global %struct.clk* null, align 8
@ssi_clk = common dso_local global %struct.clk* null, align 8
@nfc_clk = common dso_local global %struct.clk zeroinitializer, align 8
@usb_clk = common dso_local global %struct.clk* null, align 8
@clko_clk = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @_clk_clko_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_clk_clko_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load i32, i32* @CCM_CCSR, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  %9 = load i32, i32* @CCM_CCSR_CLKOSEL_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = icmp eq %struct.clk* %12, @ckil_clk
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %16 = shl i32 0, %15
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %200

19:                                               ; preds = %2
  %20 = load %struct.clk*, %struct.clk** %5, align 8
  %21 = icmp eq %struct.clk* %20, @fpm_clk
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %199

27:                                               ; preds = %19
  %28 = load %struct.clk*, %struct.clk** %5, align 8
  %29 = icmp eq %struct.clk* %28, @ckih_clk
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %32 = shl i32 2, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %198

35:                                               ; preds = %27
  %36 = load %struct.clk*, %struct.clk** %5, align 8
  %37 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.clk, %struct.clk* @mpll_clk, i32 0, i32 0), align 8
  %38 = icmp eq %struct.clk* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %41 = shl i32 3, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %197

44:                                               ; preds = %35
  %45 = load %struct.clk*, %struct.clk** %5, align 8
  %46 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.clk, %struct.clk* @spll_clk, i32 0, i32 0), align 8
  %47 = icmp eq %struct.clk* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %50 = shl i32 4, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %196

53:                                               ; preds = %44
  %54 = load %struct.clk*, %struct.clk** %5, align 8
  %55 = icmp eq %struct.clk* %54, @mpll_clk
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %58 = shl i32 5, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %195

61:                                               ; preds = %53
  %62 = load %struct.clk*, %struct.clk** %5, align 8
  %63 = icmp eq %struct.clk* %62, @spll_clk
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %66 = shl i32 6, %65
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %194

69:                                               ; preds = %61
  %70 = load %struct.clk*, %struct.clk** %5, align 8
  %71 = icmp eq %struct.clk* %70, @fclk_clk
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %74 = shl i32 7, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %193

77:                                               ; preds = %69
  %78 = load %struct.clk*, %struct.clk** %5, align 8
  %79 = icmp eq %struct.clk* %78, @hclk_clk
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %82 = shl i32 8, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %192

85:                                               ; preds = %77
  %86 = load %struct.clk*, %struct.clk** %5, align 8
  %87 = icmp eq %struct.clk* %86, @ipg_clk
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %90 = shl i32 9, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %191

93:                                               ; preds = %85
  %94 = load %struct.clk*, %struct.clk** %5, align 8
  %95 = load %struct.clk*, %struct.clk** @per_clk, align 8
  %96 = getelementptr inbounds %struct.clk, %struct.clk* %95, i64 0
  %97 = icmp eq %struct.clk* %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %100 = shl i32 10, %99
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %190

103:                                              ; preds = %93
  %104 = load %struct.clk*, %struct.clk** %5, align 8
  %105 = load %struct.clk*, %struct.clk** @per_clk, align 8
  %106 = getelementptr inbounds %struct.clk, %struct.clk* %105, i64 1
  %107 = icmp eq %struct.clk* %104, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %110 = shl i32 11, %109
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %189

113:                                              ; preds = %103
  %114 = load %struct.clk*, %struct.clk** %5, align 8
  %115 = load %struct.clk*, %struct.clk** @per_clk, align 8
  %116 = getelementptr inbounds %struct.clk, %struct.clk* %115, i64 2
  %117 = icmp eq %struct.clk* %114, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %120 = shl i32 12, %119
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %188

123:                                              ; preds = %113
  %124 = load %struct.clk*, %struct.clk** %5, align 8
  %125 = load %struct.clk*, %struct.clk** @per_clk, align 8
  %126 = getelementptr inbounds %struct.clk, %struct.clk* %125, i64 3
  %127 = icmp eq %struct.clk* %124, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %130 = shl i32 13, %129
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %187

133:                                              ; preds = %123
  %134 = load %struct.clk*, %struct.clk** %5, align 8
  %135 = load %struct.clk*, %struct.clk** @ssi_clk, align 8
  %136 = getelementptr inbounds %struct.clk, %struct.clk* %135, i64 0
  %137 = icmp eq %struct.clk* %134, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %140 = shl i32 14, %139
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %186

143:                                              ; preds = %133
  %144 = load %struct.clk*, %struct.clk** %5, align 8
  %145 = load %struct.clk*, %struct.clk** @ssi_clk, align 8
  %146 = getelementptr inbounds %struct.clk, %struct.clk* %145, i64 1
  %147 = icmp eq %struct.clk* %144, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %150 = shl i32 15, %149
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %185

153:                                              ; preds = %143
  %154 = load %struct.clk*, %struct.clk** %5, align 8
  %155 = icmp eq %struct.clk* %154, @nfc_clk
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %158 = shl i32 16, %157
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %6, align 4
  br label %184

161:                                              ; preds = %153
  %162 = load %struct.clk*, %struct.clk** %5, align 8
  %163 = load %struct.clk*, %struct.clk** @usb_clk, align 8
  %164 = getelementptr inbounds %struct.clk, %struct.clk* %163, i64 0
  %165 = icmp eq %struct.clk* %162, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %168 = shl i32 20, %167
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %183

171:                                              ; preds = %161
  %172 = load %struct.clk*, %struct.clk** %5, align 8
  %173 = icmp eq %struct.clk* %172, @clko_clk
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* @CCM_CCSR_CLKOSEL_OFFSET, align 4
  %176 = shl i32 21, %175
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  br label %182

179:                                              ; preds = %171
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %3, align 4
  br label %204

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %166
  br label %184

184:                                              ; preds = %183, %156
  br label %185

185:                                              ; preds = %184, %148
  br label %186

186:                                              ; preds = %185, %138
  br label %187

187:                                              ; preds = %186, %128
  br label %188

188:                                              ; preds = %187, %118
  br label %189

189:                                              ; preds = %188, %108
  br label %190

190:                                              ; preds = %189, %98
  br label %191

191:                                              ; preds = %190, %88
  br label %192

192:                                              ; preds = %191, %80
  br label %193

193:                                              ; preds = %192, %72
  br label %194

194:                                              ; preds = %193, %64
  br label %195

195:                                              ; preds = %194, %56
  br label %196

196:                                              ; preds = %195, %48
  br label %197

197:                                              ; preds = %196, %39
  br label %198

198:                                              ; preds = %197, %30
  br label %199

199:                                              ; preds = %198, %22
  br label %200

200:                                              ; preds = %199, %14
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @CCM_CCSR, align 4
  %203 = call i32 @__raw_writel(i32 %201, i32 %202)
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %179
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
