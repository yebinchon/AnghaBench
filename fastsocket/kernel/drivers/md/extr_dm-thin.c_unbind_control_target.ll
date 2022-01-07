; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_unbind_control_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_unbind_control_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { %struct.dm_target* }
%struct.dm_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, %struct.dm_target*)* @unbind_control_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unbind_control_target(%struct.pool* %0, %struct.dm_target* %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.dm_target*, align 8
  store %struct.pool* %0, %struct.pool** %3, align 8
  store %struct.dm_target* %1, %struct.dm_target** %4, align 8
  %5 = load %struct.pool*, %struct.pool** %3, align 8
  %6 = getelementptr inbounds %struct.pool, %struct.pool* %5, i32 0, i32 0
  %7 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = icmp eq %struct.dm_target* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.pool*, %struct.pool** %3, align 8
  %12 = getelementptr inbounds %struct.pool, %struct.pool* %11, i32 0, i32 0
  store %struct.dm_target* null, %struct.dm_target** %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
