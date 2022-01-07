; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_analyze_link_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_analyze_link_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32, i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Analyze Remote Fault\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Analyze TX Fault\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Analyze UNKNOWN\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Link changed:[%x %x]->%x\0A\00", align 1
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@LED_MODE_OFF = common dso_local global i32 0, align 4
@LED_MODE_OPER = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@PERIODIC_FLAGS_LINK_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*, i32, i32, i32, i32)* @bnx2x_analyze_link_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_analyze_link_error(%struct.link_params* %0, %struct.link_vars* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.link_params*, align 8
  %9 = alloca %struct.link_vars*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnx2x*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %8, align 8
  store %struct.link_vars* %1, %struct.link_vars** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.link_params*, %struct.link_params** %8, align 8
  %18 = getelementptr inbounds %struct.link_params, %struct.link_params* %17, i32 0, i32 1
  %19 = load %struct.bnx2x*, %struct.bnx2x** %18, align 8
  store %struct.bnx2x* %19, %struct.bnx2x** %14, align 8
  %20 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %21 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %16, align 4
  %30 = xor i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %138

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 128, label %38
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @NETIF_MSG_LINK, align 4
  %37 = call i32 (i32, i8*, ...) @DP(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @NETIF_MSG_LINK, align 4
  %40 = call i32 (i32, i8*, ...) @DP(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @NETIF_MSG_LINK, align 4
  %43 = call i32 (i32, i8*, ...) @DP(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38, %35
  %45 = load i32, i32* @NETIF_MSG_LINK, align 4
  %46 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %47 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i32, i8*, ...) @DP(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %44
  %55 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %58 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %63 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %67 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %70 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %74 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %75 = load %struct.link_params*, %struct.link_params** %8, align 8
  %76 = getelementptr inbounds %struct.link_params, %struct.link_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %74, %79
  %81 = call i32 @REG_WR(%struct.bnx2x* %73, i64 %80, i32 1)
  %82 = load i32, i32* @LED_MODE_OFF, align 4
  store i32 %82, i32* %15, align 4
  br label %113

83:                                               ; preds = %44
  %84 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %85 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %86 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %12, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %92 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %96 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %100 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @LED_MODE_OPER, align 4
  store i32 %103, i32* %15, align 4
  %104 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %105 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %106 = load %struct.link_params*, %struct.link_params** %8, align 8
  %107 = getelementptr inbounds %struct.link_params, %struct.link_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %105, %110
  %112 = call i32 @REG_WR(%struct.bnx2x* %104, i64 %111, i32 0)
  br label %113

113:                                              ; preds = %83, %54
  %114 = load %struct.link_params*, %struct.link_params** %8, align 8
  %115 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %116 = call i32 @bnx2x_sync_link(%struct.link_params* %114, %struct.link_vars* %115)
  %117 = load %struct.link_params*, %struct.link_params** %8, align 8
  %118 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @SPEED_10000, align 4
  %121 = call i32 @bnx2x_set_led(%struct.link_params* %117, %struct.link_vars* %118, i32 %119, i32 %120)
  %122 = load %struct.link_params*, %struct.link_params** %8, align 8
  %123 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %124 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bnx2x_update_mng(%struct.link_params* %122, i32 %125)
  %127 = load i32, i32* @PERIODIC_FLAGS_LINK_EVENT, align 4
  %128 = load %struct.link_vars*, %struct.link_vars** %9, align 8
  %129 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %113
  %135 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %136 = call i32 @bnx2x_notify_link_changed(%struct.bnx2x* %135)
  br label %137

137:                                              ; preds = %134, %113
  store i32 1, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %32
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_sync_link(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_set_led(%struct.link_params*, %struct.link_vars*, i32, i32) #1

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_notify_link_changed(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
