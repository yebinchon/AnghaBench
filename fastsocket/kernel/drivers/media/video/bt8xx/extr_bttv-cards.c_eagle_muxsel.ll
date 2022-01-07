; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-cards.c_eagle_muxsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-cards.c_eagle_muxsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }

@BT848_ADC_C_SLEEP = common dso_local global i32 0, align 4
@BT848_ADC = common dso_local global i32 0, align 4
@BT848_CONTROL_COMP = common dso_local global i32 0, align 4
@BT848_E_CONTROL = common dso_local global i32 0, align 4
@BT848_O_CONTROL = common dso_local global i32 0, align 4
@LM1882_SYNC_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32)* @eagle_muxsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eagle_muxsel(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 3
  %7 = call i32 @gpio_bits(i32 3, i32 %6)
  %8 = load i32, i32* @BT848_ADC_C_SLEEP, align 4
  %9 = load i32, i32* @BT848_ADC, align 4
  %10 = call i32 @btor(i32 %8, i32 %9)
  %11 = load i32, i32* @BT848_CONTROL_COMP, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @BT848_E_CONTROL, align 4
  %14 = call i32 @btand(i32 %12, i32 %13)
  %15 = load i32, i32* @BT848_CONTROL_COMP, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @BT848_O_CONTROL, align 4
  %18 = call i32 @btand(i32 %16, i32 %17)
  %19 = load i32, i32* @LM1882_SYNC_DRIVE, align 4
  %20 = load i32, i32* @LM1882_SYNC_DRIVE, align 4
  %21 = call i32 @gpio_bits(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @gpio_bits(i32, i32) #1

declare dso_local i32 @btor(i32, i32) #1

declare dso_local i32 @btand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
