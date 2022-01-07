; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.antsel_info = type { i32, i32, i32, i32, i8*, %struct.TYPE_6__*, %struct.brcms_c_info* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.brcms_c_info = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_sprom }
%struct.ssb_sprom = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ANTSEL_NA = common dso_local global i8* null, align 8
@ANTSEL_2x3 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"antsel_attach: 2o3 board cfg invalid\0A\00", align 1
@BFL2_2X4_DIV = common dso_local global i32 0, align 4
@ANTSEL_2x4 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.antsel_info* @brcms_c_antsel_attach(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.antsel_info*, align 8
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.antsel_info*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.ssb_sprom* %13, %struct.ssb_sprom** %5, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.antsel_info* @kzalloc(i32 40, i32 %14)
  store %struct.antsel_info* %15, %struct.antsel_info** %4, align 8
  %16 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %17 = icmp ne %struct.antsel_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.antsel_info* null, %struct.antsel_info** %2, align 8
  br label %152

19:                                               ; preds = %1
  %20 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %21 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %22 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %21, i32 0, i32 6
  store %struct.brcms_c_info* %20, %struct.brcms_c_info** %22, align 8
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %27 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %26, i32 0, i32 5
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  %28 = load i8*, i8** @ANTSEL_NA, align 8
  %29 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %30 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %32 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %34 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %37 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %39 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %38, i32 0, i32 5
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 4
  br i1 %43, label %44, label %95

44:                                               ; preds = %19
  %45 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %46 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %44
  %50 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %51 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %93 [
    i32 130, label %53
    i32 129, label %53
    i32 128, label %53
  ]

53:                                               ; preds = %49, %49, %49
  %54 = load i8*, i8** @ANTSEL_2x3, align 8
  %55 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %56 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %58 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %63 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 7
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %53
  %67 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %68 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %92

69:                                               ; preds = %61
  %70 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %71 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %76 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69
  %80 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %81 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %91

82:                                               ; preds = %74
  %83 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %84 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %86 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call i32 @brcms_err(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %82, %79
  br label %92

92:                                               ; preds = %91, %66
  br label %94

93:                                               ; preds = %49
  br label %94

94:                                               ; preds = %93, %92
  br label %135

95:                                               ; preds = %44, %19
  %96 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %97 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %96, i32 0, i32 5
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %118

102:                                              ; preds = %95
  %103 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %104 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 7
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %109 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i8*, i8** @ANTSEL_2x3, align 8
  %114 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %115 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %117 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %134

118:                                              ; preds = %107, %102, %95
  %119 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %120 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %119, i32 0, i32 5
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @BFL2_2X4_DIV, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load i8*, i8** @ANTSEL_2x4, align 8
  %129 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %130 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %132 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %118
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134, %94
  %136 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %137 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %140 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @brcms_b_antsel_type_set(%struct.TYPE_8__* %138, i8* %141)
  %143 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %144 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %145 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %144, i32 0, i32 3
  %146 = call i32 @brcms_c_antsel_init_cfg(%struct.antsel_info* %143, i32* %145, i32 1)
  %147 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %148 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %149 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %148, i32 0, i32 2
  %150 = call i32 @brcms_c_antsel_init_cfg(%struct.antsel_info* %147, i32* %149, i32 1)
  %151 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  store %struct.antsel_info* %151, %struct.antsel_info** %2, align 8
  br label %152

152:                                              ; preds = %135, %18
  %153 = load %struct.antsel_info*, %struct.antsel_info** %2, align 8
  ret %struct.antsel_info* %153
}

declare dso_local %struct.antsel_info* @kzalloc(i32, i32) #1

declare dso_local i32 @brcms_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @brcms_b_antsel_type_set(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @brcms_c_antsel_init_cfg(%struct.antsel_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
