; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.h_l2t_hold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.h_l2t_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_data = type { i32 }
%struct.l2t_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2t_data*, %struct.l2t_entry*)* @l2t_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2t_hold(%struct.l2t_data* %0, %struct.l2t_entry* %1) #0 {
  %3 = alloca %struct.l2t_data*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  store %struct.l2t_data* %0, %struct.l2t_data** %3, align 8
  store %struct.l2t_entry* %1, %struct.l2t_entry** %4, align 8
  %5 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %6 = icmp ne %struct.l2t_data* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %9 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %8, i32 0, i32 0
  %10 = call i32 @atomic_add_return(i32 1, i32* %9)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %14 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %13, i32 0, i32 0
  %15 = call i32 @atomic_dec(i32* %14)
  br label %16

16:                                               ; preds = %12, %7, %2
  ret void
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
