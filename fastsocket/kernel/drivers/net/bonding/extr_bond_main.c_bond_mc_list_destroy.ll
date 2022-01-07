; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_mc_list_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_mc_list_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.dev_mc_list* }
%struct.dev_mc_list = type { %struct.dev_mc_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*)* @bond_mc_list_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_mc_list_destroy(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  %3 = alloca %struct.dev_mc_list*, align 8
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  %4 = load %struct.bonding*, %struct.bonding** %2, align 8
  %5 = getelementptr inbounds %struct.bonding, %struct.bonding* %4, i32 0, i32 0
  %6 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  store %struct.dev_mc_list* %6, %struct.dev_mc_list** %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %9 = icmp ne %struct.dev_mc_list* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %12 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %11, i32 0, i32 0
  %13 = load %struct.dev_mc_list*, %struct.dev_mc_list** %12, align 8
  %14 = load %struct.bonding*, %struct.bonding** %2, align 8
  %15 = getelementptr inbounds %struct.bonding, %struct.bonding* %14, i32 0, i32 0
  store %struct.dev_mc_list* %13, %struct.dev_mc_list** %15, align 8
  %16 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %17 = call i32 @kfree(%struct.dev_mc_list* %16)
  %18 = load %struct.bonding*, %struct.bonding** %2, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 0
  %20 = load %struct.dev_mc_list*, %struct.dev_mc_list** %19, align 8
  store %struct.dev_mc_list* %20, %struct.dev_mc_list** %3, align 8
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.bonding*, %struct.bonding** %2, align 8
  %23 = getelementptr inbounds %struct.bonding, %struct.bonding* %22, i32 0, i32 0
  store %struct.dev_mc_list* null, %struct.dev_mc_list** %23, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.dev_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
