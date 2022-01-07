; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_e800.c_e800_tg_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_e800.c_e800_tg_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w100fb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@W100_GPIO_PORT_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @e800_tg_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e800_tg_change(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca i64, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %4 = load i32, i32* @W100_GPIO_PORT_A, align 4
  %5 = call i64 @w100fb_gpio_read(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %7 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 480
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = or i64 %13, 256
  store i64 %14, i64* %3, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, -257
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @W100_GPIO_PORT_A, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @w100fb_gpio_write(i32 %19, i64 %20)
  ret void
}

declare dso_local i64 @w100fb_gpio_read(i32) #1

declare dso_local i32 @w100fb_gpio_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
