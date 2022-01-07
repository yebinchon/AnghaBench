; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"disconnect_req\00", align 1
@_WRONG_IDENTIFIER = common dso_local global i64 0, align 8
@INC_CON_PENDING = common dso_local global i64 0, align 8
@INC_CON_ALERT = common dso_local global i64 0, align 8
@max_appl = common dso_local global i64 0, align 8
@application = common dso_local global %struct.TYPE_18__* null, align 8
@_DISCONNECT_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@OUTG_DIS_PENDING = common dso_local global i8* null, align 8
@INC_DIS_PENDING = common dso_local global i64 0, align 8
@HANGUP = common dso_local global i32 0, align 4
@REMOVE = common dso_local global i32 0, align 4
@_DISCONNECT_R = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @disconnect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect_req(i32 %0, i64 %1, i32* %2, %struct.TYPE_17__* %3, %struct.TYPE_18__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @dbug(i32 1, i32 %16)
  %18 = load i64, i64* @_WRONG_IDENTIFIER, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %21, label %139

21:                                               ; preds = %6
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INC_CON_PENDING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INC_CON_ALERT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %27, %21
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = call i32 @clear_c_ind_mask_bit(%struct.TYPE_17__* %34, i64 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %43, align 8
  store i64 0, i64* %15, align 8
  br label %44

44:                                               ; preds = %61, %33
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @max_appl, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @test_c_ind_mask_bit(%struct.TYPE_17__* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** @application, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i64 %55
  %57 = load i32, i32* @_DISCONNECT_I, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @sendf(%struct.TYPE_18__* %56, i32 %57, i32 %58, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0)
  br label %60

60:                                               ; preds = %53, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %15, align 8
  br label %44

64:                                               ; preds = %44
  %65 = load i8*, i8** @OUTG_DIS_PENDING, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %27
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %138

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = icmp ne %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %138

80:                                               ; preds = %75
  store i64 0, i64* %14, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 255
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @INC_DIS_PENDING, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = call i32 @add_ai(%struct.TYPE_17__* %93, i32* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = load i32, i32* @HANGUP, align 4
  %99 = call i32 @sig_req(%struct.TYPE_17__* %97, i32 %98, i32 0)
  %100 = load i8*, i8** @OUTG_DIS_PENDING, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  store i32 1, i32* %7, align 4
  br label %152

104:                                              ; preds = %86
  br label %137

105:                                              ; preds = %80
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %105
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %136, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %118 = call i32 @mixer_remove(%struct.TYPE_17__* %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %120 = load i32, i32* @REMOVE, align 4
  %121 = call i32 @nl_req_ncci(%struct.TYPE_17__* %119, i32 %120, i32 0)
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = load i32, i32* @_DISCONNECT_R, align 4
  %124 = load i32, i32* @CONFIRM, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %8, align 4
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @sendf(%struct.TYPE_18__* %122, i32 %125, i32 %126, i64 %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %130 = load i32, i32* @_DISCONNECT_I, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @sendf(%struct.TYPE_18__* %129, i32 %130, i32 %131, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %133 = load i64, i64* @INC_DIS_PENDING, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %116, %111, %105
  store i32 1, i32* %7, align 4
  br label %152

137:                                              ; preds = %104
  br label %138

138:                                              ; preds = %137, %75, %69
  br label %139

139:                                              ; preds = %138, %6
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %141 = icmp ne %struct.TYPE_18__* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %152

143:                                              ; preds = %139
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %145 = load i32, i32* @_DISCONNECT_R, align 4
  %146 = load i32, i32* @CONFIRM, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %8, align 4
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %14, align 8
  %151 = call i32 @sendf(%struct.TYPE_18__* %144, i32 %147, i32 %148, i64 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %143, %142, %136, %92
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @clear_c_ind_mask_bit(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @test_c_ind_mask_bit(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @sendf(%struct.TYPE_18__*, i32, i32, i64, i8*, i64) #1

declare dso_local i32 @add_ai(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @sig_req(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mixer_remove(%struct.TYPE_17__*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
