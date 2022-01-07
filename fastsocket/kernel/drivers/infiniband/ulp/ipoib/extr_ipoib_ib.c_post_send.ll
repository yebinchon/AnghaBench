; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.TYPE_12__, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i32, %struct.ib_ah*, i32 }
%struct.TYPE_7__ = type { i64, i8* }
%struct.ib_ah = type { i32 }
%struct.ipoib_tx_buf = type { i8**, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ib_send_wr = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }

@IB_WR_LSO = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, i32, %struct.ib_ah*, i32, %struct.ipoib_tx_buf*, i8*, i32)* @post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_send(%struct.ipoib_dev_priv* %0, i32 %1, %struct.ib_ah* %2, i32 %3, %struct.ipoib_tx_buf* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_ah*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipoib_tx_buf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_send_wr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ib_ah* %2, %struct.ib_ah** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ipoib_tx_buf* %4, %struct.ipoib_tx_buf** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %12, align 8
  %23 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %22, i32 0, i32 1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %18, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %26 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %19, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %30 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %20, align 4
  %33 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %12, align 8
  %34 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  store i8** %35, i8*** %21, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %37 = call i64 @skb_headlen(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %7
  %40 = load i8**, i8*** %21, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i8* %42, i8** %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %49 = call i64 @skb_headlen(%struct.sk_buff* %48)
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %49, i64* %54, align 8
  store i32 1, i32* %17, align 4
  br label %56

55:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %55, %39
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %93, %56
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = load i8**, i8*** %21, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %62, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i8* %68, i8** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %85 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i64 %83, i64* %92, align 8
  br label %93

93:                                               ; preds = %61
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %57

96:                                               ; preds = %57
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %101 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %109 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  store i32 %107, i32* %112, align 8
  %113 = load %struct.ib_ah*, %struct.ib_ah** %10, align 8
  %114 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %115 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  store %struct.ib_ah* %113, %struct.ib_ah** %118, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %147

121:                                              ; preds = %96
  %122 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %123 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %127 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32 %125, i32* %130, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %133 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i8* %131, i8** %136, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %139 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 8
  %143 = load i32, i32* @IB_WR_LSO, align 4
  %144 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %145 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  br label %152

147:                                              ; preds = %96
  %148 = load i32, i32* @IB_WR_SEND, align 4
  %149 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %150 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 8
  br label %152

152:                                              ; preds = %147, %121
  %153 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %154 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %157 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %156, i32 0, i32 0
  %158 = call i32 @ib_post_send(i32 %155, %struct.TYPE_12__* %157, %struct.ib_send_wr** %15)
  ret i32 %158
}

declare dso_local %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_12__*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
