; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/common/extr_sb_tbprof.c_sbprof_tb_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/common/extr_sb_tbprof.c_sbprof_tb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }

@sbp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TB_FULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @sbprof_tb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sbprof_tb_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %30 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %18
  ]

9:                                                ; preds = %3
  %10 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp, i32 0, i32 1))
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call i32 @sbprof_zbprof_start(%struct.file* %11)
  store i32 %12, i32* %7, align 4
  %13 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp, i32 0, i32 1))
  br label %33

14:                                               ; preds = %3
  %15 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp, i32 0, i32 1))
  %16 = call i32 (...) @sbprof_zbprof_stop()
  store i32 %16, i32* %7, align 4
  %17 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp, i32 0, i32 1))
  br label %33

18:                                               ; preds = %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp, i32 0, i32 0), align 4
  %20 = load i32, i32* @TB_FULL, align 4
  %21 = call i32 @wait_event_interruptible(i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %33

25:                                               ; preds = %18
  %26 = load i32, i32* @TB_FULL, align 4
  %27 = load i64, i64* %6, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @put_user(i32 %26, i32* %28)
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %25, %24, %14, %9
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  ret i64 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sbprof_zbprof_start(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sbprof_zbprof_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @put_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
