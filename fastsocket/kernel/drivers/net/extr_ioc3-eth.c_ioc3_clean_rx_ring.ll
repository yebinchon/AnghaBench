; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, i64, %struct.sk_buff**, i32* }
%struct.sk_buff = type { i64 }
%struct.ioc3_erxbuf = type { i64 }

@RX_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_clean_rx_ring(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioc3_erxbuf*, align 8
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %6 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %7 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 15
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %15 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %14, i32 0, i32 2
  %16 = load %struct.sk_buff**, %struct.sk_buff*** %15, align 8
  %17 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %18 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %16, i64 %20
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %24 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %23, i32 0, i32 2
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  %26 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %27 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %28
  store %struct.sk_buff* %22, %struct.sk_buff** %29, align 8
  %30 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %31 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %34 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %41 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %44 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %39, i32* %47, align 4
  br label %48

48:                                               ; preds = %13
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %53 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 511
  store i64 %55, i64* %53, align 8
  %56 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %57 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 511
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %61 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %86, %51
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %67 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %63
  %71 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %72 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %71, i32 0, i32 2
  %73 = load %struct.sk_buff**, %struct.sk_buff*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %73, i64 %75
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %3, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RX_OFFSET, align 8
  %82 = sub nsw i64 %80, %81
  %83 = inttoptr i64 %82 to %struct.ioc3_erxbuf*
  store %struct.ioc3_erxbuf* %83, %struct.ioc3_erxbuf** %5, align 8
  %84 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %5, align 8
  %85 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  %89 = and i32 %88, 511
  store i32 %89, i32* %4, align 4
  br label %63

90:                                               ; preds = %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
