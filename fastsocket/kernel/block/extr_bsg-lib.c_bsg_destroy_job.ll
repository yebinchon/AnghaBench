; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_destroy_job.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_destroy_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.bsg_job* }
%struct.TYPE_3__ = type { %struct.bsg_job* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsg_job*)* @bsg_destroy_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsg_destroy_job(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %3 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %4 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @put_device(i32 %5)
  %7 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %8 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %11 = call i32 @kfree(%struct.bsg_job* %10)
  %12 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.bsg_job*, %struct.bsg_job** %14, align 8
  %16 = call i32 @kfree(%struct.bsg_job* %15)
  %17 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %18 = call i32 @kfree(%struct.bsg_job* %17)
  ret void
}

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
