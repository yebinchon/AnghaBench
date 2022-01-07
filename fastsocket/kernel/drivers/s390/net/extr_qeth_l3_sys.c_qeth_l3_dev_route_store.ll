; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_route_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_route_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64, i32 }
%struct.qeth_routing_info = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no_router\00", align 1
@NO_ROUTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"primary_connector\00", align 1
@PRIMARY_CONNECTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"secondary_connector\00", align 1
@SECONDARY_CONNECTOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"primary_router\00", align 1
@PRIMARY_ROUTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"secondary_router\00", align 1
@SECONDARY_ROUTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"multicast_router\00", align 1
@MULTICAST_ROUTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CARD_STATE_UP = common dso_local global i64 0, align 8
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_routing_info*, i32, i8*, i64)* @qeth_l3_dev_route_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_route_store(%struct.qeth_card* %0, %struct.qeth_routing_info* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qeth_routing_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qeth_routing_info* %1, %struct.qeth_routing_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %15 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %12, align 8
  %18 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @NO_ROUTER, align 4
  %26 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %27 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %76

28:                                               ; preds = %5
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @PRIMARY_CONNECTOR, align 4
  %34 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %35 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %75

36:                                               ; preds = %28
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @SECONDARY_CONNECTOR, align 4
  %42 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %43 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %74

44:                                               ; preds = %36
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @PRIMARY_ROUTER, align 4
  %50 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %51 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %73

52:                                               ; preds = %44
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @SECONDARY_ROUTER, align 4
  %58 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %59 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %72

60:                                               ; preds = %52
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @MULTICAST_ROUTER, align 4
  %66 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %67 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %111

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %40
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %24
  %77 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %78 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CARD_STATE_UP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %82, %76
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %91 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @QETH_PROT_IPV4, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %100 = call i32 @qeth_l3_setrouting_v4(%struct.qeth_card* %99)
  store i32 %100, i32* %13, align 4
  br label %109

101:                                              ; preds = %94
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @QETH_PROT_IPV6, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %107 = call i32 @qeth_l3_setrouting_v6(%struct.qeth_card* %106)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %101
  br label %109

109:                                              ; preds = %108, %98
  br label %110

110:                                              ; preds = %109, %88, %82
  br label %111

111:                                              ; preds = %110, %68
  %112 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %113 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  br label %122

120:                                              ; preds = %111
  %121 = load i64, i64* %10, align 8
  br label %122

122:                                              ; preds = %120, %117
  %123 = phi i64 [ %119, %117 ], [ %121, %120 ]
  %124 = trunc i64 %123 to i32
  ret i32 %124
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @qeth_l3_setrouting_v4(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_setrouting_v6(%struct.qeth_card*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
