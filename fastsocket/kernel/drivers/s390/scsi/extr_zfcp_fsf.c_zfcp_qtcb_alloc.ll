; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_qtcb_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_qtcb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fsf_qtcb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsf_qtcb* (i32*)* @zfcp_qtcb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsf_qtcb* @zfcp_qtcb_alloc(i32* %0) #0 {
  %2 = alloca %struct.fsf_qtcb*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fsf_qtcb*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @likely(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.fsf_qtcb* @mempool_alloc(i32* %9, i32 %10)
  store %struct.fsf_qtcb* %11, %struct.fsf_qtcb** %4, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.fsf_qtcb* @kmem_cache_alloc(i32 %13, i32 %14)
  store %struct.fsf_qtcb* %15, %struct.fsf_qtcb** %4, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %18 = icmp ne %struct.fsf_qtcb* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store %struct.fsf_qtcb* null, %struct.fsf_qtcb** %2, align 8
  br label %28

24:                                               ; preds = %16
  %25 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %26 = call i32 @memset(%struct.fsf_qtcb* %25, i32 0, i32 4)
  %27 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  store %struct.fsf_qtcb* %27, %struct.fsf_qtcb** %2, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %2, align 8
  ret %struct.fsf_qtcb* %29
}

declare dso_local i64 @likely(i32*) #1

declare dso_local %struct.fsf_qtcb* @mempool_alloc(i32*, i32) #1

declare dso_local %struct.fsf_qtcb* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.fsf_qtcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
