; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.iwl_test_ops*, %struct.iwl_trans* }
%struct.iwl_trans = type { i32 }
%struct.iwl_test_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_test_init(%struct.iwl_test* %0, %struct.iwl_trans* %1, %struct.iwl_test_ops* %2) #0 {
  %4 = alloca %struct.iwl_test*, align 8
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_test_ops*, align 8
  store %struct.iwl_test* %0, %struct.iwl_test** %4, align 8
  store %struct.iwl_trans* %1, %struct.iwl_trans** %5, align 8
  store %struct.iwl_test_ops* %2, %struct.iwl_test_ops** %6, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %8 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %8, i32 0, i32 1
  store %struct.iwl_trans* %7, %struct.iwl_trans** %9, align 8
  %10 = load %struct.iwl_test_ops*, %struct.iwl_test_ops** %6, align 8
  %11 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %11, i32 0, i32 0
  store %struct.iwl_test_ops* %10, %struct.iwl_test_ops** %12, align 8
  %13 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %14 = call i32 @iwl_test_trace_clear(%struct.iwl_test* %13)
  %15 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %16 = call i32 @iwl_test_mem_clear(%struct.iwl_test* %15)
  ret void
}

declare dso_local i32 @iwl_test_trace_clear(%struct.iwl_test*) #1

declare dso_local i32 @iwl_test_mem_clear(%struct.iwl_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
