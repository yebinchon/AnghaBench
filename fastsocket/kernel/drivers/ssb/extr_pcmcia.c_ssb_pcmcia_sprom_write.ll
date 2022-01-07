; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SSB_PCMCIA_SPROM_ADDRLO = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROM_ADDRHI = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROM_DATALO = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROM_DATAHI = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROMCTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32, i32)* @ssb_pcmcia_sprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcmcia_sprom_write(%struct.ssb_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %12 = load i32, i32* @SSB_PCMCIA_SPROM_ADDRLO, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %11, i32 %12, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %22 = load i32, i32* @SSB_PCMCIA_SPROM_ADDRHI, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 65280
  %25 = ashr i32 %24, 8
  %26 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %21, i32 %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %33 = load i32, i32* @SSB_PCMCIA_SPROM_DATALO, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 255
  %36 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %32, i32 %33, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %62

41:                                               ; preds = %31
  %42 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %43 = load i32, i32* @SSB_PCMCIA_SPROM_DATAHI, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 65280
  %46 = ashr i32 %45, 8
  %47 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %42, i32 %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %41
  %53 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %54 = load i32, i32* @SSB_PCMCIA_SPROMCTL_WRITE, align 4
  %55 = call i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %52
  %61 = call i32 @msleep(i32 20)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %58, %50, %39, %29, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
