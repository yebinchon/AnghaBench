; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_write_swqe2_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_write_swqe2_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ehea_swqe = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ehea_vsgentry }
%struct.ehea_vsgentry = type { i8*, i32, i8* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.ehea_swqe*, i8*)* @write_swqe2_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_swqe2_data(%struct.sk_buff* %0, %struct.net_device* %1, %struct.ehea_swqe* %2, i8* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ehea_swqe*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ehea_vsgentry*, align 8
  %10 = alloca %struct.ehea_vsgentry*, align 8
  %11 = alloca %struct.ehea_vsgentry*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.ehea_swqe* %2, %struct.ehea_swqe** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %21 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store %struct.ehea_vsgentry* %23, %struct.ehea_vsgentry** %10, align 8
  %24 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %25 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.ehea_vsgentry*
  store %struct.ehea_vsgentry* %28, %struct.ehea_vsgentry** %9, align 8
  store i32 0, i32* %14, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @write_swqe2_immediate(%struct.sk_buff* %29, %struct.ehea_swqe* %30, i8* %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %116

35:                                               ; preds = %4
  %36 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %37 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 0
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %12, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %10, align 8
  %48 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %10, align 8
  %53 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @page_address(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i8* @ehea_map_vaddr(i64 %61)
  %63 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %10, align 8
  %64 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %66 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %40, %35
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %112, %69
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %115

75:                                               ; preds = %71
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %12, align 8
  %83 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %83, i64 %87
  store %struct.ehea_vsgentry* %88, %struct.ehea_vsgentry** %11, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %11, align 8
  %91 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %11, align 8
  %96 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @page_address(i32 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = call i8* @ehea_map_vaddr(i64 %104)
  %106 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %11, align 8
  %107 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %109 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %75
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %71

115:                                              ; preds = %71
  br label %116

116:                                              ; preds = %115, %4
  ret void
}

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @write_swqe2_immediate(%struct.sk_buff*, %struct.ehea_swqe*, i8*) #1

declare dso_local i8* @ehea_map_vaddr(i64) #1

declare dso_local i64 @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
