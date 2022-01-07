; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixp2400-msf.c_ixp2400_pll_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixp2400-msf.c_ixp2400_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp2400_msf_parameters = type { i32, i32, i32, i32, i32, i32 }

@IXP2400_RX_MODE_WIDTH_MASK = common dso_local global i32 0, align 4
@IXP2400_TX_MODE_WIDTH_MASK = common dso_local global i32 0, align 4
@IXP2000_MSF_CLK_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixp2400_msf_parameters*)* @ixp2400_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp2400_pll_init(%struct.ixp2400_msf_parameters* %0) #0 {
  %2 = alloca %struct.ixp2400_msf_parameters*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixp2400_msf_parameters* %0, %struct.ixp2400_msf_parameters** %2, align 8
  %6 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %7 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IXP2400_RX_MODE_WIDTH_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %16 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXP2400_TX_MODE_WIDTH_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @IXP2000_MSF_CLK_CNTRL, align 4
  %25 = call i32 @ixp2000_reg_read(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 61680
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @IXP2000_MSF_CLK_CNTRL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ixp2000_reg_write(i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -50331649
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = shl i32 %33, 24
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 25
  %37 = or i32 %34, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, -16711681
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %43 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %49 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 18
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %55 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 20
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %61 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 22
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @IXP2000_MSF_CLK_CNTRL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ixp2000_reg_write(i32 %66, i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = shl i32 %69, 13
  %71 = or i32 20480, %70
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 %72, 15
  %74 = or i32 %71, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @IXP2000_MSF_CLK_CNTRL, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ixp2000_reg_write(i32 %78, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = shl i32 %81, 5
  %83 = or i32 80, %82
  %84 = load i32, i32* %4, align 4
  %85 = shl i32 %84, 7
  %86 = or i32 %83, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @IXP2000_MSF_CLK_CNTRL, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ixp2000_reg_write(i32 %90, i32 %91)
  %93 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local i32 @ixp2000_reg_read(i32) #1

declare dso_local i32 @ixp2000_reg_write(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
