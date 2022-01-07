; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_add_to_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_add_to_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.meth_private = type { i64, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32, i64 }

@TX_RING_ENTRIES = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meth_private*, %struct.sk_buff*)* @meth_add_to_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meth_add_to_tx_ring(%struct.meth_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.meth_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.meth_private* %0, %struct.meth_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %7 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %6, i32 0, i32 2
  %8 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %9 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %10 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %8, i64 %11
  store %struct.sk_buff* %5, %struct.sk_buff** %12, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %15, 120
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @meth_tx_short_prepare(%struct.meth_private* %18, %struct.sk_buff* %19)
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @PAGE_ALIGN(i64 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 %28, %32
  %34 = sub i64 %33, 1
  %35 = call i64 @PAGE_ALIGN(i64 %34)
  %36 = icmp ne i64 %25, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @meth_tx_2page_prepare(%struct.meth_private* %38, %struct.sk_buff* %39)
  br label %45

41:                                               ; preds = %21
  %42 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @meth_tx_1page_prepare(%struct.meth_private* %42, %struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %48 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  %51 = load i32, i32* @TX_RING_ENTRIES, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = and i64 %50, %53
  %55 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %56 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %58 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %65 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  ret void
}

declare dso_local i32 @meth_tx_short_prepare(%struct.meth_private*, %struct.sk_buff*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @meth_tx_2page_prepare(%struct.meth_private*, %struct.sk_buff*) #1

declare dso_local i32 @meth_tx_1page_prepare(%struct.meth_private*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
