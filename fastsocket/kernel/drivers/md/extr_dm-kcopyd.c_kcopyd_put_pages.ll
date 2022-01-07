; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-kcopyd.c_kcopyd_put_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-kcopyd.c_kcopyd_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_client = type { i64, i64, %struct.page_list* }
%struct.page_list = type { %struct.page_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_kcopyd_client*, %struct.page_list*)* @kcopyd_put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcopyd_put_pages(%struct.dm_kcopyd_client* %0, %struct.page_list* %1) #0 {
  %3 = alloca %struct.dm_kcopyd_client*, align 8
  %4 = alloca %struct.page_list*, align 8
  %5 = alloca %struct.page_list*, align 8
  store %struct.dm_kcopyd_client* %0, %struct.dm_kcopyd_client** %3, align 8
  store %struct.page_list* %1, %struct.page_list** %4, align 8
  br label %6

6:                                                ; preds = %35, %2
  %7 = load %struct.page_list*, %struct.page_list** %4, align 8
  %8 = getelementptr inbounds %struct.page_list, %struct.page_list* %7, i32 0, i32 0
  %9 = load %struct.page_list*, %struct.page_list** %8, align 8
  store %struct.page_list* %9, %struct.page_list** %5, align 8
  %10 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %3, align 8
  %11 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %3, align 8
  %14 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load %struct.page_list*, %struct.page_list** %4, align 8
  %19 = call i32 @free_pl(%struct.page_list* %18)
  br label %33

20:                                               ; preds = %6
  %21 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %3, align 8
  %22 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %21, i32 0, i32 2
  %23 = load %struct.page_list*, %struct.page_list** %22, align 8
  %24 = load %struct.page_list*, %struct.page_list** %4, align 8
  %25 = getelementptr inbounds %struct.page_list, %struct.page_list* %24, i32 0, i32 0
  store %struct.page_list* %23, %struct.page_list** %25, align 8
  %26 = load %struct.page_list*, %struct.page_list** %4, align 8
  %27 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %3, align 8
  %28 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %27, i32 0, i32 2
  store %struct.page_list* %26, %struct.page_list** %28, align 8
  %29 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %3, align 8
  %30 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %20, %17
  %34 = load %struct.page_list*, %struct.page_list** %5, align 8
  store %struct.page_list* %34, %struct.page_list** %4, align 8
  br label %35

35:                                               ; preds = %33
  %36 = load %struct.page_list*, %struct.page_list** %4, align 8
  %37 = icmp ne %struct.page_list* %36, null
  br i1 %37, label %6, label %38

38:                                               ; preds = %35
  ret void
}

declare dso_local i32 @free_pl(%struct.page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
