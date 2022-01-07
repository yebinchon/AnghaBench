; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_do_pf_write_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_do_pf_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@pf_current = common dso_local global %struct.TYPE_3__* null, align 8
@STAT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"write block\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@STAT_ERR = common dso_local global i32 0, align 4
@pf_retries = common dso_local global i64 0, align 8
@PF_MAX_RETRIES = common dso_local global i64 0, align 8
@do_pf_write_start = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_pf_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pf_write_done() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pf_current, align 8
  %2 = load i32, i32* @STAT_BUSY, align 4
  %3 = call i32 @pf_wait(%struct.TYPE_3__* %1, i32 %2, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @STAT_ERR, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pf_current, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pi_disconnect(i32 %10)
  %12 = load i64, i64* @pf_retries, align 8
  %13 = load i64, i64* @PF_MAX_RETRIES, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = load i64, i64* @pf_retries, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @pf_retries, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pf_current, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @do_pf_write_start, align 4
  %22 = call i32 @pi_do_claimed(i32 %20, i32 %21)
  br label %33

23:                                               ; preds = %7
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @next_request(i32 %25)
  br label %33

27:                                               ; preds = %0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pf_current, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pi_disconnect(i32 %30)
  %32 = call i32 @next_request(i32 0)
  br label %33

33:                                               ; preds = %27, %23, %15
  ret void
}

declare dso_local i32 @pf_wait(%struct.TYPE_3__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @pi_disconnect(i32) #1

declare dso_local i32 @pi_do_claimed(i32, i32) #1

declare dso_local i32 @next_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
