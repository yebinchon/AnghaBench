; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_mm_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_mm_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.cardinfo* }
%struct.cardinfo = type { i32, %struct.bio** }
%struct.bio = type { %struct.bio*, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"mm_make_request %llu %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @mm_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.cardinfo*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load %struct.cardinfo*, %struct.cardinfo** %7, align 8
  store %struct.cardinfo* %8, %struct.cardinfo** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %14)
  %16 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %17 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %21 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %20, i32 0, i32 1
  %22 = load %struct.bio**, %struct.bio*** %21, align 8
  store %struct.bio* %19, %struct.bio** %22, align 8
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %24, align 8
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %28 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %27, i32 0, i32 1
  store %struct.bio** %26, %struct.bio*** %28, align 8
  %29 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %30 = call i32 @blk_plug_device(%struct.request_queue* %29)
  %31 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %32 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_irq(i32* %32)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @blk_plug_device(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
