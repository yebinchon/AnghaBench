; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_frag_cache_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_frag_cache_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32 }
%struct.libipw_hdr_4addr = type { i32, i32, i32 }
%struct.libipw_frag_entry = type { i32* }

@.str = private unnamed_addr constant [52 x i8] c"could not invalidate fragment cache entry (seq=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_device*, %struct.libipw_hdr_4addr*)* @libipw_frag_cache_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_frag_cache_invalidate(%struct.libipw_device* %0, %struct.libipw_hdr_4addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca %struct.libipw_hdr_4addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.libipw_frag_entry*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store %struct.libipw_hdr_4addr* %1, %struct.libipw_hdr_4addr** %5, align 8
  %9 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %10 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @WLAN_GET_SEQ_SEQ(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %18 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %21 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.libipw_frag_entry* @libipw_frag_cache_find(%struct.libipw_device* %15, i32 %16, i32 -1, i32 %19, i32 %22)
  store %struct.libipw_frag_entry* %23, %struct.libipw_frag_entry** %8, align 8
  %24 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %8, align 8
  %25 = icmp eq %struct.libipw_frag_entry* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @LIBIPW_DEBUG_FRAG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %3, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %8, align 8
  %31 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_SEQ(i32) #1

declare dso_local %struct.libipw_frag_entry* @libipw_frag_cache_find(%struct.libipw_device*, i32, i32, i32, i32) #1

declare dso_local i32 @LIBIPW_DEBUG_FRAG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
