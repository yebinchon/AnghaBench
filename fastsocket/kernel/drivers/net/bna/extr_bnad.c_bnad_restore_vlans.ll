; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_restore_vlans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_restore_vlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VLAN_GROUP_ARRAY_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_restore_vlans(%struct.bnad* %0, i64 %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bnad*, %struct.bnad** %3, align 8
  %8 = getelementptr inbounds %struct.bnad, %struct.bnad* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @VLAN_GROUP_ARRAY_LEN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.bnad*, %struct.bnad** %3, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @vlan_group_get_device(i32 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %43

25:                                               ; preds = %17
  %26 = load %struct.bnad*, %struct.bnad** %3, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.bnad*, %struct.bnad** %3, align 8
  %31 = getelementptr inbounds %struct.bnad, %struct.bnad* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @bna_rx_vlan_add(i32 %36, i64 %37)
  %39 = load %struct.bnad*, %struct.bnad** %3, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %25, %24
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %13

46:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @vlan_group_get_device(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_rx_vlan_add(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
