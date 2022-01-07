; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_ip_changed_dealer.c_storage_check_ip_changed.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_ip_changed_dealer.c_storage_check_ip_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@g_storage_ip_changed_auto_adjust = common dso_local global i32 0, align 4
@g_use_storage_id = common dso_local global i64 0, align 8
@g_last_storage_ip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_check_ip_changed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @g_storage_ip_changed_auto_adjust, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @g_use_storage_id, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %20

9:                                                ; preds = %5
  %10 = call i32 (...) @storage_report_storage_ip_addr()
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %20

14:                                               ; preds = %9
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_last_storage_ip, i32 0, i32 0), align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @storage_changelog_req()
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %17, %12, %8
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @storage_report_storage_ip_addr(...) #1

declare dso_local i32 @storage_changelog_req(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
