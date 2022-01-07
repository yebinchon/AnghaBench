; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_rlb_teach_disabled_mac_on_primary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_rlb_teach_disabled_mac_on_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, i32*)* @rlb_teach_disabled_mac_on_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlb_teach_disabled_mac_on_primary(%struct.bonding* %0, i32* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca i32*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = getelementptr inbounds %struct.bonding, %struct.bonding* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %42

10:                                               ; preds = %2
  %11 = load %struct.bonding*, %struct.bonding** %3, align 8
  %12 = getelementptr inbounds %struct.bonding, %struct.bonding* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %10
  %17 = load %struct.bonding*, %struct.bonding** %3, align 8
  %18 = getelementptr inbounds %struct.bonding, %struct.bonding* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_set_promiscuity(i32 %21, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load %struct.bonding*, %struct.bonding** %3, align 8
  %26 = getelementptr inbounds %struct.bonding, %struct.bonding* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %32

28:                                               ; preds = %16
  %29 = load %struct.bonding*, %struct.bonding** %3, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.bonding*, %struct.bonding** %3, align 8
  %35 = getelementptr inbounds %struct.bonding, %struct.bonding* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.bonding*, %struct.bonding** %3, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @alb_send_learning_packets(%struct.TYPE_4__* %39, i32* %40)
  br label %42

42:                                               ; preds = %33, %9
  ret void
}

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @alb_send_learning_packets(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
