; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdoops.c_mtdoops_notify_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdoops.c_mtdoops_notify_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdoops_context = type { i64, i32* }
%struct.mtd_info = type { i64 }

@oops_cxt = common dso_local global %struct.mtdoops_context zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @mtdoops_notify_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdoops_notify_remove(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.mtdoops_context*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  store %struct.mtdoops_context* @oops_cxt, %struct.mtdoops_context** %3, align 8
  %4 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.mtdoops_context*, %struct.mtdoops_context** %3, align 8
  %8 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.mtdoops_context*, %struct.mtdoops_context** %3, align 8
  %13 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.mtdoops_context*, %struct.mtdoops_context** %3, align 8
  %19 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = call i32 (...) @flush_scheduled_work()
  br label %21

21:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @flush_scheduled_work(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
