; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_device = type { i32 }
%struct.scm_request = type { i32, i32, %struct.scm_blk_dev* }
%struct.scm_blk_dev = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scm_blk_irq(%struct.scm_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.scm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scm_request*, align 8
  %8 = alloca %struct.scm_blk_dev*, align 8
  store %struct.scm_device* %0, %struct.scm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.scm_request*
  store %struct.scm_request* %10, %struct.scm_request** %7, align 8
  %11 = load %struct.scm_request*, %struct.scm_request** %7, align 8
  %12 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %11, i32 0, i32 2
  %13 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %12, align 8
  store %struct.scm_blk_dev* %13, %struct.scm_blk_dev** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.scm_request*, %struct.scm_request** %7, align 8
  %16 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.scm_request*, %struct.scm_request** %7, align 8
  %21 = call i32 @__scmrq_log_error(%struct.scm_request* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %8, align 8
  %24 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.scm_request*, %struct.scm_request** %7, align 8
  %27 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %26, i32 0, i32 1
  %28 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %8, align 8
  %29 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %28, i32 0, i32 2
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %8, align 8
  %32 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %8, align 8
  %35 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %34, i32 0, i32 0
  %36 = call i32 @tasklet_hi_schedule(i32* %35)
  ret void
}

declare dso_local i32 @__scmrq_log_error(%struct.scm_request*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
