; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_print_status_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_print_status_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1
@QETH_MCL_LENGTH = common dso_local global i64 0, align 8
@_ebcasc = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_print_status_message(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %4 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %131 [
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
    i32 131, label %40
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %7
  %16 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sprintf(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %31)
  %33 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @QETH_MCL_LENGTH, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 0, i32* %38, align 4
  br label %142

39:                                               ; preds = %7
  br label %40

40:                                               ; preds = %1, %39
  %41 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %130

55:                                               ; preds = %46, %40
  %56 = load i64*, i64** @_ebcasc, align 8
  %57 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %56, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i8
  %67 = sext i8 %66 to i32
  %68 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %67, i32* %72, align 4
  %73 = load i64*, i64** @_ebcasc, align 8
  %74 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %73, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i8
  %84 = sext i8 %83 to i32
  %85 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %84, i32* %89, align 4
  %90 = load i64*, i64** @_ebcasc, align 8
  %91 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %90, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i8
  %101 = sext i8 %100 to i32
  %102 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %101, i32* %106, align 4
  %107 = load i64*, i64** @_ebcasc, align 8
  %108 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %109 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %107, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i8
  %118 = sext i8 %117 to i32
  %119 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %120 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  store i32 %118, i32* %123, align 4
  %124 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %125 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @QETH_MCL_LENGTH, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %55, %46
  br label %142

131:                                              ; preds = %1
  %132 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %133 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = bitcast i32* %136 to i8*
  %138 = load i64, i64* @QETH_MCL_LENGTH, align 8
  %139 = add i64 %138, 1
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memset(i8* %137, i32 0, i32 %140)
  br label %142

142:                                              ; preds = %131, %130, %15
  %143 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %144 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %150 = call i32 @qeth_print_status_with_portname(%struct.qeth_card* %149)
  br label %154

151:                                              ; preds = %142
  %152 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %153 = call i32 @qeth_print_status_no_portname(%struct.qeth_card* %152)
  br label %154

154:                                              ; preds = %151, %148
  ret void
}

declare dso_local i32 @sprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @qeth_print_status_with_portname(%struct.qeth_card*) #1

declare dso_local i32 @qeth_print_status_no_portname(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
