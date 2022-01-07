; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_setkeycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ati_remote2 = type { i32, i32** }

@ATI_REMOTE2_PC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@ATI_REMOTE2_MODES = common dso_local global i32 0, align 4
@ati_remote2_key_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32)* @ati_remote2_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote2_setkeycode(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ati_remote2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = call %struct.ati_remote2* @input_get_drvdata(%struct.input_dev* %12)
  store %struct.ati_remote2* %13, %struct.ati_remote2** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 8
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ATI_REMOTE2_PC, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %23 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %117

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @ati_remote2_lookup(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %117

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @KEY_RESERVED, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @KEY_MAX, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %117

50:                                               ; preds = %43
  %51 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %52 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %64 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %62, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @__set_bit(i32 %73, i32 %76)
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %108, %50
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @ATI_REMOTE2_MODES, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @ati_remote2_key_table, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %90 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %117

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %83

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %78

111:                                              ; preds = %78
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__clear_bit(i32 %112, i32 %115)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %111, %102, %47, %36, %27
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.ati_remote2* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @ati_remote2_lookup(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
