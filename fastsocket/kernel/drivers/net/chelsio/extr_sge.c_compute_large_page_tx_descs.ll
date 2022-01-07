; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_compute_large_page_tx_descs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_compute_large_page_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SGE_TX_DESC_MAX_PLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @compute_large_page_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_large_page_tx_descs(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %27, %11
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %23

33:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %60, %33
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %7, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %53, %38
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %49

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %34

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63, %1
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
