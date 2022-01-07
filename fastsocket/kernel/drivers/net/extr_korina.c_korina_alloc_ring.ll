; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.korina_private = type { i8*, i64, i64, i64, %struct.TYPE_4__*, %struct.sk_buff**, i8*, i64, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8*, i8*, i64 }
%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@KORINA_NUM_TDS = common dso_local global i32 0, align 4
@DMA_DESC_IOF = common dso_local global i32 0, align 4
@ETH_TX_FD = common dso_local global i32 0, align 4
@ETH_TX_LD = common dso_local global i32 0, align 4
@desc_empty = common dso_local global i8* null, align 8
@KORINA_NUM_RDS = common dso_local global i32 0, align 4
@KORINA_RBSIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_DESC_IOD = common dso_local global i32 0, align 4
@DMA_DESC_COD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @korina_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @korina_alloc_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.korina_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.korina_private* @netdev_priv(%struct.net_device* %7)
  store %struct.korina_private* %8, %struct.korina_private** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @KORINA_NUM_TDS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load i32, i32* @DMA_DESC_IOF, align 4
  %15 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %16 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %15, i32 0, i32 12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 %14, i32* %21, align 8
  %22 = load i32, i32* @ETH_TX_FD, align 4
  %23 = load i32, i32* @ETH_TX_LD, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %26 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %25, i32 0, i32 12
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %24, i32* %31, align 8
  %32 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %33 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %32, i32 0, i32 12
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %40 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %39, i32 0, i32 12
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %13
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %51 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %53 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %55 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %54, i32 0, i32 9
  store i64 0, i64* %55, align 8
  %56 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %57 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  %58 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %59 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load i8*, i8** @desc_empty, align 8
  %61 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %62 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %130, %49
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @KORINA_NUM_RDS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %133

67:                                               ; preds = %63
  %68 = load i64, i64* @KORINA_RBSIZE, align 8
  %69 = add nsw i64 %68, 2
  %70 = call %struct.sk_buff* @dev_alloc_skb(i64 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %5, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %167

76:                                               ; preds = %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @skb_reserve(%struct.sk_buff* %77, i32 2)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %81 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %80, i32 0, i32 5
  %82 = load %struct.sk_buff**, %struct.sk_buff*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %82, i64 %84
  store %struct.sk_buff* %79, %struct.sk_buff** %85, align 8
  %86 = load i32, i32* @DMA_DESC_IOD, align 4
  %87 = load i64, i64* @KORINA_RBSIZE, align 8
  %88 = call i32 @DMA_COUNT(i64 %87)
  %89 = or i32 %86, %88
  %90 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %91 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 8
  %97 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %98 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = call i8* @CPHYSADDR(%struct.TYPE_4__* %106)
  %108 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %109 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %108, i32 0, i32 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  store i8* %107, i8** %114, align 8
  %115 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %116 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %120
  %122 = call i8* @CPHYSADDR(%struct.TYPE_4__* %121)
  %123 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %124 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %123, i32 0, i32 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i8* %122, i8** %129, align 8
  br label %130

130:                                              ; preds = %76
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %63

133:                                              ; preds = %63
  %134 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %135 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %134, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 0
  %138 = call i8* @CPHYSADDR(%struct.TYPE_4__* %137)
  %139 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %140 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %139, i32 0, i32 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i8* %138, i8** %146, align 8
  %147 = load i32, i32* @DMA_DESC_COD, align 4
  %148 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %149 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %148, i32 0, i32 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %147
  store i32 %157, i32* %155, align 8
  %158 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %159 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %158, i32 0, i32 3
  store i64 0, i64* %159, align 8
  %160 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %161 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %163 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = load i8*, i8** @desc_empty, align 8
  %165 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %166 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %133, %73
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @DMA_COUNT(i64) #1

declare dso_local i8* @CPHYSADDR(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
