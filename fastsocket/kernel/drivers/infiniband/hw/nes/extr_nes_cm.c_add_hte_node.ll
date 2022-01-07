; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_add_hte_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_add_hte_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_core = type { i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.nes_cm_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Adding Node %p to Active Connection HT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_core*, %struct.nes_cm_node*)* @add_hte_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_hte_node(%struct.nes_cm_core* %0, %struct.nes_cm_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nes_cm_core*, align 8
  %5 = alloca %struct.nes_cm_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.nes_cm_core* %0, %struct.nes_cm_core** %4, align 8
  store %struct.nes_cm_node* %1, %struct.nes_cm_node** %5, align 8
  %8 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %9 = icmp ne %struct.nes_cm_node* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %12 = icmp ne %struct.nes_cm_core* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %10
  %17 = load i32, i32* @NES_DBG_CM, align 4
  %18 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %19 = call i32 @nes_debug(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_node* %18)
  %20 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %21 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %25 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %24, i32 0, i32 2
  store %struct.list_head* %25, %struct.list_head** %7, align 8
  %26 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %27 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %26, i32 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %7, align 8
  %29 = call i32 @list_add_tail(i32* %27, %struct.list_head* %28)
  %30 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %31 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %30, i32 0, i32 1
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %34 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %16, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @nes_debug(i32, i8*, %struct.nes_cm_node*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
