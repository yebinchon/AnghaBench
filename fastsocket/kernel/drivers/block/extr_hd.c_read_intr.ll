; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_read_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_read_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HD_STATUS = common dso_local global i32 0, align 4
@BUSY_STAT = common dso_local global i32 0, align 4
@DRQ_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"read_intr\00", align 1
@hd_req = common dso_local global %struct.request* null, align 8
@HD_DATA = common dso_local global i32 0, align 4
@last_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_intr() #0 {
  %1 = alloca %struct.request*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 100000, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %0
  %5 = load i32, i32* @HD_STATUS, align 4
  %6 = call i64 @inb_p(i32 %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @BUSY_STAT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %25

13:                                               ; preds = %4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @OK_STATUS(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %29

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @DRQ_STAT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %34

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %4, label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @dump_status(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 (...) @bad_rw_intr()
  %33 = call i32 (...) @hd_request()
  br label %49

34:                                               ; preds = %23
  %35 = load %struct.request*, %struct.request** @hd_req, align 8
  store %struct.request* %35, %struct.request** %1, align 8
  %36 = load i32, i32* @HD_DATA, align 4
  %37 = load %struct.request*, %struct.request** %1, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @insw(i32 %36, i64 %39, i32 256)
  %41 = call i64 @hd_end_request(i32 0, i32 512)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @SET_HANDLER(void (...)* bitcast (void ()* @read_intr to void (...)*))
  br label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @HD_STATUS, align 4
  %47 = call i64 @inb_p(i32 %46)
  %48 = call i32 (...) @hd_request()
  br label %49

49:                                               ; preds = %45, %43, %29
  ret void
}

declare dso_local i64 @inb_p(i32) #1

declare dso_local i32 @OK_STATUS(i32) #1

declare dso_local i32 @dump_status(i8*, i32) #1

declare dso_local i32 @bad_rw_intr(...) #1

declare dso_local i32 @hd_request(...) #1

declare dso_local i32 @insw(i32, i64, i32) #1

declare dso_local i64 @hd_end_request(i32, i32) #1

declare dso_local i32 @SET_HANDLER(void (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
