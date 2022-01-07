; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_create_skb_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_create_skb_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.qdio_buffer_element = type { i64 }
%struct.page = type { i32 }

@QETH_RX_PULL_LEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_buffer*, %struct.qdio_buffer_element*, %struct.sk_buff**, i32, i32*, i32)* @qeth_create_skb_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_create_skb_frag(%struct.qeth_qdio_buffer* %0, %struct.qdio_buffer_element* %1, %struct.sk_buff** %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_qdio_buffer*, align 8
  %9 = alloca %struct.qdio_buffer_element*, align 8
  %10 = alloca %struct.sk_buff**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.qeth_qdio_buffer* %0, %struct.qeth_qdio_buffer** %8, align 8
  store %struct.qdio_buffer_element* %1, %struct.qdio_buffer_element** %9, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %9, align 8
  %16 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.page* @virt_to_page(i64 %17)
  store %struct.page* %18, %struct.page** %14, align 8
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %124

22:                                               ; preds = %6
  %23 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %31, align 8
  %32 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %33 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %32, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %33, align 8
  br label %48

34:                                               ; preds = %22
  %35 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @ETH_HLEN, align 8
  %38 = add nsw i64 %36, %37
  %39 = call %struct.sk_buff* @dev_alloc_skb(i64 %38)
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %40, align 8
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %157

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  %51 = load i64, i64* @ETH_HLEN, align 8
  %52 = call i32 @skb_reserve(%struct.sk_buff* %50, i64 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @skb_put(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %9, align 8
  %62 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @memcpy(i32 %60, i64 %66, i32 %67)
  br label %123

69:                                               ; preds = %48
  %70 = load %struct.page*, %struct.page** %14, align 8
  %71 = call i32 @get_page(%struct.page* %70)
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  %74 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %75 = call i32 @skb_put(%struct.sk_buff* %73, i32 %74)
  %76 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %9, align 8
  %77 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %83 = call i32 @memcpy(i32 %75, i64 %81, i32 %82)
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %84, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.page*, %struct.page** %14, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i32 @skb_fill_page_desc(%struct.sk_buff* %85, i32 %87, %struct.page* %88, i32 %91, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %99, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %107, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %106
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %115, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %69, %56
  br label %156

124:                                              ; preds = %6
  %125 = load %struct.page*, %struct.page** %14, align 8
  %126 = call i32 @get_page(%struct.page* %125)
  %127 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %127, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.page*, %struct.page** %14, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @skb_fill_page_desc(%struct.sk_buff* %128, i32 %130, %struct.page* %131, i32 %132, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %136, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %135
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %142, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %141
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %148, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %147
  store i32 %152, i32* %150, align 4
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %124, %123
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %156, %44
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
