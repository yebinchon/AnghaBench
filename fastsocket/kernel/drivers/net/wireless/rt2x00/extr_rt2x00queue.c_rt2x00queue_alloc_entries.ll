; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.queue_entry*, i32, i32, i32, i32 }
%struct.queue_entry = type { i32, i32, i32*, %struct.data_queue*, i64 }
%struct.data_queue_desc = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_queue*, %struct.data_queue_desc*)* @rt2x00queue_alloc_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00queue_alloc_entries(%struct.data_queue* %0, %struct.data_queue_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.data_queue*, align 8
  %5 = alloca %struct.data_queue_desc*, align 8
  %6 = alloca %struct.queue_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %4, align 8
  store %struct.data_queue_desc* %1, %struct.data_queue_desc** %5, align 8
  %9 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %10 = call i32 @rt2x00queue_reset(%struct.data_queue* %9)
  %11 = load %struct.data_queue_desc*, %struct.data_queue_desc** %5, align 8
  %12 = getelementptr inbounds %struct.data_queue_desc, %struct.data_queue_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %15 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.data_queue_desc*, %struct.data_queue_desc** %5, align 8
  %17 = getelementptr inbounds %struct.data_queue_desc, %struct.data_queue_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 %18, i32 10)
  %20 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %21 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.data_queue_desc*, %struct.data_queue_desc** %5, align 8
  %23 = getelementptr inbounds %struct.data_queue_desc, %struct.data_queue_desc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %26 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.data_queue_desc*, %struct.data_queue_desc** %5, align 8
  %28 = getelementptr inbounds %struct.data_queue_desc, %struct.data_queue_desc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %31 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.data_queue_desc*, %struct.data_queue_desc** %5, align 8
  %33 = getelementptr inbounds %struct.data_queue_desc, %struct.data_queue_desc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %36 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.data_queue_desc*, %struct.data_queue_desc** %5, align 8
  %38 = getelementptr inbounds %struct.data_queue_desc, %struct.data_queue_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 32, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %44 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.queue_entry* @kcalloc(i32 %45, i32 %46, i32 %47)
  store %struct.queue_entry* %48, %struct.queue_entry** %6, align 8
  %49 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %50 = icmp ne %struct.queue_entry* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %2
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %112

54:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %105, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %58 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %108

61:                                               ; preds = %55
  %62 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %62, i64 %64
  %66 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %68 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %68, i64 %70
  %72 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %71, i32 0, i32 3
  store %struct.data_queue* %67, %struct.data_queue** %72, align 8
  %73 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %73, i64 %75
  %77 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %79, i64 %81
  %83 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %85 = bitcast %struct.queue_entry* %84 to i8*
  %86 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %87 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = zext i32 %88 to i64
  %90 = mul i64 %89, 32
  %91 = getelementptr inbounds i8, i8* %85, i64 %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.data_queue_desc*, %struct.data_queue_desc** %5, align 8
  %94 = getelementptr inbounds %struct.data_queue_desc, %struct.data_queue_desc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul i32 %92, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %91, i64 %97
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %100, i64 %102
  %104 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %103, i32 0, i32 1
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %61
  %106 = load i32, i32* %8, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %55

108:                                              ; preds = %55
  %109 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %110 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %111 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %110, i32 0, i32 1
  store %struct.queue_entry* %109, %struct.queue_entry** %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %51
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @rt2x00queue_reset(%struct.data_queue*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.queue_entry* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
