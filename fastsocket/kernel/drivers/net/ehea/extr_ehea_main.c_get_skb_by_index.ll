; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_get_skb_by_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_get_skb_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.ehea_cqe = type { i32 }

@EHEA_WR_ID_INDEX = common dso_local global i32 0, align 4
@EHEA_CACHE_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff**, i32, %struct.ehea_cqe*)* @get_skb_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_skb_by_index(%struct.sk_buff** %0, i32 %1, %struct.ehea_cqe* %2) #0 {
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehea_cqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ehea_cqe* %2, %struct.ehea_cqe** %6, align 8
  %11 = load i32, i32* @EHEA_WR_ID_INDEX, align 4
  %12 = load %struct.ehea_cqe*, %struct.ehea_cqe** %6, align 8
  %13 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @EHEA_BMASK_GET(i32 %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %24
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = bitcast %struct.sk_buff* %26 to i8*
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %3
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @prefetchw(i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @EHEA_CACHE_LINE, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = call i32 @prefetchw(i8* %36)
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @prefetch(i8* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @EHEA_CACHE_LINE, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = call i32 @prefetch(i8* %50)
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @EHEA_CACHE_LINE, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %52, i64 %55
  %57 = call i32 @prefetch(i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* @EHEA_CACHE_LINE, align 4
  %60 = mul nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %58, i64 %61
  %63 = call i32 @prefetch(i8* %62)
  br label %64

64:                                               ; preds = %30, %3
  %65 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %65, i64 %67
  %69 = load %struct.sk_buff*, %struct.sk_buff** %68, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %8, align 8
  %70 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %70, i64 %72
  store %struct.sk_buff* null, %struct.sk_buff** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %74
}

declare dso_local i32 @EHEA_BMASK_GET(i32, i32) #1

declare dso_local i32 @prefetchw(i8*) #1

declare dso_local i32 @prefetch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
