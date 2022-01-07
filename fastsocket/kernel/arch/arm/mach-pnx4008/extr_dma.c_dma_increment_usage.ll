; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_dma_increment_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_dma_increment_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@dma_channels_requested = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dma_ck\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dma_increment_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_increment_usage() #0 {
  %1 = alloca %struct.clk*, align 8
  %2 = load i32, i32* @dma_channels_requested, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @dma_channels_requested, align 4
  %4 = icmp ne i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %0
  %6 = call %struct.clk* @clk_get(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %6, %struct.clk** %1, align 8
  %7 = load %struct.clk*, %struct.clk** %1, align 8
  %8 = call i32 @IS_ERR(%struct.clk* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load %struct.clk*, %struct.clk** %1, align 8
  %12 = call i32 @clk_set_rate(%struct.clk* %11, i32 1)
  %13 = load %struct.clk*, %struct.clk** %1, align 8
  %14 = call i32 @clk_put(%struct.clk* %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = call i32 @pnx4008_config_dma(i32 -1, i32 -1, i32 1)
  br label %17

17:                                               ; preds = %15, %0
  ret void
}

declare dso_local %struct.clk* @clk_get(i32, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @pnx4008_config_dma(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
