; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xen_pv_ops.c_xen_set_itc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xen_pv_ops.c_xen_set_itc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@_IA64_REG_AR_ITC = common dso_local global i32 0, align 4
@XEN_MAPPEDREGS = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xen_set_itc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_set_itc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 (...) @irqs_disabled()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load i32, i32* @_IA64_REG_AR_ITC, align 4
  %10 = call i64 @ia64_native_getreg(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %11, %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XEN_MAPPEDREGS, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XEN_MAPPEDREGS, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @ia64_native_getreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
