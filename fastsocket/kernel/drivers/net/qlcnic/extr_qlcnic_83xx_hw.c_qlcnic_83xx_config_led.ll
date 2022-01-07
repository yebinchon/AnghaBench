; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8** }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i8** }

@QLCNIC_CMD_GET_LED_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Get led config failed.\0A\00", align 1
@QLC_83XX_LED_CONFIG = common dso_local global i32 0, align 4
@QLCNIC_CMD_SET_LED_CONFIG = common dso_local global i32 0, align 4
@QLC_83XX_ENABLE_BEACON = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Set led config failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Restoring led config failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %104

14:                                               ; preds = %3
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = load i32, i32* @QLCNIC_CMD_GET_LED_CONFIG, align 4
  %17 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %15, i32 %16)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %18, %struct.qlcnic_cmd_args* %8)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %101

28:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %40, i8** %48, align 8
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %29

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52
  %54 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %55 = load i32, i32* @QLC_83XX_LED_CONFIG, align 4
  %56 = call i32 @LSW(i32 %55)
  %57 = shl i32 %56, 16
  %58 = load i32, i32* @QLC_83XX_LED_CONFIG, align 4
  %59 = call i32 @LSW(i32 %58)
  %60 = or i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %9, align 8
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %64 = load i32, i32* @QLCNIC_CMD_SET_LED_CONFIG, align 4
  %65 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %63, i32 %64)
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %66, i8** %70, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 3
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %53
  %84 = load i8*, i8** @QLC_83XX_ENABLE_BEACON, align 8
  %85 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 4
  store i8* %84, i8** %88, align 8
  br label %89

89:                                               ; preds = %83, %53
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %91 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %90, %struct.qlcnic_cmd_args* %8)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %22
  %102 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %169

104:                                              ; preds = %3
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %106 = load i32, i32* @QLCNIC_CMD_SET_LED_CONFIG, align 4
  %107 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %105, i32 %106)
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %109 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  store i8* %114, i8** %118, align 8
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 2
  store i8* %125, i8** %129, align 8
  %130 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %131 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 2
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 3
  store i8* %136, i8** %140, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %104
  %144 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %145 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 3
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 4
  store i8* %150, i8** %154, align 8
  br label %155

155:                                              ; preds = %143, %104
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %157 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %156, %struct.qlcnic_cmd_args* %8)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %162 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = call i32 @dev_err(i32* %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %160, %155
  %167 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %166, %101
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @LSW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
