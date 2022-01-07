; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_ctl_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_ctl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAOR_NMIF = common dso_local global i16 0, align 2
@DMAOR_AE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sh_dmae_ctl_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_dmae_ctl_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call zeroext i16 @dmaor_read_reg(i32 %4)
  store i16 %5, i16* %3, align 2
  %6 = load i16, i16* @DMAOR_NMIF, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @DMAOR_AE, align 2
  %9 = zext i16 %8 to i32
  %10 = or i32 %7, %9
  %11 = xor i32 %10, -1
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, %11
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %3, align 2
  %16 = load i32, i32* %2, align 4
  %17 = load i16, i16* %3, align 2
  %18 = call i32 @dmaor_write_reg(i32 %16, i16 zeroext %17)
  ret void
}

declare dso_local zeroext i16 @dmaor_read_reg(i32) #1

declare dso_local i32 @dmaor_write_reg(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
