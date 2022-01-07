; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_priority_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_priority_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@QETH_CARD_TYPE_OSD = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@QETH_PRIO_Q_ING_TOS = common dso_local global i32 0, align 4
@IP_TOS_NOTIMPORTANT = common dso_local global i32 0, align 4
@IP_TOS_HIGHRELIABILITY = common dso_local global i32 0, align 4
@IP_TOS_HIGHTHROUGHPUT = common dso_local global i32 0, align 4
@IP_TOS_LOWDELAY = common dso_local global i32 0, align 4
@QETH_PRIO_Q_ING_PREC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_get_priority_queue(%struct.qeth_card* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QETH_CARD_TYPE_OSD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20, %13
  %28 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  br label %136

32:                                               ; preds = %20, %4
  %33 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %131 [
    i32 4, label %37
    i32 1, label %130
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %50, %55
  store i32 %56, i32* %5, align 4
  br label %136

57:                                               ; preds = %40, %37
  %58 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %114

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %114

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @QETH_PRIO_Q_ING_TOS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @IP_TOS_NOTIMPORTANT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 3, i32* %5, align 4
  br label %136

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @IP_TOS_HIGHRELIABILITY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 2, i32* %5, align 4
  br label %136

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @IP_TOS_HIGHTHROUGHPUT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %5, align 4
  br label %136

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @IP_TOS_LOWDELAY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %136

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %66
  %103 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @QETH_PRIO_Q_ING_PREC, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = ashr i32 %110, 6
  %112 = sub nsw i32 3, %111
  store i32 %112, i32* %5, align 4
  br label %136

113:                                              ; preds = %102
  br label %125

114:                                              ; preds = %63, %57
  %115 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %116 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 6
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %123, %120, %114
  br label %125

125:                                              ; preds = %124, %113
  %126 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %127 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %5, align 4
  br label %136

130:                                              ; preds = %32
  br label %131

131:                                              ; preds = %32, %130
  %132 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %133 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %125, %109, %100, %94, %88, %82, %46, %27
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
