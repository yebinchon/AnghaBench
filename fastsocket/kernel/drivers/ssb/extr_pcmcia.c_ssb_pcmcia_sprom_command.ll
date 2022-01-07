; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SSB_PCMCIA_SPROMCTL = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROMCTL_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32)* @ssb_pcmcia_sprom_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %10 = load i32, i32* @SSB_PCMCIA_SPROMCTL, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %19, 1000
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %23 = load i32, i32* @SSB_PCMCIA_SPROMCTL, align 4
  %24 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %22, i32 %23, i32* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SSB_PCMCIA_SPROMCTL_DONE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %43

35:                                               ; preds = %29
  %36 = call i32 @udelay(i32 10)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %34, %27, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
