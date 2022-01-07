; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_build_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_build_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, %struct.saa7134_card_ir* }
%struct.saa7134_card_ir = type { i32, i32, i32, i32, i32, i64 }

@SAA7134_GPIO_GPSTATUS1 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"build_key gpio=0x%x mask=0x%x data=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @build_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_key(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.saa7134_card_ir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 1
  %9 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %8, align 8
  store %struct.saa7134_card_ir* %9, %struct.saa7134_card_ir** %4, align 8
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %18 [
    i32 129, label %13
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @SAA7134_GPIO_GPSTATUS1, align 4
  %15 = call i32 @saa_setb(i32 %14, i32 128)
  %16 = load i32, i32* @SAA7134_GPIO_GPSTATUS1, align 4
  %17 = call i32 @saa_clearb(i32 %16, i32 128)
  br label %18

18:                                               ; preds = %1, %13
  %19 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %20 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %21 = call i32 @saa_clearb(i32 %19, i32 %20)
  %22 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %23 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %24 = call i32 @saa_setb(i32 %22, i32 %23)
  %25 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %26 = ashr i32 %25, 2
  %27 = call i32 @saa_readl(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %29 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %34 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %153

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %42 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %18
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %46 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ir_extract_bits(i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %51 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53)
  %55 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %56 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %76 [
    i32 128, label %58
  ]

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %61 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %66 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @rc_keyup(i32 %67)
  br label %75

69:                                               ; preds = %58
  %70 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %71 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @rc_keydown_notimeout(i32 %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %69, %64
  store i32 0, i32* %2, align 4
  br label %153

76:                                               ; preds = %43
  %77 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %78 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %76
  %82 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %83 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %89 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %87, %90
  %92 = icmp ne i32 0, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %86, %81
  %94 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %95 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %101 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %99, %102
  %104 = icmp eq i32 0, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %98, %86
  %106 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %107 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @rc_keydown_notimeout(i32 %108, i32 %109, i32 0)
  br label %116

111:                                              ; preds = %98, %93
  %112 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %113 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @rc_keyup(i32 %114)
  br label %116

116:                                              ; preds = %111, %105
  br label %152

117:                                              ; preds = %76
  %118 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %119 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %125 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %123, %126
  %128 = icmp ne i32 0, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %131 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %137 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %135, %138
  %140 = icmp eq i32 0, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %134, %122
  %142 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %143 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @rc_keydown_notimeout(i32 %144, i32 %145, i32 0)
  %147 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %148 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @rc_keyup(i32 %149)
  br label %151

151:                                              ; preds = %141, %134, %129
  br label %152

152:                                              ; preds = %151, %116
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %75, %38
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @ir_extract_bits(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

declare dso_local i32 @rc_keydown_notimeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
