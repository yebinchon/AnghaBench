; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_rebuild_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_rebuild_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ArcProto = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i64)* }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.arcnet_local = type { i64* }

@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"rebuild_header: shouldn't be here! (hdrsize=%d)\0A\00", align 1
@D_DURING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"rebuild header for protocol %Xh\0A\00", align 1
@ETH_P_IP = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [53 x i8] c"I don't understand ethernet protocol %Xh addresses!\0A\00", align 1
@arc_proto_map = common dso_local global %struct.ArcProto** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @arcnet_rebuild_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcnet_rebuild_header(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.arcnet_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca %struct.ArcProto*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %13)
  store %struct.arcnet_local* %14, %struct.arcnet_local** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load i32, i32* @D_NORMAL, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = trunc i32 %31 to i16
  %33 = call i32 (i32, i8*, i16, ...) @BUGMSG(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i16 zeroext %32)
  store i32 0, i32* %2, align 4
  br label %84

34:                                               ; preds = %1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i64 @skb_pull(%struct.sk_buff* %35, i32 2)
  %37 = inttoptr i64 %36 to i16*
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %7, align 2
  %39 = load i32, i32* @D_DURING, align 4
  %40 = load i16, i16* %7, align 2
  %41 = call i32 (i32, i8*, i16, ...) @BUGMSG(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %40)
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @ETH_P_IP, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %62

48:                                               ; preds = %34
  %49 = load i32, i32* @D_NORMAL, align 4
  %50 = load i16, i16* %7, align 2
  %51 = call i32 (i32, i8*, i16, ...) @BUGMSG(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %48, %47
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %84

66:                                               ; preds = %62
  %67 = load %struct.ArcProto**, %struct.ArcProto*** @arc_proto_map, align 8
  %68 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %69 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.ArcProto*, %struct.ArcProto** %67, i64 %73
  %75 = load %struct.ArcProto*, %struct.ArcProto** %74, align 8
  store %struct.ArcProto* %75, %struct.ArcProto** %9, align 8
  %76 = load %struct.ArcProto*, %struct.ArcProto** %9, align 8
  %77 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %76, i32 0, i32 0
  %78 = load i32 (%struct.sk_buff*, %struct.net_device*, i16, i64)*, i32 (%struct.sk_buff*, %struct.net_device*, i16, i64)** %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = load i16, i16* %7, align 2
  %82 = load i64, i64* %8, align 8
  %83 = call i32 %78(%struct.sk_buff* %79, %struct.net_device* %80, i16 zeroext %81, i64 %82)
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %66, %65, %23
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUGMSG(i32, i8*, i16 zeroext, ...) #1

declare dso_local i64 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
