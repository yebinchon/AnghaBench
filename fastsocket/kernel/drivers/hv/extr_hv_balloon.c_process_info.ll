; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_process_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_process_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i32 }
%struct.dm_info_msg = type { i64 }
%struct.dm_info_header = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Received INFO_TYPE_MAX_PAGE_CNT\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Data Size is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Received Unknown type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*, %struct.dm_info_msg*)* @process_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_info(%struct.hv_dynmem_device* %0, %struct.dm_info_msg* %1) #0 {
  %3 = alloca %struct.hv_dynmem_device*, align 8
  %4 = alloca %struct.dm_info_msg*, align 8
  %5 = alloca %struct.dm_info_header*, align 8
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %3, align 8
  store %struct.dm_info_msg* %1, %struct.dm_info_msg** %4, align 8
  %6 = load %struct.dm_info_msg*, %struct.dm_info_msg** %4, align 8
  %7 = getelementptr inbounds %struct.dm_info_msg, %struct.dm_info_msg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.dm_info_header*
  store %struct.dm_info_header* %9, %struct.dm_info_header** %5, align 8
  %10 = load %struct.dm_info_header*, %struct.dm_info_header** %5, align 8
  %11 = getelementptr inbounds %struct.dm_info_header, %struct.dm_info_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.dm_info_header*, %struct.dm_info_header** %5, align 8
  %16 = getelementptr inbounds %struct.dm_info_header, %struct.dm_info_header* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.dm_info_header*, %struct.dm_info_header** %5, align 8
  %21 = getelementptr inbounds %struct.dm_info_header, %struct.dm_info_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
