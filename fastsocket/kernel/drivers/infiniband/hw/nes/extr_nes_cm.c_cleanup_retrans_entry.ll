; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_cleanup_retrans_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_cleanup_retrans_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*)* @cleanup_retrans_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_retrans_entry(%struct.nes_cm_node* %0) #0 {
  %2 = alloca %struct.nes_cm_node*, align 8
  %3 = alloca i64, align 8
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %2, align 8
  %4 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %5 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %9 = call i32 @free_retrans_entry(%struct.nes_cm_node* %8)
  %10 = load %struct.nes_cm_node*, %struct.nes_cm_node** %2, align 8
  %11 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* %11, i64 %12)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_retrans_entry(%struct.nes_cm_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
