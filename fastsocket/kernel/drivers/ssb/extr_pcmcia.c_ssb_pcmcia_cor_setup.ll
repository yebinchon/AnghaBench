; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_cor_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_cor_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@COR_SOFT_RESET = common dso_local global i32 0, align 4
@COR_FUNC_ENA = common dso_local global i32 0, align 4
@COR_IREQ_ENA = common dso_local global i32 0, align 4
@COR_LEVEL_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32)* @ssb_pcmcia_cor_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcmcia_cor_setup(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* @COR_SOFT_RESET, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @COR_FUNC_ENA, align 4
  %21 = load i32, i32* @COR_IREQ_ENA, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @COR_LEVEL_REQ, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %15
  %36 = call i32 @msleep(i32 40)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %33, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus*, i32, i32*) #1

declare dso_local i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
