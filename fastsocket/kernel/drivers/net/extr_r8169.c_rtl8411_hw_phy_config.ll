; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8411_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8411_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_reg = type { i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl8411_hw_phy_config.phy_reg_init = internal constant [25 x %struct.phy_reg] [%struct.phy_reg { i32 31, i32 3 }, %struct.phy_reg { i32 9, i32 41487 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 5 }, %struct.phy_reg { i32 5, i32 35669 }, %struct.phy_reg { i32 6, i32 0 }, %struct.phy_reg { i32 5, i32 35678 }, %struct.phy_reg { i32 6, i32 0 }, %struct.phy_reg { i32 5, i32 35687 }, %struct.phy_reg { i32 6, i32 0 }, %struct.phy_reg { i32 5, i32 35696 }, %struct.phy_reg { i32 6, i32 0 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 7 }, %struct.phy_reg { i32 30, i32 120 }, %struct.phy_reg { i32 23, i32 0 }, %struct.phy_reg { i32 25, i32 170 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 5 }, %struct.phy_reg { i32 5, i32 35705 }, %struct.phy_reg { i32 6, i32 43520 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 3 }, %struct.phy_reg { i32 1, i32 12938 }, %struct.phy_reg { i32 31, i32 0 }], align 16
@ERIAR_MASK_0001 = common dso_local global i32 0, align 4
@ERIAR_EXGMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8411_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8411_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl8168f_hw_phy_config(%struct.rtl8169_private* %5)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_writephy(%struct.rtl8169_private* %7, i32 31, i32 5)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_writephy(%struct.rtl8169_private* %9, i32 5, i32 35717)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %11, i32 6, i32 16384, i32 0)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = call i32 @rtl_writephy(%struct.rtl8169_private* %13, i32 31, i32 0)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.phy_reg* getelementptr inbounds ([25 x %struct.phy_reg], [25 x %struct.phy_reg]* @rtl8411_hw_phy_config.phy_reg_init, i64 0, i64 0))
  %17 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %15, %struct.phy_reg* getelementptr inbounds ([25 x %struct.phy_reg], [25 x %struct.phy_reg]* @rtl8411_hw_phy_config.phy_reg_init, i64 0, i64 0), i32 %16)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = call i32 @rtl_writephy(%struct.rtl8169_private* %18, i32 31, i32 5)
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = call i32 @rtl_writephy(%struct.rtl8169_private* %20, i32 5, i32 35668)
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %22, i32 6, i32 0, i32 2048)
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = call i32 @rtl_writephy(%struct.rtl8169_private* %24, i32 5, i32 35677)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %26, i32 6, i32 0, i32 2048)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = call i32 @rtl_writephy(%struct.rtl8169_private* %28, i32 5, i32 35452)
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %30, i32 6, i32 0, i32 256)
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = call i32 @rtl_writephy(%struct.rtl8169_private* %32, i32 5, i32 35455)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %34, i32 6, i32 256, i32 0)
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = call i32 @rtl_writephy(%struct.rtl8169_private* %36, i32 5, i32 35458)
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %38, i32 6, i32 0, i32 256)
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %41 = call i32 @rtl_writephy(%struct.rtl8169_private* %40, i32 5, i32 35461)
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %42, i32 6, i32 0, i32 256)
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = call i32 @rtl_writephy(%struct.rtl8169_private* %44, i32 5, i32 35464)
  %46 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %47 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %46, i32 6, i32 0, i32 256)
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %49 = call i32 @rtl_writephy(%struct.rtl8169_private* %48, i32 31, i32 0)
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = call i32 @rtl_writephy(%struct.rtl8169_private* %50, i32 31, i32 5)
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %53 = call i32 @rtl_writephy(%struct.rtl8169_private* %52, i32 5, i32 35717)
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %54, i32 6, i32 32768, i32 0)
  %56 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %57 = call i32 @rtl_writephy(%struct.rtl8169_private* %56, i32 31, i32 0)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %59 = load i32, i32* @ERIAR_MASK_0001, align 4
  %60 = load i32, i32* @ERIAR_EXGMAC, align 4
  %61 = call i32 @rtl_w1w0_eri(%struct.rtl8169_private* %58, i32 432, i32 %59, i32 0, i32 3, i32 %60)
  %62 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %63 = call i32 @rtl_writephy(%struct.rtl8169_private* %62, i32 31, i32 5)
  %64 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %65 = call i32 @rtl_writephy(%struct.rtl8169_private* %64, i32 5, i32 35717)
  %66 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %67 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %66, i32 6, i32 0, i32 8192)
  %68 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %69 = call i32 @rtl_writephy(%struct.rtl8169_private* %68, i32 31, i32 4)
  %70 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %71 = call i32 @rtl_writephy(%struct.rtl8169_private* %70, i32 31, i32 7)
  %72 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %73 = call i32 @rtl_writephy(%struct.rtl8169_private* %72, i32 30, i32 32)
  %74 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %75 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %74, i32 21, i32 0, i32 256)
  %76 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %77 = call i32 @rtl_writephy(%struct.rtl8169_private* %76, i32 31, i32 0)
  %78 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %79 = call i32 @rtl_writephy(%struct.rtl8169_private* %78, i32 13, i32 7)
  %80 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %81 = call i32 @rtl_writephy(%struct.rtl8169_private* %80, i32 14, i32 60)
  %82 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %83 = call i32 @rtl_writephy(%struct.rtl8169_private* %82, i32 13, i32 16391)
  %84 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %85 = call i32 @rtl_writephy(%struct.rtl8169_private* %84, i32 14, i32 0)
  %86 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %87 = call i32 @rtl_writephy(%struct.rtl8169_private* %86, i32 13, i32 0)
  %88 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %89 = call i32 @rtl_writephy(%struct.rtl8169_private* %88, i32 31, i32 3)
  %90 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %91 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %90, i32 25, i32 0, i32 1)
  %92 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %93 = call i32 @rtl_w1w0_phy(%struct.rtl8169_private* %92, i32 16, i32 0, i32 1024)
  %94 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %95 = call i32 @rtl_writephy(%struct.rtl8169_private* %94, i32 31, i32 0)
  ret void
}

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168f_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w1w0_phy(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_writephy_batch(%struct.rtl8169_private*, %struct.phy_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.phy_reg*) #1

declare dso_local i32 @rtl_w1w0_eri(%struct.rtl8169_private*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
