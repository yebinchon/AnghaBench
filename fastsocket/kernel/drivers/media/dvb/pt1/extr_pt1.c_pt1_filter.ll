; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.pt1_adapter** }
%struct.pt1_adapter = type { i32, i32*, i32, i32 }
%struct.pt1_buffer_page = type { i32* }

@PT1_NR_UPACKETS = common dso_local global i32 0, align 4
@PT1_NR_ADAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*, %struct.pt1_buffer_page*)* @pt1_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_filter(%struct.pt1* %0, %struct.pt1_buffer_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt1*, align 8
  %5 = alloca %struct.pt1_buffer_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pt1_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.pt1* %0, %struct.pt1** %4, align 8
  store %struct.pt1_buffer_page* %1, %struct.pt1_buffer_page** %5, align 8
  %12 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %5, align 8
  %13 = getelementptr inbounds %struct.pt1_buffer_page, %struct.pt1_buffer_page* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @PT1_NR_UPACKETS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %139

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %128, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PT1_NR_UPACKETS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %131

27:                                               ; preds = %23
  %28 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %5, align 8
  %29 = getelementptr inbounds %struct.pt1_buffer_page, %struct.pt1_buffer_page* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 29
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PT1_NR_ADAPS, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %27
  br label %128

46:                                               ; preds = %41
  %47 = load %struct.pt1*, %struct.pt1** %4, align 8
  %48 = getelementptr inbounds %struct.pt1, %struct.pt1* %47, i32 0, i32 0
  %49 = load %struct.pt1_adapter**, %struct.pt1_adapter*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pt1_adapter*, %struct.pt1_adapter** %49, i64 %51
  %53 = load %struct.pt1_adapter*, %struct.pt1_adapter** %52, align 8
  store %struct.pt1_adapter* %53, %struct.pt1_adapter** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 25
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %60 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %68

61:                                               ; preds = %46
  %62 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %63 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %128

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %58
  %69 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %70 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %11, align 8
  %72 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %73 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 188
  %76 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %77 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 3
  %80 = add nsw i32 %75, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 16
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = ashr i32 %87, 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %95 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 62
  br i1 %97, label %98, label %105

98:                                               ; preds = %68
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %68
  %106 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %107 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = icmp sge i32 %109, 63
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %113 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %115 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = icmp sge i32 %117, 21
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %121 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %120, i32 0, i32 3
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @dvb_dmx_swfilter_packets(i32* %121, i32* %122, i32 21)
  %124 = load %struct.pt1_adapter*, %struct.pt1_adapter** %9, align 8
  %125 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %124, i32 0, i32 2
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %119, %111
  br label %127

127:                                              ; preds = %126, %105
  br label %128

128:                                              ; preds = %127, %66, %45
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %23

131:                                              ; preds = %23
  %132 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %5, align 8
  %133 = getelementptr inbounds %struct.pt1_buffer_page, %struct.pt1_buffer_page* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @PT1_NR_UPACKETS, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 0, i32* %138, align 4
  store i32 1, i32* %3, align 4
  br label %139

139:                                              ; preds = %131, %21
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
