; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-trans.h_iwl_trans_start_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-trans.h_iwl_trans_start_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.fw_img = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.fw_img*, i32)* @iwl_trans_start_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_start_fw(%struct.iwl_trans* %0, %struct.fw_img* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.fw_img*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.fw_img* %1, %struct.fw_img** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.iwl_trans*, %struct.fw_img*, i32)**
  %20 = load i32 (%struct.iwl_trans*, %struct.fw_img*, i32)*, i32 (%struct.iwl_trans*, %struct.fw_img*, i32)** %19, align 8
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %20(%struct.iwl_trans* %21, %struct.fw_img* %22, i32 %23)
  ret i32 %24
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
