; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8168e_1_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8168e_1_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_reg = type { i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl8168e_1_hw_phy_config.phy_reg_init = internal constant [19 x %struct.phy_reg] [%struct.phy_reg { i32 31, i32 5 }, %struct.phy_reg { i32 5, i32 35712 }, %struct.phy_reg { i32 6, i32 51350 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 1 }, %struct.phy_reg { i32 11, i32 27680 }, %struct.phy_reg { i32 7, i32 10354 }, %struct.phy_reg { i32 28, i32 61439 }, %struct.phy_reg { i32 31, i32 3 }, %struct.phy_reg { i32 20, i32 25632 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 7 }, %struct.phy_reg { i32 30, i32 47 }, %struct.phy_reg { i32 21, i32 6425 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 7 }, %struct.phy_reg { i32 30, i32 172 }, %struct.phy_reg { i32 24, i32 6 }, %struct.phy_reg { i32 31, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168e_1_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168e_1_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.phy_reg* getelementptr inbounds ([19 x %struct.phy_reg], [19 x %struct.phy_reg]* @rtl8168e_1_hw_phy_config.phy_reg_init, i64 0, i64 0))
  %7 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %5, %struct.phy_reg* getelementptr inbounds ([19 x %struct.phy_reg], [19 x %struct.phy_reg]* @rtl8168e_1_hw_phy_config.phy_reg_init, i64 0, i64 0), i32 %6)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = call i32 @rtl_writephy(%struct.rtl8169_private* %8, i32 31, i32 7)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = call i32 @rtl_writephy(%struct.rtl8169_private* %10, i32 30, i32 35)
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %12, i32 23, i32 6, i32 0)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = call i32 @rtl_writephy(%struct.rtl8169_private* %14, i32 31, i32 0)
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %17 = call i32 @rtl_writephy(%struct.rtl8169_private* %16, i32 31, i32 2)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %18, i32 8, i32 32768, i32 32512)
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = call i32 @rtl_writephy(%struct.rtl8169_private* %20, i32 31, i32 0)
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = call i32 @rtl_writephy(%struct.rtl8169_private* %22, i32 31, i32 7)
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = call i32 @rtl_writephy(%struct.rtl8169_private* %24, i32 30, i32 45)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %26, i32 24, i32 80, i32 0)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = call i32 @rtl_writephy(%struct.rtl8169_private* %28, i32 31, i32 0)
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %30, i32 20, i32 32768, i32 0)
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = call i32 @rtl_writephy(%struct.rtl8169_private* %32, i32 31, i32 5)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = call i32 @rtl_writephy(%struct.rtl8169_private* %34, i32 5, i32 35718)
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %36, i32 6, i32 1, i32 0)
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = call i32 @rtl_writephy(%struct.rtl8169_private* %38, i32 31, i32 0)
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %41 = call i32 @rtl_writephy(%struct.rtl8169_private* %40, i32 31, i32 5)
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = call i32 @rtl_writephy(%struct.rtl8169_private* %42, i32 5, i32 35717)
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %44, i32 6, i32 0, i32 8192)
  %46 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %47 = call i32 @rtl_writephy(%struct.rtl8169_private* %46, i32 31, i32 7)
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %49 = call i32 @rtl_writephy(%struct.rtl8169_private* %48, i32 30, i32 32)
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %50, i32 21, i32 0, i32 4352)
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %53 = call i32 @rtl_writephy(%struct.rtl8169_private* %52, i32 31, i32 6)
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = call i32 @rtl_writephy(%struct.rtl8169_private* %54, i32 0, i32 23040)
  %56 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %57 = call i32 @rtl_writephy(%struct.rtl8169_private* %56, i32 31, i32 0)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %59 = call i32 @rtl_writephy(%struct.rtl8169_private* %58, i32 13, i32 7)
  %60 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %61 = call i32 @rtl_writephy(%struct.rtl8169_private* %60, i32 14, i32 60)
  %62 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %63 = call i32 @rtl_writephy(%struct.rtl8169_private* %62, i32 13, i32 16391)
  %64 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %65 = call i32 @rtl_writephy(%struct.rtl8169_private* %64, i32 14, i32 0)
  %66 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %67 = call i32 @rtl_writephy(%struct.rtl8169_private* %66, i32 13, i32 0)
  ret void
}

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy_batch(%struct.rtl8169_private*, %struct.phy_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.phy_reg*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w1w0_phy(%struct.rtl8169_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
