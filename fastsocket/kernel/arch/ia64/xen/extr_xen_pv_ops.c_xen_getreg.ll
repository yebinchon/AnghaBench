; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xen_pv_ops.c_xen_getreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xen_pv_ops.c_xen_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @xen_getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xen_getreg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %15 [
    i32 128, label %5
    i32 132, label %7
    i32 131, label %9
    i32 130, label %11
    i32 129, label %13
  ]

5:                                                ; preds = %1
  %6 = call i64 (...) @xen_get_psr()
  store i64 %6, i64* %3, align 8
  br label %18

7:                                                ; preds = %1
  %8 = call i64 (...) @xen_get_itc()
  store i64 %8, i64* %3, align 8
  br label %18

9:                                                ; preds = %1
  %10 = call i64 (...) @xen_get_itm_with_offset()
  store i64 %10, i64* %3, align 8
  br label %18

11:                                               ; preds = %1
  %12 = call i64 (...) @xen_get_ivr()
  store i64 %12, i64* %3, align 8
  br label %18

13:                                               ; preds = %1
  %14 = call i64 (...) @xen_get_tpr()
  store i64 %14, i64* %3, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @ia64_native_getreg_func(i32 %16)
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %15, %13, %11, %9, %7, %5
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local i64 @xen_get_psr(...) #1

declare dso_local i64 @xen_get_itc(...) #1

declare dso_local i64 @xen_get_itm_with_offset(...) #1

declare dso_local i64 @xen_get_ivr(...) #1

declare dso_local i64 @xen_get_tpr(...) #1

declare dso_local i64 @ia64_native_getreg_func(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
