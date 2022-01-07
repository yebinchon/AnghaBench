; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_handle_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { %struct.TYPE_6__*, i32, %struct.scm_blk_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scm_blk_dev = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@SCM_WR_PROHIBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%lu: Write access to the SCM increment is suspended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*)* @scm_blk_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_blk_handle_error(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca %struct.scm_blk_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  %5 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %6 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %5, i32 0, i32 2
  %7 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %6, align 8
  store %struct.scm_blk_dev* %7, %struct.scm_blk_dev** %3, align 8
  %8 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %9 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %17 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %47 [
    i32 128, label %22
  ]

22:                                               ; preds = %15
  %23 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %24 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %28 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SCM_WR_PROHIBIT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %34 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %32, %22
  %40 = load i32, i32* @SCM_WR_PROHIBIT, align 4
  %41 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %42 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %44 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %57

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %14
  %50 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %51 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @scm_start_aob(%struct.TYPE_6__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %68

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %59 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %63 = call i32 @scm_request_requeue(%struct.scm_request* %62)
  %64 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %65 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %57, %55
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scm_start_aob(%struct.TYPE_6__*) #1

declare dso_local i32 @scm_request_requeue(%struct.scm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
