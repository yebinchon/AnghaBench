; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_cxgb4_l2t_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_cxgb4_l2t_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_l2t_release(%struct.l2t_entry* %0) #0 {
  %2 = alloca %struct.l2t_entry*, align 8
  store %struct.l2t_entry* %0, %struct.l2t_entry** %2, align 8
  %3 = load %struct.l2t_entry*, %struct.l2t_entry** %2, align 8
  %4 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %3, i32 0, i32 0
  %5 = call i64 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.l2t_entry*, %struct.l2t_entry** %2, align 8
  %9 = call i32 @t4_l2e_free(%struct.l2t_entry* %8)
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @t4_l2e_free(%struct.l2t_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
