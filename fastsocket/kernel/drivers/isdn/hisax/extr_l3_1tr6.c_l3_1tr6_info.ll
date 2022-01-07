; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32* }

@WE6_chargingInfo = common dso_local global i32 0, align 4
@CC_CHARGE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@L3_DEB_CHARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"charging info %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"charging info not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_info(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca [32 x i8], align 16
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %12, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WE6_chargingInfo, align 4
  %23 = call i32* @findie(i32* %18, i32 %21, i32 %22, i32 6)
  store i32* %23, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %97

25:                                               ; preds = %3
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @iecpy(i8* %26, i32* %27, i32 1)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %25
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %32 = call i32 @strlen(i8* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 10
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 15
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %58 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %61 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)** %64, align 8
  %66 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %67 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* @CC_CHARGE, align 4
  %70 = load i32, i32* @INDICATION, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %73 = call i32 %65(%struct.TYPE_7__* %68, i32 %71, %struct.l3_process* %72)
  br label %74

74:                                               ; preds = %55, %48
  %75 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %76 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @L3_DEB_CHARGE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %74
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %86 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %87 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %92 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %95 = call i32 @l3_debug(%struct.TYPE_7__* %93, i8* %94)
  br label %96

96:                                               ; preds = %84, %74
  br label %113

97:                                               ; preds = %3
  %98 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %99 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @L3_DEB_CHARGE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %109 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = call i32 @l3_debug(%struct.TYPE_7__* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %97
  br label %113

113:                                              ; preds = %112, %96
  %114 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %115 = call i32 @dev_kfree_skb(%struct.sk_buff* %114)
  ret void
}

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @iecpy(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @l3_debug(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
