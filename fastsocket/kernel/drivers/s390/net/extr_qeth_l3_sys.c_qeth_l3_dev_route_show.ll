; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_route_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_route_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qeth_routing_info = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"primary router\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"secondary router\00", align 1
@QETH_BROADCAST_WITHOUT_ECHO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"multicast router+\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"multicast router\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"primary connector+\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"primary connector\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"secondary connector+\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"secondary connector\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_routing_info*, i8*)* @qeth_l3_dev_route_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_route_show(%struct.qeth_card* %0, %struct.qeth_routing_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_routing_info*, align 8
  %7 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_routing_info* %1, %struct.qeth_routing_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %6, align 8
  %9 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %56 [
    i32 130, label %11
    i32 128, label %14
    i32 132, label %17
    i32 131, label %30
    i32 129, label %43
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @QETH_BROADCAST_WITHOUT_ECHO, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %17
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %3
  %31 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QETH_BROADCAST_WITHOUT_ECHO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %59

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  br label %59

43:                                               ; preds = %3
  %44 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @QETH_BROADCAST_WITHOUT_ECHO, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %43
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %3
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %53, %50, %40, %37, %27, %24, %14, %11
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
