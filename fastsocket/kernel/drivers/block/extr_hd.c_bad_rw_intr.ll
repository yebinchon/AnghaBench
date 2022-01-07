; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_bad_rw_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_bad_rw_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hd_i_struct* }
%struct.hd_i_struct = type { i32, i32 }

@hd_req = common dso_local global %struct.request* null, align 8
@MAX_ERRORS = common dso_local global i64 0, align 8
@hd_error = common dso_local global i32 0, align 4
@BBD_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RESET_FREQ = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@TRK0_ERR = common dso_local global i32 0, align 4
@RECAL_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bad_rw_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bad_rw_intr() #0 {
  %1 = alloca %struct.request*, align 8
  %2 = alloca %struct.hd_i_struct*, align 8
  %3 = load %struct.request*, %struct.request** @hd_req, align 8
  store %struct.request* %3, %struct.request** %1, align 8
  %4 = load %struct.request*, %struct.request** %1, align 8
  %5 = icmp ne %struct.request* %4, null
  br i1 %5, label %6, label %61

6:                                                ; preds = %0
  %7 = load %struct.request*, %struct.request** %1, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hd_i_struct*, %struct.hd_i_struct** %10, align 8
  store %struct.hd_i_struct* %11, %struct.hd_i_struct** %2, align 8
  %12 = load %struct.request*, %struct.request** %1, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* @MAX_ERRORS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @hd_error, align 4
  %20 = load i32, i32* @BBD_ERR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18, %6
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @hd_end_request_cur(i32 %25)
  %27 = load %struct.hd_i_struct*, %struct.hd_i_struct** %2, align 8
  %28 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.hd_i_struct*, %struct.hd_i_struct** %2, align 8
  %30 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %60

31:                                               ; preds = %18
  %32 = load %struct.request*, %struct.request** %1, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @RESET_FREQ, align 4
  %36 = sext i32 %35 to i64
  %37 = srem i64 %34, %36
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* @reset, align 4
  br label %59

40:                                               ; preds = %31
  %41 = load i32, i32* @hd_error, align 4
  %42 = load i32, i32* @TRK0_ERR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load %struct.request*, %struct.request** %1, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @RECAL_FREQ, align 4
  %50 = sext i32 %49 to i64
  %51 = srem i64 %48, %50
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45, %40
  %54 = load %struct.hd_i_struct*, %struct.hd_i_struct** %2, align 8
  %55 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.hd_i_struct*, %struct.hd_i_struct** %2, align 8
  %57 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %45
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %23
  br label %61

61:                                               ; preds = %60, %0
  ret void
}

declare dso_local i32 @hd_end_request_cur(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
