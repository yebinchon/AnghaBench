; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_write_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_write_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }

@hd_req = common dso_local global %struct.request* null, align 8
@HD_STATUS = common dso_local global i32 0, align 4
@BUSY_STAT = common dso_local global i32 0, align 4
@DRQ_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"write_intr\00", align 1
@HD_DATA = common dso_local global i32 0, align 4
@last_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_intr() #0 {
  %1 = alloca %struct.request*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.request*, %struct.request** @hd_req, align 8
  store %struct.request* %4, %struct.request** %1, align 8
  store i32 100000, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, i32* @HD_STATUS, align 4
  %7 = call i64 @inb_p(i32 %6)
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @BUSY_STAT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %30

14:                                               ; preds = %5
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @OK_STATUS(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %34

19:                                               ; preds = %14
  %20 = load %struct.request*, %struct.request** %1, align 8
  %21 = call i32 @blk_rq_sectors(%struct.request* %20)
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @DRQ_STAT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %19
  br label %39

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %5, label %34

34:                                               ; preds = %30, %18
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @dump_status(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 (...) @bad_rw_intr()
  %38 = call i32 (...) @hd_request()
  br label %51

39:                                               ; preds = %28
  %40 = call i64 @hd_end_request(i32 0, i32 512)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = call i32 @SET_HANDLER(void (...)* bitcast (void ()* @write_intr to void (...)*))
  %44 = load i32, i32* @HD_DATA, align 4
  %45 = load %struct.request*, %struct.request** %1, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @outsw(i32 %44, i32 %47, i32 256)
  br label %51

49:                                               ; preds = %39
  %50 = call i32 (...) @hd_request()
  br label %51

51:                                               ; preds = %49, %42, %34
  ret void
}

declare dso_local i64 @inb_p(i32) #1

declare dso_local i32 @OK_STATUS(i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @dump_status(i8*, i32) #1

declare dso_local i32 @bad_rw_intr(...) #1

declare dso_local i32 @hd_request(...) #1

declare dso_local i64 @hd_end_request(i32, i32) #1

declare dso_local i32 @SET_HANDLER(void (...)*) #1

declare dso_local i32 @outsw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
