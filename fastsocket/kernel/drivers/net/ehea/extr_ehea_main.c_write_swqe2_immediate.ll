; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_write_swqe2_immediate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_write_swqe2_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.ehea_swqe = type { i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ehea_vsgentry, i32* }
%struct.ehea_vsgentry = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SWQE2_MAX_IMM = common dso_local global i32 0, align 4
@EHEA_SWQE_TSO = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ehea_swqe*, i32)* @write_swqe2_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_swqe2_immediate(%struct.sk_buff* %0, %struct.ehea_swqe* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ehea_swqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ehea_vsgentry*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ehea_swqe* %1, %struct.ehea_swqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %19 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32* %23, i32** %8, align 8
  %24 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %25 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.ehea_vsgentry* %27, %struct.ehea_vsgentry** %9, align 8
  %28 = load i32, i32* @SWQE2_MAX_IMM, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %30 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i64 @skb_is_gso(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %3
  %35 = load i32, i32* @EHEA_SWQE_TSO, align 4
  %36 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %37 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %45 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ETH_HLEN, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @ip_hdrlen(%struct.sk_buff* %47)
  %49 = add i32 %46, %48
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @tcp_hdrlen(%struct.sk_buff* %50)
  %52 = add i32 %49, %51
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %34, %3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i64 @skb_is_gso(%struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SWQE2_MAX_IMM, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %57, %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %62, i32* %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %68 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %75 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub i32 %76, %77
  %79 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %80 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i32 @ehea_map_vaddr(i64 %86)
  %88 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %89 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %91 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %72, %61
  br label %103

95:                                               ; preds = %57
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %96, i32* %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %102 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %95, %94
  ret void
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @ehea_map_vaddr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
