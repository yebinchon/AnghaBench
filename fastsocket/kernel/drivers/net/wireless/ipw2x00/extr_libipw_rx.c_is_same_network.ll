; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_is_same_network.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_is_same_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_network = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_network*, %struct.libipw_network*)* @is_same_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same_network(%struct.libipw_network* %0, %struct.libipw_network* %1) #0 {
  %3 = alloca %struct.libipw_network*, align 8
  %4 = alloca %struct.libipw_network*, align 8
  store %struct.libipw_network* %0, %struct.libipw_network** %3, align 8
  store %struct.libipw_network* %1, %struct.libipw_network** %4, align 8
  %5 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %6 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %9 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %14 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %17 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %22 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %25 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ether_addr_equal(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %31 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %34 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %37 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @memcmp(i32 %32, i32 %35, i64 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %29, %20, %12, %2
  %43 = phi i1 [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %41, %29 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
