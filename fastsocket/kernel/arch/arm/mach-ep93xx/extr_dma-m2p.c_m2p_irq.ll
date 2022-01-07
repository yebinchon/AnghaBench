; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_m2p_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_m2p_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m2p_channel = type { i32, i32*, i32*, i64, %struct.ep93xx_dma_m2p_client* }
%struct.ep93xx_dma_m2p_client = type { i32, i32 (i32, i32*)*, i32 (i32, i32*, i32, i32)* }

@M2P_INTERRUPT = common dso_local global i64 0, align 8
@M2P_INTERRUPT_ERROR = common dso_local global i32 0, align 4
@M2P_INTERRUPT_STALL = common dso_local global i32 0, align 4
@M2P_INTERRUPT_NFB = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"m2p_irq: dma interrupt without a dma buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"m2p_irq: dma interrupt while next\0A\00", align 1
@M2P_CONTROL = common dso_local global i64 0, align 8
@M2P_CONTROL_STALL_IRQ_EN = common dso_local global i32 0, align 4
@M2P_CONTROL_NFB_IRQ_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @m2p_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m2p_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.m2p_channel*, align 8
  %7 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.m2p_channel*
  store %struct.m2p_channel* %12, %struct.m2p_channel** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %14 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %13, i32 0, i32 4
  %15 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %14, align 8
  store %struct.ep93xx_dma_m2p_client* %15, %struct.ep93xx_dma_m2p_client** %7, align 8
  %16 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %17 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %20 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @M2P_INTERRUPT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @M2P_INTERRUPT_ERROR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i32, i32* @M2P_INTERRUPT_ERROR, align 4
  %31 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %32 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @M2P_INTERRUPT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %29, %2
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @M2P_INTERRUPT_STALL, align 4
  %40 = load i32, i32* @M2P_INTERRUPT_NFB, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %46 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %173

49:                                               ; preds = %37
  %50 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %51 = call i32 @m2p_channel_state(%struct.m2p_channel* %50)
  switch i32 %51, label %136 [
    i32 131, label %52
    i32 128, label %55
    i32 129, label %104
    i32 130, label %133
  ]

52:                                               ; preds = %49
  %53 = call i32 @pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 (...) @BUG()
  br label %136

55:                                               ; preds = %49
  %56 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %57 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %56, i32 0, i32 2
  %58 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %57, align 8
  %59 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %60 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %63 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 %58(i32 %61, i32* %64, i32 0, i32 %65)
  %67 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %68 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %55
  %72 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %73 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %72, i32 0, i32 2
  %74 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %73, align 8
  %75 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %76 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %79 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 %74(i32 %77, i32* %80, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %71, %55
  %84 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %85 = call i32 @choose_buffer_xfer(%struct.m2p_channel* %84)
  %86 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %87 = call i32 @choose_buffer_next(%struct.m2p_channel* %86)
  %88 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %89 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %83
  %93 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %94 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %93, i32 0, i32 1
  %95 = load i32 (i32, i32*)*, i32 (i32, i32*)** %94, align 8
  %96 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %97 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %100 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 %95(i32 %98, i32* %101)
  br label %103

103:                                              ; preds = %92, %83
  br label %136

104:                                              ; preds = %49
  %105 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %106 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %105, i32 0, i32 2
  %107 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %106, align 8
  %108 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %109 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %112 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 %107(i32 %110, i32* %113, i32 0, i32 %114)
  %116 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %117 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %120 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %122 = call i32 @choose_buffer_next(%struct.m2p_channel* %121)
  %123 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %124 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %123, i32 0, i32 1
  %125 = load i32 (i32, i32*)*, i32 (i32, i32*)** %124, align 8
  %126 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %7, align 8
  %127 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %130 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 %125(i32 %128, i32* %131)
  br label %136

133:                                              ; preds = %49
  %134 = call i32 @pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %135 = call i32 (...) @BUG()
  br label %136

136:                                              ; preds = %49, %133, %104, %103, %52
  %137 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %138 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @M2P_CONTROL, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @readl(i64 %141)
  %143 = load i32, i32* @M2P_CONTROL_STALL_IRQ_EN, align 4
  %144 = load i32, i32* @M2P_CONTROL_NFB_IRQ_EN, align 4
  %145 = or i32 %143, %144
  %146 = xor i32 %145, -1
  %147 = and i32 %142, %146
  store i32 %147, i32* %9, align 4
  %148 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %149 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %136
  %153 = load i32, i32* @M2P_CONTROL_STALL_IRQ_EN, align 4
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %152, %136
  %157 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %158 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* @M2P_CONTROL_NFB_IRQ_EN, align 4
  %163 = load i32, i32* %9, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %161, %156
  %166 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @m2p_set_control(%struct.m2p_channel* %166, i32 %167)
  %169 = load %struct.m2p_channel*, %struct.m2p_channel** %6, align 8
  %170 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %169, i32 0, i32 0
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %165, %44
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @m2p_channel_state(%struct.m2p_channel*) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @choose_buffer_xfer(%struct.m2p_channel*) #1

declare dso_local i32 @choose_buffer_next(%struct.m2p_channel*) #1

declare dso_local i32 @m2p_set_control(%struct.m2p_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
