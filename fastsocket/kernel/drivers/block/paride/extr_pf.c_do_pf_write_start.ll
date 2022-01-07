; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_do_pf_write_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_do_pf_write_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@pf_busy = common dso_local global i32 0, align 4
@pf_current = common dso_local global %struct.TYPE_4__* null, align 8
@ATAPI_WRITE_10 = common dso_local global i32 0, align 4
@pf_block = common dso_local global i32 0, align 4
@pf_run = common dso_local global i32 0, align 4
@pf_retries = common dso_local global i64 0, align 8
@PF_MAX_RETRIES = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@STAT_BUSY = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@STAT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"write block\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"data wait\00", align 1
@pf_buf = common dso_local global i32 0, align 4
@pf_mask = common dso_local global i64 0, align 8
@do_pf_write_done = common dso_local global i32 0, align 4
@pf_ready = common dso_local global i32 0, align 4
@PF_TMO = common dso_local global i32 0, align 4
@nice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_pf_write_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pf_write_start() #0 {
  store i32 1, i32* @pf_busy, align 4
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %2 = load i32, i32* @ATAPI_WRITE_10, align 4
  %3 = load i32, i32* @pf_block, align 4
  %4 = load i32, i32* @pf_run, align 4
  %5 = call i64 @pf_start(%struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pi_disconnect(i32 %10)
  %12 = load i64, i64* @pf_retries, align 8
  %13 = load i64, i64* @PF_MAX_RETRIES, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = load i64, i64* @pf_retries, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @pf_retries, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pi_do_claimed(i32 %20, void (...)* bitcast (void ()* @do_pf_write_start to void (...)*))
  br label %72

22:                                               ; preds = %7
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @next_request(i32 %24)
  br label %72

26:                                               ; preds = %0
  br label %27

27:                                               ; preds = %26, %65
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %29 = load i32, i32* @STAT_BUSY, align 4
  %30 = load i32, i32* @STAT_DRQ, align 4
  %31 = load i32, i32* @STAT_ERR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @pf_wait(%struct.TYPE_4__* %28, i32 %29, i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @STAT_ERR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %27
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pi_disconnect(i32 %40)
  %42 = load i64, i64* @pf_retries, align 8
  %43 = load i64, i64* @PF_MAX_RETRIES, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i64, i64* @pf_retries, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* @pf_retries, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pi_do_claimed(i32 %50, void (...)* bitcast (void ()* @do_pf_write_start to void (...)*))
  br label %72

52:                                               ; preds = %37
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @next_request(i32 %54)
  br label %72

56:                                               ; preds = %27
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @pf_buf, align 4
  %61 = call i32 @pi_write_block(i32 %59, i32 %60, i32 512)
  %62 = call i64 (...) @pf_next_buf()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %66

65:                                               ; preds = %56
  br label %27

66:                                               ; preds = %64
  store i64 0, i64* @pf_mask, align 8
  %67 = load i32, i32* @do_pf_write_done, align 4
  %68 = load i32, i32* @pf_ready, align 4
  %69 = load i32, i32* @PF_TMO, align 4
  %70 = load i32, i32* @nice, align 4
  %71 = call i32 @ps_set_intr(i32 %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %52, %45, %22, %15
  ret void
}

declare dso_local i64 @pf_start(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @pi_disconnect(i32) #1

declare dso_local i32 @pi_do_claimed(i32, void (...)*) #1

declare dso_local i32 @next_request(i32) #1

declare dso_local i32 @pf_wait(%struct.TYPE_4__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @pi_write_block(i32, i32, i32) #1

declare dso_local i64 @pf_next_buf(...) #1

declare dso_local i32 @ps_set_intr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
