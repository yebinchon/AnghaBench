; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allow_amo_ops_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_allow_amo_ops_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amo = type { i32 }

@xpSuccess = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amo*)* @xpc_allow_amo_ops_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_allow_amo_ops_sn2(%struct.amo* %0) #0 {
  %2 = alloca %struct.amo*, align 8
  %3 = alloca i32, align 4
  store %struct.amo* %0, %struct.amo** %2, align 8
  %4 = load i32, i32* @xpSuccess, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @enable_shub_wars_1_1()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.amo*, %struct.amo** %2, align 8
  %9 = ptrtoint %struct.amo* %8 to i32
  %10 = call i32 @ia64_tpa(i32 %9)
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 @xp_expand_memprotect(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @enable_shub_wars_1_1(...) #1

declare dso_local i32 @xp_expand_memprotect(i32, i32) #1

declare dso_local i32 @ia64_tpa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
