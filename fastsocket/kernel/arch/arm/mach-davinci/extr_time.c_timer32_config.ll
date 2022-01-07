; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_time.c_timer32_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_time.c_timer32_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_soc_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.davinci_timer_instance* }
%struct.davinci_timer_instance = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_s = type { i32, i32, i32, i64, i64, i64 }

@davinci_soc_info = common dso_local global %struct.davinci_soc_info zeroinitializer, align 8
@timers = common dso_local global %struct.TYPE_4__* null, align 8
@TID_CLOCKEVENT = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TCR_ENAMODE_MASK = common dso_local global i32 0, align 4
@TIMER_OPTS_ONESHOT = common dso_local global i32 0, align 4
@TCR_ENAMODE_ONESHOT = common dso_local global i32 0, align 4
@TIMER_OPTS_PERIODIC = common dso_local global i32 0, align 4
@TCR_ENAMODE_PERIODIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer_s*)* @timer32_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer32_config(%struct.timer_s* %0) #0 {
  %2 = alloca %struct.timer_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.davinci_soc_info*, align 8
  %5 = alloca %struct.davinci_timer_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_s* %0, %struct.timer_s** %2, align 8
  store %struct.davinci_soc_info* @davinci_soc_info, %struct.davinci_soc_info** %4, align 8
  %7 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %8 = call i64 @USING_COMPARE(%struct.timer_s* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct.davinci_soc_info*, %struct.davinci_soc_info** %4, align 8
  %12 = getelementptr inbounds %struct.davinci_soc_info, %struct.davinci_soc_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.davinci_timer_instance*, %struct.davinci_timer_instance** %14, align 8
  store %struct.davinci_timer_instance* %15, %struct.davinci_timer_instance** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timers, align 8
  %17 = load i64, i64* @TID_CLOCKEVENT, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ID_TO_TIMER(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %23 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %26 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @__raw_readl(i64 %28)
  %30 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %31 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %35 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.davinci_timer_instance*, %struct.davinci_timer_instance** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.davinci_timer_instance, %struct.davinci_timer_instance* %37, i64 %39
  %41 = getelementptr inbounds %struct.davinci_timer_instance, %struct.davinci_timer_instance* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %36, %42
  %44 = call i32 @__raw_writel(i32 %33, i64 %43)
  br label %124

45:                                               ; preds = %1
  %46 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %47 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TCR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @__raw_readl(i64 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @TCR_ENAMODE_MASK, align 4
  %53 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %54 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %62 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TCR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @__raw_writel(i32 %60, i64 %65)
  %67 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %68 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %71 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 @__raw_writel(i32 0, i64 %73)
  %75 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %76 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %79 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %82 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i32 @__raw_writel(i32 %77, i64 %84)
  %86 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %87 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TIMER_OPTS_ONESHOT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %45
  %93 = load i32, i32* @TCR_ENAMODE_ONESHOT, align 4
  %94 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %95 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %93, %96
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  br label %116

100:                                              ; preds = %45
  %101 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %102 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TIMER_OPTS_PERIODIC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i32, i32* @TCR_ENAMODE_PERIODIC, align 4
  %109 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %110 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %108, %111
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %107, %100
  br label %116

116:                                              ; preds = %115, %92
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.timer_s*, %struct.timer_s** %2, align 8
  %119 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TCR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @__raw_writel(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %116, %10
  ret i32 0
}

declare dso_local i64 @USING_COMPARE(%struct.timer_s*) #1

declare dso_local i32 @ID_TO_TIMER(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
