; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_xmit.c_b43_plcp_get_bitrate_idx_cck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_xmit.c_b43_plcp_get_bitrate_idx_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_plcp_hdr6 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_plcp_hdr6*)* @b43_plcp_get_bitrate_idx_cck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_plcp_get_bitrate_idx_cck(%struct.b43_plcp_hdr6* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_plcp_hdr6*, align 8
  store %struct.b43_plcp_hdr6* %0, %struct.b43_plcp_hdr6** %3, align 8
  %4 = load %struct.b43_plcp_hdr6*, %struct.b43_plcp_hdr6** %3, align 8
  %5 = getelementptr inbounds %struct.b43_plcp_hdr6, %struct.b43_plcp_hdr6* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 10, label %9
    i32 20, label %10
    i32 55, label %11
    i32 110, label %12
  ]

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %14

12:                                               ; preds = %1
  store i32 3, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
