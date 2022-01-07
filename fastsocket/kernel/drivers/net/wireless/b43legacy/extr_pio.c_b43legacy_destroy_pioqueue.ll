; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_destroy_pioqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_destroy_pioqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_pioqueue*)* @b43legacy_destroy_pioqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_destroy_pioqueue(%struct.b43legacy_pioqueue* %0) #0 {
  %2 = alloca %struct.b43legacy_pioqueue*, align 8
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %2, align 8
  %3 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %4 = icmp ne %struct.b43legacy_pioqueue* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %8 = call i32 @cancel_transfers(%struct.b43legacy_pioqueue* %7)
  %9 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %10 = call i32 @kfree(%struct.b43legacy_pioqueue* %9)
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @cancel_transfers(%struct.b43legacy_pioqueue*) #1

declare dso_local i32 @kfree(%struct.b43legacy_pioqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
