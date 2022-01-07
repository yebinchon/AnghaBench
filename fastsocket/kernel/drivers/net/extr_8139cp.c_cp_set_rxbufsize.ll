; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_set_rxbufsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_set_rxbufsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@PKT_BUF_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_set_rxbufsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_set_rxbufsize(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  %3 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %4 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %5 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ETH_DATA_LEN, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @ETH_HLEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 8
  %18 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %19 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load i64, i64* @PKT_BUF_SZ, align 8
  %22 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %23 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
