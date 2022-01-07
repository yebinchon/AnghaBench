; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_print_status_no_portname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_print_status_no_portname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i64* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"Device is a%s card%s%s%s\0Awith link type %s (no portname needed by interface).\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" (level: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Device is a%s card%s%s%s\0Awith link type %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_print_status_no_portname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_print_status_no_portname(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %4 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %16 = call i32 @qeth_get_cardname(%struct.qeth_card* %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %10
  %36 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %10
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i8* [ %39, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %40 ]
  %43 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %54 = call i32 @qeth_get_cardname_short(%struct.qeth_card* %53)
  %55 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %26, i8* %42, i8* %52, i32 %54)
  br label %102

56:                                               ; preds = %1
  %57 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %62 = call i32 @qeth_get_cardname(%struct.qeth_card* %61)
  %63 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %73 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %56
  %82 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %83 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  br label %87

86:                                               ; preds = %56
  br label %87

87:                                               ; preds = %86, %81
  %88 = phi i8* [ %85, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %86 ]
  %89 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %99 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %100 = call i32 @qeth_get_cardname_short(%struct.qeth_card* %99)
  %101 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %62, i8* %72, i8* %88, i8* %98, i32 %100)
  br label %102

102:                                              ; preds = %87, %41
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @qeth_get_cardname(%struct.qeth_card*) #1

declare dso_local i32 @qeth_get_cardname_short(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
