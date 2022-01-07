; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_do_pd_read_drq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_do_pd_read_drq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@pd_timeout = common dso_local global i32 0, align 4
@Hold = common dso_local global i32 0, align 4
@pd_current = common dso_local global %struct.TYPE_3__* null, align 8
@STAT_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"do_pd_read_drq\00", align 1
@STAT_ERR = common dso_local global i32 0, align 4
@pd_retries = common dso_local global i64 0, align 8
@PD_MAX_RETRIES = common dso_local global i64 0, align 8
@do_pd_read_start = common dso_local global i32 0, align 4
@phase = common dso_local global i32 0, align 4
@Wait = common dso_local global i32 0, align 4
@Fail = common dso_local global i32 0, align 4
@pd_buf = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_pd_read_drq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pd_read_drq() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @pd_ready()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @jiffies, align 4
  %6 = load i32, i32* @pd_timeout, align 4
  %7 = call i32 @time_after_eq(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load i32, i32* @Hold, align 4
  store i32 %10, i32* %1, align 4
  br label %42

11:                                               ; preds = %4, %0
  br label %12

12:                                               ; preds = %11, %39
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pd_current, align 8
  %14 = load i32, i32* @STAT_DRQ, align 4
  %15 = call i32 @pd_wait_for(%struct.TYPE_3__* %13, i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @STAT_ERR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i64, i64* @pd_retries, align 8
  %21 = load i64, i64* @PD_MAX_RETRIES, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* @pd_retries, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @pd_retries, align 8
  %26 = load i32, i32* @do_pd_read_start, align 4
  store i32 %26, i32* @phase, align 4
  %27 = load i32, i32* @Wait, align 4
  store i32 %27, i32* %1, align 4
  br label %42

28:                                               ; preds = %19
  %29 = load i32, i32* @Fail, align 4
  store i32 %29, i32* %1, align 4
  br label %42

30:                                               ; preds = %12
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pd_current, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @pd_buf, align 4
  %35 = call i32 @pi_read_block(i32 %33, i32 %34, i32 512)
  %36 = call i64 (...) @pd_next_buf()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %40

39:                                               ; preds = %30
  br label %12

40:                                               ; preds = %38
  %41 = load i32, i32* @Ok, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %28, %23, %9
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @pd_ready(...) #1

declare dso_local i32 @time_after_eq(i32, i32) #1

declare dso_local i32 @pd_wait_for(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @pi_read_block(i32, i32, i32) #1

declare dso_local i64 @pd_next_buf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
