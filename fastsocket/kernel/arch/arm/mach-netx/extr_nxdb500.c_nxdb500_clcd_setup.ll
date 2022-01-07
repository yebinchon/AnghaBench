; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_nxdb500.c_nxdb500_clcd_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_nxdb500.c_nxdb500_clcd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@NETX_SYSTEM_IOC_ACCESS_KEY = common dso_local global i32 0, align 4
@NETX_SYSTEM_IOC_CR = common dso_local global i32 0, align 4
@NETX_PIO_OUTPIO = common dso_local global i32 0, align 4
@NETX_PIO_OEPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clcd_fb*)* @nxdb500_clcd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxdb500_clcd_setup(%struct.clcd_fb* %0) #0 {
  %2 = alloca %struct.clcd_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %2, align 8
  %4 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %5 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 5, i32* %8, align 8
  %9 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %10 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @NETX_SYSTEM_IOC_ACCESS_KEY, align 4
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NETX_SYSTEM_IOC_ACCESS_KEY, align 4
  %18 = call i32 @writel(i32 %16, i32 %17)
  %19 = load i32, i32* @NETX_SYSTEM_IOC_CR, align 4
  %20 = call i32 @writel(i32 3, i32 %19)
  %21 = load i32, i32* @NETX_PIO_OUTPIO, align 4
  %22 = call i32 @readl(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 1
  %25 = load i32, i32* @NETX_PIO_OUTPIO, align 4
  %26 = call i32 @writel(i32 %24, i32 %25)
  %27 = load i32, i32* @NETX_PIO_OEPIO, align 4
  %28 = call i32 @readl(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, 1
  %31 = load i32, i32* @NETX_PIO_OEPIO, align 4
  %32 = call i32 @writel(i32 %30, i32 %31)
  %33 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %34 = call i32 @netx_clcd_setup(%struct.clcd_fb* %33)
  ret i32 %34
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @netx_clcd_setup(%struct.clcd_fb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
