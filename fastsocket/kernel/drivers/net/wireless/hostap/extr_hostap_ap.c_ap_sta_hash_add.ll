; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_sta_hash_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_sta_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { %struct.sta_info** }
%struct.sta_info = type { i32, %struct.sta_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_data*, %struct.sta_info*)* @ap_sta_hash_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_sta_hash_add(%struct.ap_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.ap_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  store %struct.ap_data* %0, %struct.ap_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %5 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %6 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %5, i32 0, i32 0
  %7 = load %struct.sta_info**, %struct.sta_info*** %6, align 8
  %8 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @STA_HASH(i32 %10)
  %12 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %7, i64 %11
  %13 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 1
  store %struct.sta_info* %13, %struct.sta_info** %15, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %17 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %18 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %17, i32 0, i32 0
  %19 = load %struct.sta_info**, %struct.sta_info*** %18, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @STA_HASH(i32 %22)
  %24 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %19, i64 %23
  store %struct.sta_info* %16, %struct.sta_info** %24, align 8
  ret void
}

declare dso_local i64 @STA_HASH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
