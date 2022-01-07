; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_send_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_send_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32, i32*, i32*, i32 }

@SE401_REQ_SET_WIDTH = common dso_local global i32 0, align 4
@SE401_REQ_SET_HEIGHT = common dso_local global i32 0, align 4
@SE401_OPERATINGMODE = common dso_local global i32 0, align 4
@FMT_BAYER = common dso_local global i32 0, align 4
@FMT_JANGGU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_se401*, i32, i32)* @se401_send_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se401_send_size(%struct.usb_se401* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_se401*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %16 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %21 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %31 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %29, %19
  %40 = phi i1 [ false, %19 ], [ %38, %29 ]
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %39, %13
  %43 = phi i1 [ false, %13 ], [ %41, %39 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %13

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %128, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %51 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %131

54:                                               ; preds = %48
  %55 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %56 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 2
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %54
  %66 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %67 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 %73, 2
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %65
  %77 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %78 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %85 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %10, align 4
  store i32 64, i32* %8, align 4
  br label %91

91:                                               ; preds = %76, %65, %54
  %92 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %93 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %99, 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %91
  %103 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %104 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %110, 4
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %102
  %114 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %115 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %9, align 4
  %121 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %122 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  store i32 66, i32* %8, align 4
  br label %128

128:                                              ; preds = %113, %102, %91
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %48

131:                                              ; preds = %48
  %132 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %133 = load i32, i32* @SE401_REQ_SET_WIDTH, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %132, i32 %133, i32 %134, i32* null, i32 0)
  %136 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %137 = load i32, i32* @SE401_REQ_SET_HEIGHT, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %136, i32 %137, i32 %138, i32* null, i32 0)
  %140 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %141 = load i32, i32* @SE401_OPERATINGMODE, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @se401_set_feature(%struct.usb_se401* %140, i32 %141, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %146, label %150

146:                                              ; preds = %131
  %147 = load i32, i32* @FMT_BAYER, align 4
  %148 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %149 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  br label %154

150:                                              ; preds = %131
  %151 = load i32, i32* @FMT_JANGGU, align 4
  %152 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %153 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %146
  ret void
}

declare dso_local i32 @se401_sndctrl(i32, %struct.usb_se401*, i32, i32, i32*, i32) #1

declare dso_local i32 @se401_set_feature(%struct.usb_se401*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
