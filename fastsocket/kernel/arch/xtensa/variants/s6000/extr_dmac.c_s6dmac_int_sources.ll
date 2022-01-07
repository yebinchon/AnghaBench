; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_dmac.c_s6dmac_int_sources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_dmac.c_s6dmac_int_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S6_DMA_TERMCNTIRQSTAT = common dso_local global i32 0, align 4
@S6_DMA_TERMCNTIRQCLR = common dso_local global i32 0, align 4
@S6_DMA_PENDCNTIRQSTAT = common dso_local global i32 0, align 4
@S6_DMA_PENDCNTIRQCLR = common dso_local global i32 0, align 4
@S6_DMA_LOWWMRKIRQSTAT = common dso_local global i32 0, align 4
@S6_DMA_LOWWMRKIRQCLR = common dso_local global i32 0, align 4
@S6_DMA_INTRAW0 = common dso_local global i32 0, align 4
@S6_DMA_INT0_OVER = common dso_local global i32 0, align 4
@S6_DMA_INT0_UNDER = common dso_local global i32 0, align 4
@S6_DMA_INTCLEAR0 = common dso_local global i32 0, align 4
@S6_DMA_MASTERERRINFO = common dso_local global i32 0, align 4
@S6_DMA_INT1_CHANNEL = common dso_local global i32 0, align 4
@S6_DMA_MASTERERR_CHAN_MASK = common dso_local global i32 0, align 4
@S6_DMA_INT1_MASTER = common dso_local global i32 0, align 4
@S6_DMA_INTRAW1 = common dso_local global i32 0, align 4
@S6_DMA_INTCLEAR1 = common dso_local global i32 0, align 4
@S6_DMA_INT1_MASTER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s6dmac_int_sources(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @S6_DMA_TERMCNTIRQSTAT, align 4
  %12 = add nsw i32 %10, %11
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @S6_DMA_TERMCNTIRQCLR, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @writel(i32 %17, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @S6_DMA_PENDCNTIRQSTAT, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @readl(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @S6_DMA_PENDCNTIRQCLR, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @writel(i32 %32, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %37, %38
  %40 = shl i32 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @S6_DMA_LOWWMRKIRQSTAT, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @readl(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @S6_DMA_LOWWMRKIRQCLR, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @writel(i32 %50, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %55, %56
  %58 = shl i32 %57, 2
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @S6_DMA_INTRAW0, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @readl(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @S6_DMA_INT0_OVER, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @S6_DMA_INT0_UNDER, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @S6_DMA_INTCLEAR0, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @writel(i32 %74, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @S6_DMA_INT0_UNDER, align 4
  %82 = shl i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %2
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, 8
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %2
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @S6_DMA_INT0_OVER, align 4
  %92 = shl i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 16
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %88
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @S6_DMA_MASTERERRINFO, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @readl(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @S6_DMA_INT1_CHANNEL, align 4
  %104 = load i32, i32* %5, align 4
  %105 = shl i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @S6_DMA_MASTERERR_CHAN(i32 0)
  %108 = ashr i32 %106, %107
  %109 = load i32, i32* @S6_DMA_MASTERERR_CHAN_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load i32, i32* @S6_DMA_INT1_MASTER, align 4
  %115 = shl i32 1, %114
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %113, %98
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @S6_DMA_MASTERERR_CHAN(i32 1)
  %121 = ashr i32 %119, %120
  %122 = load i32, i32* @S6_DMA_MASTERERR_CHAN_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %4, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load i32, i32* @S6_DMA_INT1_MASTER, align 4
  %128 = add nsw i32 %127, 1
  %129 = shl i32 1, %128
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %126, %118
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @S6_DMA_MASTERERR_CHAN(i32 2)
  %135 = ashr i32 %133, %134
  %136 = load i32, i32* @S6_DMA_MASTERERR_CHAN_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* %4, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32, i32* @S6_DMA_INT1_MASTER, align 4
  %142 = add nsw i32 %141, 2
  %143 = shl i32 1, %142
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %140, %132
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @S6_DMA_INTRAW1, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @readl(i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @S6_DMA_INTCLEAR1, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @writel(i32 %153, i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %4, align 4
  %160 = ashr i32 %158, %159
  %161 = and i32 %160, 1
  %162 = shl i32 %161, 5
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @S6_DMA_INT1_MASTER, align 4
  %167 = ashr i32 %165, %166
  %168 = load i32, i32* @S6_DMA_INT1_MASTER_MASK, align 4
  %169 = and i32 %167, %168
  %170 = shl i32 %169, 6
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @S6_DMA_MASTERERR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
