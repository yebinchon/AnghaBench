; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_handler_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_handler_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { %struct.irqaction*, i32, i32 (i32, i32)* }
%struct.sbus_action = type { %struct.irqaction* }
%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i32* }

@pil_to_sbus = common dso_local global i32* null, align 8
@irq_action = common dso_local global %struct.irqaction** null, align 8
@sbus_actions = common dso_local global %struct.sbus_action* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4d_handler_irq(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.irqaction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sbus_action*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %16 = call i32 (...) @smp_processor_id()
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** @pil_to_sbus, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = call i32 (...) @cc_get_ipen()
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = call i32 @cc_set_iclr(i32 %24)
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %26)
  store %struct.pt_regs* %27, %struct.pt_regs** %5, align 8
  %28 = call i32 (...) @irq_enter()
  %29 = load i32, i32* %7, align 4
  %30 = call i32* @kstat_cpu(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* %30, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %70, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.irqaction**, %struct.irqaction*** @irq_action, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds %struct.irqaction*, %struct.irqaction** %43, i64 %44
  %46 = load %struct.irqaction*, %struct.irqaction** %45, align 8
  store %struct.irqaction* %46, %struct.irqaction** %6, align 8
  %47 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %48 = icmp ne %struct.irqaction* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = call i32 @unexpected_irq(i32 %50, i32* null, %struct.pt_regs* %51)
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %66, %53
  %55 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %56 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %55, i32 0, i32 2
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %60 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %57(i32 %58, i32 %61)
  %63 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %64 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %63, i32 0, i32 0
  %65 = load %struct.irqaction*, %struct.irqaction** %64, align 8
  store %struct.irqaction* %65, %struct.irqaction** %6, align 8
  br label %66

66:                                               ; preds = %54
  %67 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %68 = icmp ne %struct.irqaction* %67, null
  br i1 %68, label %54, label %69

69:                                               ; preds = %66
  br label %163

70:                                               ; preds = %2
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @bw_get_intr_mask(i32 %71)
  %73 = and i32 %72, 262143
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 2
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @bw_clear_intr_mask(i32 %76, i32 %77)
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %157, %70
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %162

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %156

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @SBI2DEVID(i32 %87)
  %89 = load i32, i32* %15, align 4
  %90 = shl i32 15, %89
  %91 = call i32 @acquire_sbi(i32 %88, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %15, align 4
  %93 = shl i32 15, %92
  %94 = load i32, i32* %13, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load %struct.sbus_action*, %struct.sbus_action** @sbus_actions, align 8
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 %97, 5
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.sbus_action, %struct.sbus_action* %96, i64 %99
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.sbus_action, %struct.sbus_action* %100, i64 %102
  store %struct.sbus_action* %103, %struct.sbus_action** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = shl i32 1, %104
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %150, %86
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %155

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %149

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %13, align 4
  %119 = load %struct.sbus_action*, %struct.sbus_action** %12, align 8
  %120 = getelementptr inbounds %struct.sbus_action, %struct.sbus_action* %119, i32 0, i32 0
  %121 = load %struct.irqaction*, %struct.irqaction** %120, align 8
  store %struct.irqaction* %121, %struct.irqaction** %6, align 8
  %122 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %123 = icmp ne %struct.irqaction* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %127 = call i32 @unexpected_irq(i32 %125, i32* null, %struct.pt_regs* %126)
  br label %128

128:                                              ; preds = %124, %114
  br label %129

129:                                              ; preds = %141, %128
  %130 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %131 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %130, i32 0, i32 2
  %132 = load i32 (i32, i32)*, i32 (i32, i32)** %131, align 8
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %135 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %132(i32 %133, i32 %136)
  %138 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %139 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %138, i32 0, i32 0
  %140 = load %struct.irqaction*, %struct.irqaction** %139, align 8
  store %struct.irqaction* %140, %struct.irqaction** %6, align 8
  br label %141

141:                                              ; preds = %129
  %142 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %143 = icmp ne %struct.irqaction* %142, null
  br i1 %143, label %129, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @SBI2DEVID(i32 %145)
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @release_sbi(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %109
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %14, align 4
  %152 = shl i32 %151, 1
  store i32 %152, i32* %14, align 4
  %153 = load %struct.sbus_action*, %struct.sbus_action** %12, align 8
  %154 = getelementptr inbounds %struct.sbus_action, %struct.sbus_action* %153, i32 1
  store %struct.sbus_action* %154, %struct.sbus_action** %12, align 8
  br label %106

155:                                              ; preds = %106
  br label %156

156:                                              ; preds = %155, %82
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = ashr i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %79

162:                                              ; preds = %79
  br label %163

163:                                              ; preds = %162, %69
  %164 = call i32 (...) @irq_exit()
  %165 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %166 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %165)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cc_get_ipen(...) #1

declare dso_local i32 @cc_set_iclr(i32) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32* @kstat_cpu(i32) #1

declare dso_local i32 @unexpected_irq(i32, i32*, %struct.pt_regs*) #1

declare dso_local i32 @bw_get_intr_mask(i32) #1

declare dso_local i32 @bw_clear_intr_mask(i32, i32) #1

declare dso_local i32 @acquire_sbi(i32, i32) #1

declare dso_local i32 @SBI2DEVID(i32) #1

declare dso_local i32 @release_sbi(i32, i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
