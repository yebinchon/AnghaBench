; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_free_retrans_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_free_retrans_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, %struct.nes_timer_entry* }
%struct.nes_timer_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*)* @free_retrans_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_retrans_entry(%struct.nes_cm_node* %0) #0 {
  %2 = alloca %struct.nes_cm_node*, align 8
  %3 = alloca %struct.nes_timer_entry*, align 8
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %2, align 8
  %4 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %5 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %4, i32 0, i32 1
  %6 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %5, align 8
  store %struct.nes_timer_entry* %6, %struct.nes_timer_entry** %3, align 8
  %7 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %3, align 8
  %8 = icmp ne %struct.nes_timer_entry* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %11 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %10, i32 0, i32 1
  store %struct.nes_timer_entry* null, %struct.nes_timer_entry** %11, align 8
  %12 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %3, align 8
  %13 = getelementptr inbounds %struct.nes_timer_entry, %struct.nes_timer_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_kfree_skb_any(i32 %14)
  %16 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %3, align 8
  %17 = call i32 @kfree(%struct.nes_timer_entry* %16)
  %18 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %19 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %22 = call i32 @rem_ref_cm_node(i32 %20, %struct.nes_cm_node* %21)
  br label %23

23:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @kfree(%struct.nes_timer_entry*) #1

declare dso_local i32 @rem_ref_cm_node(i32, %struct.nes_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
