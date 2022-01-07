; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_invert_screen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_invert_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i16*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invert_screen(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i16* @screenpos(%struct.vc_data* %16, i32 %17, i32 %18)
  store i16* %19, i16** %9, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.vc_data*, i16*, i32)*, i32 (%struct.vc_data*, i16*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.vc_data*, i16*, i32)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.vc_data*, i16*, i32)*, i32 (%struct.vc_data*, i16*, i32)** %30, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %33 = load i16*, i16** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 %31(%struct.vc_data* %32, i16* %33, i32 %34)
  br label %115

36:                                               ; preds = %4
  %37 = load i16*, i16** %9, align 8
  %38 = bitcast i16* %37 to i32*
  store i32* %38, i32** %10, align 8
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @scr_readw(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = xor i32 %52, 2048
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @scr_writew(i32 %54, i32* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %10, align 8
  br label %45

59:                                               ; preds = %45
  br label %114

60:                                               ; preds = %36
  %61 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 256
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @scr_readw(i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 4607
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 57344
  %77 = ashr i32 %76, 4
  %78 = or i32 %74, %77
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 3584
  %81 = shl i32 %80, 4
  %82 = or i32 %78, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @scr_writew(i32 %83, i32* %84)
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  br label %66

88:                                               ; preds = %66
  br label %113

89:                                               ; preds = %60
  br label %90

90:                                               ; preds = %94, %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @scr_readw(i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, 35071
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %99, 28672
  %101 = ashr i32 %100, 4
  %102 = or i32 %98, %101
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, 1792
  %105 = shl i32 %104, 4
  %106 = or i32 %102, %105
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @scr_writew(i32 %107, i32* %108)
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %10, align 8
  br label %90

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %88
  br label %114

114:                                              ; preds = %113, %59
  br label %115

115:                                              ; preds = %114, %26
  %116 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %117 = call i64 @DO_UPDATE(%struct.vc_data* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %121 = load i16*, i16** %9, align 8
  %122 = ptrtoint i16* %121 to i64
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @do_update_region(%struct.vc_data* %120, i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %115
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i16* @screenpos(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @scr_writew(i32, i32*) #1

declare dso_local i64 @DO_UPDATE(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
