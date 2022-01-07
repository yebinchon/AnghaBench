; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_get_bufsize_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_get_bufsize_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"16k\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"24k\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"32k\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"40k\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"64k\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qeth_card*)* @qeth_get_bufsize_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qeth_get_bufsize_str(%struct.qeth_card* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 16384
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 24576
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %32

17:                                               ; preds = %10
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 32768
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 40960
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %32

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %30, %23, %16, %9
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
