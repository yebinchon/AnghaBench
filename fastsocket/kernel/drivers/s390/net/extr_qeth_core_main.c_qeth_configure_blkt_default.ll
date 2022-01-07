; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_configure_blkt_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_configure_blkt_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cfgblkt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i8*)* @qeth_configure_blkt_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_configure_blkt_default(%struct.qeth_card* %0, i8* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @SETUP, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 74
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 240
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 75
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 240
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 76
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 241
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 76
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 244
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  br label %56

43:                                               ; preds = %24, %18, %12, %2
  %44 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 250, i32* %47, align 4
  %48 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 5, i32* %51, align 4
  %52 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 15, i32* %55, align 4
  br label %56

56:                                               ; preds = %43, %30
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
