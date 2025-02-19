; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_treeboot-bamboo.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_treeboot-bamboo.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_end = common dso_local global i64 0, align 8
@pibs_mac0 = common dso_local global i32 0, align 4
@pibs_mac1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 134217728, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @_end, align 8
  %5 = sub i64 %3, %4
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* @_end, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @simple_alloc_init(i64 %6, i64 %7, i32 32, i32 64)
  %9 = call i32 (...) @read_pibs_mac()
  %10 = call i32 @bamboo_init(i32* @pibs_mac0, i32* @pibs_mac1)
  ret void
}

declare dso_local i32 @simple_alloc_init(i64, i64, i32, i32) #1

declare dso_local i32 @read_pibs_mac(...) #1

declare dso_local i32 @bamboo_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
