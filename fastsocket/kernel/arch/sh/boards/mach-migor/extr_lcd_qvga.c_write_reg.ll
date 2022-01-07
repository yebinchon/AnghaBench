; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-migor/extr_lcd_qvga.c_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-migor/extr_lcd_qvga.c_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 (i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i16, i16)* @write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_reg(i8* %0, %struct.sh_mobile_lcdc_sys_bus_ops* %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %1, %struct.sh_mobile_lcdc_sys_bus_ops** %6, align 8
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %9 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %6, align 8
  %10 = getelementptr inbounds %struct.sh_mobile_lcdc_sys_bus_ops, %struct.sh_mobile_lcdc_sys_bus_ops* %9, i32 0, i32 0
  %11 = load i32 (i8*, i32)*, i32 (i8*, i32)** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i16, i16* %7, align 2
  %14 = zext i16 %13 to i32
  %15 = shl i32 %14, 8
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i16
  %20 = call i32 @adjust_reg18(i16 zeroext %19)
  %21 = call i32 %11(i8* %12, i32 %20)
  ret void
}

declare dso_local i32 @adjust_reg18(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
