; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_bad_rw_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_bad_rw_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_host = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MG_MAX_ERRORS = common dso_local global i64 0, align 8
@MG_ERR_TIMEOUT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_host*)* @mg_bad_rw_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_bad_rw_intr(%struct.mg_host* %0) #0 {
  %2 = alloca %struct.mg_host*, align 8
  store %struct.mg_host* %0, %struct.mg_host** %2, align 8
  %3 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %4 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %9 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* @MG_MAX_ERRORS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %7
  %17 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %18 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MG_ERR_TIMEOUT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16, %7
  %23 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @mg_end_request_cur(%struct.mg_host* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @mg_end_request_cur(%struct.mg_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
