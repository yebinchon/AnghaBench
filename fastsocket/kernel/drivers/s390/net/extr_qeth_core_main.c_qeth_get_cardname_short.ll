; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_cardname_short.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_cardname_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"GuestLAN QDIO\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GuestLAN Hiper\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"GuestLAN OSM\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"GuestLAN OSX\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"OSD_100\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HSTR\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"OSD_1000\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"OSD_10GIG\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"OSD_FE_LANE\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"OSD_TR_LANE\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"OSD_GbE_LANE\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"OSD_ATM_LANE\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"OSD_Express\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"HiperSockets\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"OSN\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"OSM_1000\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"OSX_10GIG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qeth_get_cardname_short(%struct.qeth_card* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %18 [
    i32 139, label %14
    i32 140, label %15
    i32 138, label %16
    i32 136, label %17
  ]

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %43

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %43

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %43

17:                                               ; preds = %9
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %43

18:                                               ; preds = %9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %42 [
    i32 139, label %24
    i32 140, label %38
    i32 137, label %39
    i32 138, label %40
    i32 136, label %41
  ]

24:                                               ; preds = %19
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %37 [
    i32 134, label %29
    i32 132, label %30
    i32 133, label %31
    i32 135, label %32
    i32 130, label %33
    i32 128, label %34
    i32 129, label %35
    i32 131, label %36
  ]

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %43

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %43

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %43

32:                                               ; preds = %24
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %43

33:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %43

34:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %43

35:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %43

36:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %43

37:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %43

38:                                               ; preds = %19
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %43

39:                                               ; preds = %19
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %43

40:                                               ; preds = %19
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %43

41:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %43

42:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %18, %17, %16, %15, %14
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
