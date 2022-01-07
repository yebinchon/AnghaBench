; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_init_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_init_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { i64 }

@S6_GMAC_STATCARRY1_RDRP = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RJBR = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RFRG = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_ROVR = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RUND = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RCDE = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RFLR = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RALN = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RMCA = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RFCS = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RPKT = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY1_RBYT = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TDRP = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TNCL = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TXCL = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TEDF = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TPKT = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TBYT = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TFRG = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TUND = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TOVR = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TFCS = common dso_local global i32 0, align 4
@S6_GMAC_STATCARRY2_TJBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @s6gmac_init_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_init_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s6gmac*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %5)
  store %struct.s6gmac* %6, %struct.s6gmac** %3, align 8
  %7 = load i32, i32* @S6_GMAC_STATCARRY1_RDRP, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @S6_GMAC_STATCARRY1_RJBR, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = load i32, i32* @S6_GMAC_STATCARRY1_RFRG, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load i32, i32* @S6_GMAC_STATCARRY1_ROVR, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = load i32, i32* @S6_GMAC_STATCARRY1_RUND, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = load i32, i32* @S6_GMAC_STATCARRY1_RCDE, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @S6_GMAC_STATCARRY1_RFLR, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @S6_GMAC_STATCARRY1_RALN, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @S6_GMAC_STATCARRY1_RMCA, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @S6_GMAC_STATCARRY1_RFCS, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @S6_GMAC_STATCARRY1_RPKT, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @S6_GMAC_STATCARRY1_RBYT, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %44 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @S6_GMAC_STATCARRY(i32 0)
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %52 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @S6_GMAC_STATCARRYMSK(i32 0)
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load i32, i32* @S6_GMAC_STATCARRY2_TDRP, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* @S6_GMAC_STATCARRY2_TNCL, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @S6_GMAC_STATCARRY2_TXCL, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @S6_GMAC_STATCARRY2_TEDF, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* @S6_GMAC_STATCARRY2_TPKT, align 4
  %69 = shl i32 1, %68
  %70 = or i32 %67, %69
  %71 = load i32, i32* @S6_GMAC_STATCARRY2_TBYT, align 4
  %72 = shl i32 1, %71
  %73 = or i32 %70, %72
  %74 = load i32, i32* @S6_GMAC_STATCARRY2_TFRG, align 4
  %75 = shl i32 1, %74
  %76 = or i32 %73, %75
  %77 = load i32, i32* @S6_GMAC_STATCARRY2_TUND, align 4
  %78 = shl i32 1, %77
  %79 = or i32 %76, %78
  %80 = load i32, i32* @S6_GMAC_STATCARRY2_TOVR, align 4
  %81 = shl i32 1, %80
  %82 = or i32 %79, %81
  %83 = load i32, i32* @S6_GMAC_STATCARRY2_TFCS, align 4
  %84 = shl i32 1, %83
  %85 = or i32 %82, %84
  %86 = load i32, i32* @S6_GMAC_STATCARRY2_TJBR, align 4
  %87 = shl i32 1, %86
  %88 = or i32 %85, %87
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %91 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @S6_GMAC_STATCARRY(i32 1)
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load i32, i32* %4, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %99 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @S6_GMAC_STATCARRYMSK(i32 1)
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  ret void
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @S6_GMAC_STATCARRY(i32) #1

declare dso_local i64 @S6_GMAC_STATCARRYMSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
