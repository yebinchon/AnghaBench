; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_mem_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_mem_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@ehca_mem_notifier.ehca_dmem_warn_time = internal global i64 0, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@shca_list_lock = common dso_local global i32 0, align 4
@shca_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"DMEM operations are not allowedin conjunction with eHCA\00", align 1
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ehca_mem_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_mem_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  switch i64 %9, label %30 [
    i64 133, label %10
    i64 132, label %10
    i64 128, label %10
    i64 129, label %10
    i64 130, label %12
    i64 131, label %12
  ]

10:                                               ; preds = %3, %3, %3, %3
  %11 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %11, i32* %4, align 4
  br label %32

12:                                               ; preds = %3, %3
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @shca_list_lock, i64 %13)
  %15 = call i32 @list_empty(i32* @shca_list)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @shca_list_lock, i64 %18)
  %20 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %12
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @shca_list_lock, i64 %22)
  %24 = call i32 @printk_timed_ratelimit(i64* @ehca_mem_notifier.ehca_dmem_warn_time, i32 30000)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %28, %17, %10
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk_timed_ratelimit(i64*, i32) #1

declare dso_local i32 @ehca_gen_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
