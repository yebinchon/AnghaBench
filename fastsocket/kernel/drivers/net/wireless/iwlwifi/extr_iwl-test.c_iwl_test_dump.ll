; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"uCode trace cmd\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"testmode sram dump cmd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_test_dump(%struct.iwl_test* %0, i32 %1, %struct.sk_buff* %2, %struct.netlink_callback* %3) #0 {
  %5 = alloca %struct.iwl_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.netlink_callback* %3, %struct.netlink_callback** %8, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %29 [
    i32 128, label %11
    i32 129, label %20
  ]

11:                                               ; preds = %4
  %12 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IWL_DEBUG_INFO(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %19 = call i32 @iwl_test_trace_dump(%struct.iwl_test* %16, %struct.sk_buff* %17, %struct.netlink_callback* %18)
  store i32 %19, i32* %9, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IWL_DEBUG_INFO(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %28 = call i32 @iwl_test_buffer_dump(%struct.iwl_test* %25, %struct.sk_buff* %26, %struct.netlink_callback* %27)
  store i32 %28, i32* %9, align 4
  br label %30

29:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %20, %11
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*) #1

declare dso_local i32 @iwl_test_trace_dump(%struct.iwl_test*, %struct.sk_buff*, %struct.netlink_callback*) #1

declare dso_local i32 @iwl_test_buffer_dump(%struct.iwl_test*, %struct.sk_buff*, %struct.netlink_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
