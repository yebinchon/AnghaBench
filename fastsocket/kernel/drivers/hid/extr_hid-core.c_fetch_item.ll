; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_fetch_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_fetch_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_item = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@HID_ITEM_TAG_LONG = common dso_local global i32 0, align 4
@HID_ITEM_FORMAT_LONG = common dso_local global i32 0, align 4
@HID_ITEM_FORMAT_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.hid_item*)* @fetch_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_item(i32* %0, i32* %1, %struct.hid_item* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hid_item*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.hid_item* %2, %struct.hid_item** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = ptrtoint i32* %9 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %154

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 2
  %23 = and i32 %22, 3
  %24 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %25 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 15
  %29 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %30 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %32 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HID_ITEM_TAG_LONG, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %17
  %37 = load i32, i32* @HID_ITEM_FORMAT_LONG, align 4
  %38 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %39 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = icmp slt i64 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  br label %154

48:                                               ; preds = %36
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %5, align 8
  %51 = load i32, i32* %49, align 4
  %52 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %53 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %54, align 4
  %57 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %58 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %66 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %48
  store i32* null, i32** %4, align 8
  br label %154

71:                                               ; preds = %48
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %74 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32* %72, i32** %75, align 8
  %76 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %77 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %5, align 8
  store i32* %82, i32** %4, align 8
  br label %154

83:                                               ; preds = %17
  %84 = load i32, i32* @HID_ITEM_FORMAT_SHORT, align 4
  %85 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %86 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 3
  %89 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %90 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %92 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %153 [
    i32 0, label %94
    i32 1, label %96
    i32 2, label %113
    i32 3, label %131
  ]

94:                                               ; preds = %83
  %95 = load i32*, i32** %5, align 8
  store i32* %95, i32** %4, align 8
  br label %154

96:                                               ; preds = %83
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = icmp slt i64 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32* null, i32** %4, align 8
  br label %154

105:                                              ; preds = %96
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %5, align 8
  %108 = load i32, i32* %106, align 4
  %109 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %110 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 8
  %112 = load i32*, i32** %5, align 8
  store i32* %112, i32** %4, align 8
  br label %154

113:                                              ; preds = %83
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = icmp slt i64 %119, 2
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  store i32* null, i32** %4, align 8
  br label %154

122:                                              ; preds = %113
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @get_unaligned_le16(i32* %123)
  %125 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %126 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32* %129, i32** %5, align 8
  %130 = load i32*, i32** %5, align 8
  store i32* %130, i32** %4, align 8
  br label %154

131:                                              ; preds = %83
  %132 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %133 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = ptrtoint i32* %136 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = icmp slt i64 %141, 4
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  store i32* null, i32** %4, align 8
  br label %154

144:                                              ; preds = %131
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @get_unaligned_le32(i32* %145)
  %147 = load %struct.hid_item*, %struct.hid_item** %7, align 8
  %148 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32* %151, i32** %5, align 8
  %152 = load i32*, i32** %5, align 8
  store i32* %152, i32** %4, align 8
  br label %154

153:                                              ; preds = %83
  store i32* null, i32** %4, align 8
  br label %154

154:                                              ; preds = %153, %144, %143, %122, %121, %105, %104, %94, %71, %70, %47, %16
  %155 = load i32*, i32** %4, align 8
  ret i32* %155
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
