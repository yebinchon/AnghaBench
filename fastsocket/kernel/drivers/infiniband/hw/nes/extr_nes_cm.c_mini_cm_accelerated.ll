; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_accelerated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_accelerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_core = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.nes_cm_node = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@NES_SHORT_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_core*, %struct.nes_cm_node*)* @mini_cm_accelerated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mini_cm_accelerated(%struct.nes_cm_core* %0, %struct.nes_cm_node* %1) #0 {
  %3 = alloca %struct.nes_cm_core*, align 8
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca i32, align 4
  store %struct.nes_cm_core* %0, %struct.nes_cm_core** %3, align 8
  store %struct.nes_cm_node* %1, %struct.nes_cm_node** %4, align 8
  %6 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %7 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %9 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %14 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %21 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @atomic_dec(i32* %23)
  %25 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %26 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %28 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp slt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  br label %35

35:                                               ; preds = %12, %2
  %36 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %37 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %36, i32 0, i32 0
  %38 = call i32 @timer_pending(%struct.TYPE_5__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* @NES_SHORT_TIME, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %46 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %49 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %48, i32 0, i32 0
  %50 = call i32 @add_timer(%struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %41, %35
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
