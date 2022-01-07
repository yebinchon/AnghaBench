; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_hardware_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_hardware_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i64 }

@SSB_BUSTYPE_PCMCIA = common dso_local global i64 0, align 8
@CISREG_COR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pcmcia_hardware_setup(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %5 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %6 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSB_BUSTYPE_PCMCIA, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %13 = call i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus* %12, i32 0)
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %15 = load i64, i64* @CISREG_COR, align 8
  %16 = call i32 @ssb_pcmcia_cor_setup(%struct.ssb_bus* %14, i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %11
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %23 = load i64, i64* @CISREG_COR, align 8
  %24 = add nsw i64 %23, 128
  %25 = call i32 @ssb_pcmcia_cor_setup(%struct.ssb_bus* %22, i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28, %19, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus*, i32) #1

declare dso_local i32 @ssb_pcmcia_cor_setup(%struct.ssb_bus*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
