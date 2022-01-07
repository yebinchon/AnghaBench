; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_clear_hw_cntrs_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_clear_hw_cntrs_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_CRCERRS = common dso_local global i32 0, align 4
@E1000_SYMERRS = common dso_local global i32 0, align 4
@E1000_MPC = common dso_local global i32 0, align 4
@E1000_SCC = common dso_local global i32 0, align 4
@E1000_ECOL = common dso_local global i32 0, align 4
@E1000_MCC = common dso_local global i32 0, align 4
@E1000_LATECOL = common dso_local global i32 0, align 4
@E1000_COLC = common dso_local global i32 0, align 4
@E1000_DC = common dso_local global i32 0, align 4
@E1000_SEC = common dso_local global i32 0, align 4
@E1000_RLEC = common dso_local global i32 0, align 4
@E1000_XONRXC = common dso_local global i32 0, align 4
@E1000_XONTXC = common dso_local global i32 0, align 4
@E1000_XOFFRXC = common dso_local global i32 0, align 4
@E1000_XOFFTXC = common dso_local global i32 0, align 4
@E1000_FCRUC = common dso_local global i32 0, align 4
@E1000_GPRC = common dso_local global i32 0, align 4
@E1000_BPRC = common dso_local global i32 0, align 4
@E1000_MPRC = common dso_local global i32 0, align 4
@E1000_GPTC = common dso_local global i32 0, align 4
@E1000_GORCL = common dso_local global i32 0, align 4
@E1000_GORCH = common dso_local global i32 0, align 4
@E1000_GOTCL = common dso_local global i32 0, align 4
@E1000_GOTCH = common dso_local global i32 0, align 4
@E1000_RNBC = common dso_local global i32 0, align 4
@E1000_RUC = common dso_local global i32 0, align 4
@E1000_RFC = common dso_local global i32 0, align 4
@E1000_ROC = common dso_local global i32 0, align 4
@E1000_RJC = common dso_local global i32 0, align 4
@E1000_TORL = common dso_local global i32 0, align 4
@E1000_TORH = common dso_local global i32 0, align 4
@E1000_TOTL = common dso_local global i32 0, align 4
@E1000_TOTH = common dso_local global i32 0, align 4
@E1000_TPR = common dso_local global i32 0, align 4
@E1000_TPT = common dso_local global i32 0, align 4
@E1000_MPTC = common dso_local global i32 0, align 4
@E1000_BPTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_clear_hw_cntrs_base(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = load i32, i32* @E1000_CRCERRS, align 4
  %4 = call i32 @rd32(i32 %3)
  %5 = load i32, i32* @E1000_SYMERRS, align 4
  %6 = call i32 @rd32(i32 %5)
  %7 = load i32, i32* @E1000_MPC, align 4
  %8 = call i32 @rd32(i32 %7)
  %9 = load i32, i32* @E1000_SCC, align 4
  %10 = call i32 @rd32(i32 %9)
  %11 = load i32, i32* @E1000_ECOL, align 4
  %12 = call i32 @rd32(i32 %11)
  %13 = load i32, i32* @E1000_MCC, align 4
  %14 = call i32 @rd32(i32 %13)
  %15 = load i32, i32* @E1000_LATECOL, align 4
  %16 = call i32 @rd32(i32 %15)
  %17 = load i32, i32* @E1000_COLC, align 4
  %18 = call i32 @rd32(i32 %17)
  %19 = load i32, i32* @E1000_DC, align 4
  %20 = call i32 @rd32(i32 %19)
  %21 = load i32, i32* @E1000_SEC, align 4
  %22 = call i32 @rd32(i32 %21)
  %23 = load i32, i32* @E1000_RLEC, align 4
  %24 = call i32 @rd32(i32 %23)
  %25 = load i32, i32* @E1000_XONRXC, align 4
  %26 = call i32 @rd32(i32 %25)
  %27 = load i32, i32* @E1000_XONTXC, align 4
  %28 = call i32 @rd32(i32 %27)
  %29 = load i32, i32* @E1000_XOFFRXC, align 4
  %30 = call i32 @rd32(i32 %29)
  %31 = load i32, i32* @E1000_XOFFTXC, align 4
  %32 = call i32 @rd32(i32 %31)
  %33 = load i32, i32* @E1000_FCRUC, align 4
  %34 = call i32 @rd32(i32 %33)
  %35 = load i32, i32* @E1000_GPRC, align 4
  %36 = call i32 @rd32(i32 %35)
  %37 = load i32, i32* @E1000_BPRC, align 4
  %38 = call i32 @rd32(i32 %37)
  %39 = load i32, i32* @E1000_MPRC, align 4
  %40 = call i32 @rd32(i32 %39)
  %41 = load i32, i32* @E1000_GPTC, align 4
  %42 = call i32 @rd32(i32 %41)
  %43 = load i32, i32* @E1000_GORCL, align 4
  %44 = call i32 @rd32(i32 %43)
  %45 = load i32, i32* @E1000_GORCH, align 4
  %46 = call i32 @rd32(i32 %45)
  %47 = load i32, i32* @E1000_GOTCL, align 4
  %48 = call i32 @rd32(i32 %47)
  %49 = load i32, i32* @E1000_GOTCH, align 4
  %50 = call i32 @rd32(i32 %49)
  %51 = load i32, i32* @E1000_RNBC, align 4
  %52 = call i32 @rd32(i32 %51)
  %53 = load i32, i32* @E1000_RUC, align 4
  %54 = call i32 @rd32(i32 %53)
  %55 = load i32, i32* @E1000_RFC, align 4
  %56 = call i32 @rd32(i32 %55)
  %57 = load i32, i32* @E1000_ROC, align 4
  %58 = call i32 @rd32(i32 %57)
  %59 = load i32, i32* @E1000_RJC, align 4
  %60 = call i32 @rd32(i32 %59)
  %61 = load i32, i32* @E1000_TORL, align 4
  %62 = call i32 @rd32(i32 %61)
  %63 = load i32, i32* @E1000_TORH, align 4
  %64 = call i32 @rd32(i32 %63)
  %65 = load i32, i32* @E1000_TOTL, align 4
  %66 = call i32 @rd32(i32 %65)
  %67 = load i32, i32* @E1000_TOTH, align 4
  %68 = call i32 @rd32(i32 %67)
  %69 = load i32, i32* @E1000_TPR, align 4
  %70 = call i32 @rd32(i32 %69)
  %71 = load i32, i32* @E1000_TPT, align 4
  %72 = call i32 @rd32(i32 %71)
  %73 = load i32, i32* @E1000_MPTC, align 4
  %74 = call i32 @rd32(i32 %73)
  %75 = load i32, i32* @E1000_BPTC, align 4
  %76 = call i32 @rd32(i32 %75)
  ret void
}

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
