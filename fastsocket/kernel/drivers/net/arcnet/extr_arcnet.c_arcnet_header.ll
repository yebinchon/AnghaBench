; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ArcProto = type { i32, i32 (%struct.sk_buff*, %struct.net_device*, i16, i32)* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32* }

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"create header from %d to %d; protocol %d (%Xh); size %u.\0A\00", align 1
@D_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"arcnet_header: Yikes!  skb->len(%d) != len(%d)!\0A\00", align 1
@ETH_P_ARCNET = common dso_local global i16 0, align 2
@arc_raw_proto = common dso_local global %struct.ArcProto* null, align 8
@D_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"arc_raw_proto used. proto='%c'\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"arcnet_header: Yikes!  diff (%d) is not 2!\0A\00", align 1
@arc_proto_map = common dso_local global %struct.ArcProto** null, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"building header for %02Xh using protocol '%c'\0A\00", align 1
@arc_proto_null = common dso_local global %struct.ArcProto zeroinitializer, align 8
@arc_bcast_proto = common dso_local global %struct.ArcProto* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"actually, let's use '%c' instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @arcnet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcnet_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.arcnet_local*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ArcProto*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %18)
  store %struct.arcnet_local* %19, %struct.arcnet_local** %14, align 8
  %20 = load i32, i32* @D_DURING, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ -1, %27 ]
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ -1, %36 ]
  %39 = load i16, i16* %10, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %10, align 2
  %42 = zext i16 %41 to i32
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i32, i8*, i32, ...) @BUGMSG(i32 %20, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %38, i32 %40, i32 %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @D_NORMAL, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (i32, i8*, i32, ...) @BUGMSG(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %49, %37
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @ETH_P_ARCNET, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.ArcProto*, %struct.ArcProto** @arc_raw_proto, align 8
  store %struct.ArcProto* %69, %struct.ArcProto** %17, align 8
  %70 = load i32, i32* @D_DEBUG, align 4
  %71 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %72 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, i32, ...) @BUGMSG(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i8*, i8** %11, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 0, %81 ]
  store i32 %83, i32* %15, align 4
  br label %148

84:                                               ; preds = %62
  %85 = load i8*, i8** %11, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %111, label %87

87:                                               ; preds = %84
  %88 = load i16, i16* %10, align 2
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i64 @skb_push(%struct.sk_buff* %89, i32 2)
  %91 = inttoptr i64 %90 to i16*
  store i16 %88, i16* %91, align 2
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  %99 = icmp ne i32 %98, 2
  br i1 %99, label %100, label %110

100:                                              ; preds = %87
  %101 = load i32, i32* @D_NORMAL, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  %109 = call i32 (i32, i8*, i32, ...) @BUGMSG(i32 %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %100, %87
  store i32 -2, i32* %7, align 4
  br label %157

111:                                              ; preds = %84
  %112 = load i8*, i8** %11, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %15, align 4
  %115 = load %struct.arcnet_local*, %struct.arcnet_local** %14, align 8
  %116 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %16, align 4
  %122 = load %struct.ArcProto**, %struct.ArcProto*** @arc_proto_map, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ArcProto*, %struct.ArcProto** %122, i64 %124
  %126 = load %struct.ArcProto*, %struct.ArcProto** %125, align 8
  store %struct.ArcProto* %126, %struct.ArcProto** %17, align 8
  %127 = load i32, i32* @D_DURING, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %130 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, i32, ...) @BUGMSG(i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %134 = icmp eq %struct.ArcProto* %133, @arc_proto_null
  br i1 %134, label %135, label %146

135:                                              ; preds = %111
  %136 = load %struct.ArcProto*, %struct.ArcProto** @arc_bcast_proto, align 8
  %137 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %138 = icmp ne %struct.ArcProto* %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i32, i32* @D_DURING, align 4
  %141 = load %struct.ArcProto*, %struct.ArcProto** @arc_bcast_proto, align 8
  %142 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, i32, ...) @BUGMSG(i32 %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load %struct.ArcProto*, %struct.ArcProto** @arc_bcast_proto, align 8
  store %struct.ArcProto* %145, %struct.ArcProto** %17, align 8
  br label %146

146:                                              ; preds = %139, %135, %111
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147, %82
  %149 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %150 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %149, i32 0, i32 1
  %151 = load i32 (%struct.sk_buff*, %struct.net_device*, i16, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i16, i32)** %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = load %struct.net_device*, %struct.net_device** %9, align 8
  %154 = load i16, i16* %10, align 2
  %155 = load i32, i32* %15, align 4
  %156 = call i32 %151(%struct.sk_buff* %152, %struct.net_device* %153, i16 zeroext %154, i32 %155)
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %148, %110
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUGMSG(i32, i8*, i32, ...) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
