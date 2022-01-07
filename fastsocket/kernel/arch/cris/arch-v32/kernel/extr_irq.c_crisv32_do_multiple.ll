; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_irq.c_crisv32_do_multiple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_irq.c_crisv32_do_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@NBR_REGS = common dso_local global i32 0, align 4
@intr_vect = common dso_local global i32 0, align 4
@irq_regs = common dso_local global i32* null, align 8
@r_masked_vect = common dso_local global i32 0, align 4
@rw_mask = common dso_local global i32 0, align 4
@TIMER_MASK = common dso_local global i32 0, align 4
@TIMER0_INTR_VECT = common dso_local global i64 0, align 8
@FIRST_IRQ = common dso_local global i64 0, align 8
@IGNORE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crisv32_do_multiple(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %9 = load i32, i32* @NBR_REGS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = call i32 (...) @smp_processor_id()
  store i32 %13, i32* %3, align 4
  %14 = call i32 (...) @irq_enter()
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %93, %1
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @NBR_REGS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %15
  %20 = load i32, i32* @intr_vect, align 4
  %21 = load i32*, i32** @irq_regs, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @r_masked_vect, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @REG_RD_INT_VECT(i32 %20, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %12, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @intr_vect, align 4
  %33 = load i32*, i32** @irq_regs, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @rw_mask, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @REG_RD_INT_VECT(i32 %32, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %12, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %19
  %51 = getelementptr inbounds i32, i32* %12, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = load i32, i32* @TIMER_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @TIMER_MASK, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %50, %19
  %61 = load i32, i32* @intr_vect, align 4
  %62 = load i32*, i32** @irq_regs, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @rw_mask, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @REG_WR_INT_VECT(i32 %61, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %60
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %12, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TIMER_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load i32, i32* @TIMER_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %12, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* @TIMER0_INTR_VECT, align 8
  %90 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %91 = call i32 @do_IRQ(i64 %89, %struct.pt_regs* %90)
  br label %92

92:                                               ; preds = %81, %73, %60
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %15

96:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %130, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @NBR_REGS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %126, %101
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 32
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %12, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = shl i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %105
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @FIRST_IRQ, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = mul nsw i32 %119, 32
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %118, %121
  %123 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %124 = call i32 @do_IRQ(i64 %122, %struct.pt_regs* %123)
  br label %125

125:                                              ; preds = %114, %105
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %102

129:                                              ; preds = %102
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %97

133:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %164, %133
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @NBR_REGS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %134
  %139 = load i32, i32* @intr_vect, align 4
  %140 = load i32*, i32** @irq_regs, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @rw_mask, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @REG_RD_INT_VECT(i32 %139, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %12, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* @intr_vect, align 4
  %155 = load i32*, i32** @irq_regs, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @rw_mask, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @REG_WR_INT_VECT(i32 %154, i32 %159, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %138
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %134

167:                                              ; preds = %134
  %168 = call i32 (...) @irq_exit()
  %169 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %169)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @smp_processor_id(...) #2

declare dso_local i32 @irq_enter(...) #2

declare dso_local i32 @REG_RD_INT_VECT(i32, i32, i32, i32) #2

declare dso_local i32 @REG_WR_INT_VECT(i32, i32, i32, i32, i32) #2

declare dso_local i32 @do_IRQ(i64, %struct.pt_regs*) #2

declare dso_local i32 @irq_exit(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
