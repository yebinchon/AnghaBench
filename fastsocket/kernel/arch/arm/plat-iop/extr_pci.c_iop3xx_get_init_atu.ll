; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-iop/extr_pci.c_iop3xx_get_init_atu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-iop/extr_pci.c_iop3xx_get_init_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_atu = common dso_local global i64 0, align 8
@IOP3XX_INIT_ATU_DEFAULT = common dso_local global i64 0, align 8
@IOP3XX_INIT_ATU_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop3xx_get_init_atu() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @init_atu, align 8
  %3 = load i64, i64* @IOP3XX_INIT_ATU_DEFAULT, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @init_atu, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @IOP3XX_INIT_ATU_DISABLE, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
