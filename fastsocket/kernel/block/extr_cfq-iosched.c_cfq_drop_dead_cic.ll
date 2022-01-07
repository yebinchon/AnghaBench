; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_drop_dead_cic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_drop_dead_cic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.io_context = type { i32, i32, %struct.cfq_io_context* }
%struct.cfq_io_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.io_context*, %struct.cfq_io_context*)* @cfq_drop_dead_cic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_drop_dead_cic(%struct.cfq_data* %0, %struct.io_context* %1, %struct.cfq_io_context* %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.io_context*, align 8
  %6 = alloca %struct.cfq_io_context*, align 8
  %7 = alloca i64, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.io_context* %1, %struct.io_context** %5, align 8
  store %struct.cfq_io_context* %2, %struct.cfq_io_context** %6, align 8
  %8 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %9 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %8, i32 0, i32 1
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.io_context*, %struct.io_context** %5, align 8
  %16 = getelementptr inbounds %struct.io_context, %struct.io_context* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.io_context*, %struct.io_context** %5, align 8
  %20 = getelementptr inbounds %struct.io_context, %struct.io_context* %19, i32 0, i32 2
  %21 = load %struct.cfq_io_context*, %struct.cfq_io_context** %20, align 8
  %22 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %23 = icmp eq %struct.cfq_io_context* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.io_context*, %struct.io_context** %5, align 8
  %27 = getelementptr inbounds %struct.io_context, %struct.io_context* %26, i32 0, i32 1
  %28 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %29 = ptrtoint %struct.cfq_data* %28 to i64
  %30 = call i32 @radix_tree_delete(i32* %27, i64 %29)
  %31 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %32 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %31, i32 0, i32 0
  %33 = call i32 @hlist_del_rcu(i32* %32)
  %34 = load %struct.io_context*, %struct.io_context** %5, align 8
  %35 = getelementptr inbounds %struct.io_context, %struct.io_context* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %39 = call i32 @cfq_cic_free(%struct.cfq_io_context* %38)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cfq_cic_free(%struct.cfq_io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
