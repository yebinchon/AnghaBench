; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_hard_header_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_hard_header_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }
%struct.hh_cache = type { i64 }
%struct.ethhdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*, %struct.hh_cache*)* @plip_hard_header_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_hard_header_cache(%struct.neighbour* %0, %struct.hh_cache* %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.hh_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethhdr*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store %struct.hh_cache* %1, %struct.hh_cache** %4, align 8
  %7 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %8 = load %struct.hh_cache*, %struct.hh_cache** %4, align 8
  %9 = call i32 @eth_header_cache(%struct.neighbour* %7, %struct.hh_cache* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.hh_cache*, %struct.hh_cache** %4, align 8
  %14 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @HH_DATA_OFF(i32 4)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = bitcast i32* %19 to %struct.ethhdr*
  store %struct.ethhdr* %20, %struct.ethhdr** %6, align 8
  %21 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %22 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %25 = call i32 @plip_rewrite_address(i32 %23, %struct.ethhdr* %24)
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @eth_header_cache(%struct.neighbour*, %struct.hh_cache*) #1

declare dso_local i32 @HH_DATA_OFF(i32) #1

declare dso_local i32 @plip_rewrite_address(i32, %struct.ethhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
