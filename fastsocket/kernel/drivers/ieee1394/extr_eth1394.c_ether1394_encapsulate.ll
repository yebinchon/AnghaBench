; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_encapsulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_encapsulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.eth1394_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@hdr_type_len = common dso_local global i32* null, align 8
@ETH1394_HDR_LF_IF = common dso_local global i32 0, align 4
@ETH1394_HDR_LF_LF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %union.eth1394_hdr*)* @ether1394_encapsulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_encapsulate(%struct.sk_buff* %0, i32 %1, %union.eth1394_hdr* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.eth1394_hdr*, align 8
  %7 = alloca %union.eth1394_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.eth1394_hdr* %2, %union.eth1394_hdr** %6, align 8
  %11 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %12 = bitcast %union.eth1394_hdr* %11 to %struct.TYPE_5__*
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** @hdr_type_len, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %82 [
    i32 128, label %24
    i32 129, label %44
  ]

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @skb_push(%struct.sk_buff* %25, i32 %26)
  %28 = inttoptr i64 %27 to %union.eth1394_hdr*
  store %union.eth1394_hdr* %28, %union.eth1394_hdr** %7, align 8
  %29 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %30 = bitcast %union.eth1394_hdr* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @htons(i8* %32)
  %34 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %35 = bitcast %union.eth1394_hdr* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i8* %33, i8** %36, align 8
  %37 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %38 = bitcast %union.eth1394_hdr* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %42 = bitcast %union.eth1394_hdr* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  br label %131

44:                                               ; preds = %3
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @skb_push(%struct.sk_buff* %45, i32 %46)
  %48 = inttoptr i64 %47 to %union.eth1394_hdr*
  store %union.eth1394_hdr* %48, %union.eth1394_hdr** %7, align 8
  %49 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %50 = bitcast %union.eth1394_hdr* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @htons(i8* %52)
  %54 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %55 = bitcast %union.eth1394_hdr* %54 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  %57 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %58 = bitcast %union.eth1394_hdr* %57 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %62 = bitcast %union.eth1394_hdr* %61 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %65 = bitcast %union.eth1394_hdr* %64 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @htons(i8* %67)
  %69 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %70 = bitcast %union.eth1394_hdr* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  %72 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %73 = bitcast %union.eth1394_hdr* %72 to %struct.TYPE_6__*
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* @ETH1394_HDR_LF_IF, align 4
  %76 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %77 = bitcast %union.eth1394_hdr* %76 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %80 = bitcast %union.eth1394_hdr* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %131

82:                                               ; preds = %3
  %83 = load i32, i32* %10, align 4
  %84 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %85 = bitcast %union.eth1394_hdr* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @skb_pull(%struct.sk_buff* %89, i32 %90)
  %92 = inttoptr i64 %91 to %union.eth1394_hdr*
  store %union.eth1394_hdr* %92, %union.eth1394_hdr** %7, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp uge i32 %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %82
  %99 = load i32, i32* @ETH1394_HDR_LF_LF, align 4
  %100 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %101 = bitcast %union.eth1394_hdr* %100 to %struct.TYPE_5__*
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %82
  %104 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %105 = bitcast %union.eth1394_hdr* %104 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @htons(i8* %107)
  %109 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %110 = bitcast %union.eth1394_hdr* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  store i8* %108, i8** %111, align 8
  %112 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %113 = bitcast %union.eth1394_hdr* %112 to %struct.TYPE_6__*
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @htons(i8* %115)
  %117 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %118 = bitcast %union.eth1394_hdr* %117 to %struct.TYPE_6__*
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  store i8* %116, i8** %119, align 8
  %120 = load %union.eth1394_hdr*, %union.eth1394_hdr** %6, align 8
  %121 = bitcast %union.eth1394_hdr* %120 to %struct.TYPE_6__*
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @htons(i8* %123)
  %125 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %126 = bitcast %union.eth1394_hdr* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %union.eth1394_hdr*, %union.eth1394_hdr** %7, align 8
  %129 = bitcast %union.eth1394_hdr* %128 to %struct.TYPE_6__*
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  br label %131

131:                                              ; preds = %103, %44, %24
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @min(i32 %132, i32 %135)
  ret i32 %136
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i8*) #1

declare dso_local i64 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
