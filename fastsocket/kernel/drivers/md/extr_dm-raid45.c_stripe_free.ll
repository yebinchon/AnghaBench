; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dm_mem_cache_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*, %struct.dm_mem_cache_client*)* @stripe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_free(%struct.stripe* %0, %struct.dm_mem_cache_client* %1) #0 {
  %3 = alloca %struct.stripe*, align 8
  %4 = alloca %struct.dm_mem_cache_client*, align 8
  store %struct.stripe* %0, %struct.stripe** %3, align 8
  store %struct.dm_mem_cache_client* %1, %struct.dm_mem_cache_client** %4, align 8
  %5 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %6 = load %struct.stripe*, %struct.stripe** %3, align 8
  %7 = getelementptr inbounds %struct.stripe, %struct.stripe* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dm_mem_cache_free(%struct.dm_mem_cache_client* %5, i32 %8)
  %10 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %11 = call i32 @dm_mem_cache_shrink(%struct.dm_mem_cache_client* %10, i32 1)
  %12 = load %struct.stripe*, %struct.stripe** %3, align 8
  %13 = getelementptr inbounds %struct.stripe, %struct.stripe* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.stripe*, %struct.stripe** %3, align 8
  %19 = call i32 @kmem_cache_free(i32 %17, %struct.stripe* %18)
  ret void
}

declare dso_local i32 @dm_mem_cache_free(%struct.dm_mem_cache_client*, i32) #1

declare dso_local i32 @dm_mem_cache_shrink(%struct.dm_mem_cache_client*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
