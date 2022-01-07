; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_add_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.host_info = type { i32, i32, %struct.hpsb_host* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@host_info_lock = common dso_local global i32 0, align 4
@host_info_list = common dso_local global i32 0, align 4
@host_count = common dso_local global i32 0, align 4
@internal_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.host_info*, align 8
  %4 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.host_info* @kmalloc(i32 16, i32 %5)
  store %struct.host_info* %6, %struct.host_info** %3, align 8
  %7 = load %struct.host_info*, %struct.host_info** %3, align 8
  %8 = icmp ne %struct.host_info* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.host_info*, %struct.host_info** %3, align 8
  %11 = getelementptr inbounds %struct.host_info, %struct.host_info* %10, i32 0, i32 0
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %14 = load %struct.host_info*, %struct.host_info** %3, align 8
  %15 = getelementptr inbounds %struct.host_info, %struct.host_info* %14, i32 0, i32 2
  store %struct.hpsb_host* %13, %struct.hpsb_host** %15, align 8
  %16 = load %struct.host_info*, %struct.host_info** %3, align 8
  %17 = getelementptr inbounds %struct.host_info, %struct.host_info* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @host_info_lock, i64 %19)
  %21 = load %struct.host_info*, %struct.host_info** %3, align 8
  %22 = getelementptr inbounds %struct.host_info, %struct.host_info* %21, i32 0, i32 0
  %23 = call i32 @list_add_tail(i32* %22, i32* @host_info_list)
  %24 = load i32, i32* @host_count, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @host_count, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @host_info_lock, i64 %26)
  br label %28

28:                                               ; preds = %9, %1
  %29 = call i32 @atomic_inc(i32* @internal_generation)
  ret void
}

declare dso_local %struct.host_info* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
