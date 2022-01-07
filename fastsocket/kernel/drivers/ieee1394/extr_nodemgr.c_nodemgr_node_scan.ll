; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_node_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_node_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i64 }
%struct.selfid = type { i32, i64 }

@LOCAL_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*, i32)* @nodemgr_node_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nodemgr_node_scan(%struct.hpsb_host* %0, i32 %1) #0 {
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.selfid*, align 8
  %7 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %9 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.selfid*
  store %struct.selfid* %11, %struct.selfid** %6, align 8
  %12 = load i32, i32* @LOCAL_BUS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %14 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.selfid*, %struct.selfid** %6, align 8
  %21 = getelementptr inbounds %struct.selfid, %struct.selfid* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %39

25:                                               ; preds = %19
  %26 = load %struct.selfid*, %struct.selfid** %6, align 8
  %27 = getelementptr inbounds %struct.selfid, %struct.selfid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %25
  %34 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @nodemgr_node_scan_one(%struct.hpsb_host* %34, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %33, %30, %24
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = load %struct.selfid*, %struct.selfid** %6, align 8
  %43 = getelementptr inbounds %struct.selfid, %struct.selfid* %42, i32 1
  store %struct.selfid* %43, %struct.selfid** %6, align 8
  br label %16

44:                                               ; preds = %16
  ret void
}

declare dso_local i32 @nodemgr_node_scan_one(%struct.hpsb_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
