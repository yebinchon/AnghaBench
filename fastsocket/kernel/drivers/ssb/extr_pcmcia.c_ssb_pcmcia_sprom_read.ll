; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SSB_PCMCIA_SPROM_ADDRLO = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROM_ADDRHI = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROMCTL_READ = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROM_DATALO = common dso_local global i32 0, align 4
@SSB_PCMCIA_SPROM_DATAHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32, i32*)* @ssb_pcmcia_sprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcmcia_sprom_read(%struct.ssb_bus* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %14 = load i32, i32* @SSB_PCMCIA_SPROM_ADDRLO, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  %17 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %13, i32 %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %24 = load i32, i32* @SSB_PCMCIA_SPROM_ADDRHI, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 65280
  %27 = ashr i32 %26, 8
  %28 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %23, i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %22
  %34 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %35 = load i32, i32* @SSB_PCMCIA_SPROMCTL_READ, align 4
  %36 = call i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %63

41:                                               ; preds = %33
  %42 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %43 = load i32, i32* @SSB_PCMCIA_SPROM_DATALO, align 4
  %44 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %42, i32 %43, i32* %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %41
  %50 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %51 = load i32, i32* @SSB_PCMCIA_SPROM_DATAHI, align 4
  %52 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %50, i32 %51, i32* %10)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %58, %60
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %55, %47, %39, %31, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus*, i32) #1

declare dso_local i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
