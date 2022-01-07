; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_free_vlan_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_free_vlan_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i16)* @qeth_l3_free_vlan_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_free_vlan_addresses(%struct.qeth_card* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i16, align 2
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %12 = load i16, i16* %4, align 2
  %13 = call i32 @qeth_l3_free_vlan_addresses4(%struct.qeth_card* %11, i16 zeroext %12)
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = load i16, i16* %4, align 2
  %16 = call i32 @qeth_l3_free_vlan_addresses6(%struct.qeth_card* %14, i16 zeroext %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @qeth_l3_free_vlan_addresses4(%struct.qeth_card*, i16 zeroext) #1

declare dso_local i32 @qeth_l3_free_vlan_addresses6(%struct.qeth_card*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
