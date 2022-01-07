; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/tests/extr_mtd_subpagetest.c_simple_rand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/tests/extr_mtd_subpagetest.c_simple_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @simple_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_rand() #0 {
  %1 = load i32, i32* @next, align 4
  %2 = mul nsw i32 %1, 1103515245
  %3 = add nsw i32 %2, 12345
  store i32 %3, i32* @next, align 4
  %4 = load i32, i32* @next, align 4
  %5 = sdiv i32 %4, 65536
  %6 = srem i32 %5, 32768
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
