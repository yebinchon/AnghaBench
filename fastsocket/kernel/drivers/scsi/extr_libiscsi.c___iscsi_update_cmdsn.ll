; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c___iscsi_update_cmdsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c___iscsi_update_cmdsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, i64, i64)* @__iscsi_update_cmdsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iscsi_update_cmdsn(%struct.iscsi_session* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = sub nsw i64 %8, 1
  %10 = call i64 @iscsi_sna_lt(i64 %7, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %66

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @iscsi_sna_lt(i64 %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %19, %13
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @iscsi_sna_lt(i64 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @list_empty(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %55 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53, %43
  %61 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %62 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @iscsi_conn_queue_work(%struct.TYPE_2__* %63)
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %12, %65, %36, %30
  ret void
}

declare dso_local i64 @iscsi_sna_lt(i64, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @iscsi_conn_queue_work(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
