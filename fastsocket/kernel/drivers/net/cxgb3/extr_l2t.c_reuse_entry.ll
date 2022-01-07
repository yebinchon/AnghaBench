; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_reuse_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_reuse_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32, i32, i32, %struct.neighbour* }
%struct.neighbour = type { i32, i32 }

@NUD_VALID = common dso_local global i32 0, align 4
@L2T_STATE_RESOLVING = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@L2T_STATE_VALID = common dso_local global i32 0, align 4
@L2T_STATE_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2t_entry*, %struct.neighbour*)* @reuse_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reuse_entry(%struct.l2t_entry* %0, %struct.neighbour* %1) #0 {
  %3 = alloca %struct.l2t_entry*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca i32, align 4
  store %struct.l2t_entry* %0, %struct.l2t_entry** %3, align 8
  store %struct.neighbour* %1, %struct.neighbour** %4, align 8
  %6 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %7 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %10 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %11 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %10, i32 0, i32 3
  %12 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %13 = icmp ne %struct.neighbour* %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %16 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %17 = call i32 @neigh_replace(%struct.l2t_entry* %15, %struct.neighbour* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %20 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %23 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @memcmp(i32 %24, i32 %27, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NUD_VALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %18
  %36 = load i32, i32* @L2T_STATE_RESOLVING, align 4
  %37 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %38 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %53

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NUD_CONNECTED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @L2T_STATE_VALID, align 4
  %46 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %47 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @L2T_STATE_STALE, align 4
  %50 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %51 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %55 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
