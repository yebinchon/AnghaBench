; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_find_vni.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_find_vni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.net = type { i32 }
%struct.vxlan_sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxlan_dev* (%struct.net*, i32, i32)* @vxlan_find_vni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxlan_dev* @vxlan_find_vni(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vxlan_dev*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vxlan_sock*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net*, %struct.net** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.vxlan_sock* @vxlan_find_sock(%struct.net* %9, i32 %10)
  store %struct.vxlan_sock* %11, %struct.vxlan_sock** %8, align 8
  %12 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %13 = icmp ne %struct.vxlan_sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.vxlan_dev* null, %struct.vxlan_dev** %4, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock* %16, i32 %17)
  store %struct.vxlan_dev* %18, %struct.vxlan_dev** %4, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  ret %struct.vxlan_dev* %20
}

declare dso_local %struct.vxlan_sock* @vxlan_find_sock(%struct.net*, i32) #1

declare dso_local %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
