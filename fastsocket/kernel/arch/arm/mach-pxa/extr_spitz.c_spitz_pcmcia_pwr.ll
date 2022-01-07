; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz.c_spitz_pcmcia_pwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz.c_spitz_pcmcia_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@SPITZ_PWR_CF = common dso_local global i32 0, align 4
@SCOOP_CPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i16, i32)* @spitz_pcmcia_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spitz_pcmcia_pwr(%struct.device* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* @SPITZ_PWR_CF, align 4
  %11 = load i16, i16* %5, align 2
  %12 = call i32 @spitz_card_pwr_ctrl(i32 %10, i16 zeroext %11)
  br label %18

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @SCOOP_CPR, align 4
  %16 = load i16, i16* %5, align 2
  %17 = call i32 @write_scoop_reg(%struct.device* %14, i32 %15, i16 zeroext %16)
  br label %18

18:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @spitz_card_pwr_ctrl(i32, i16 zeroext) #1

declare dso_local i32 @write_scoop_reg(%struct.device*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
