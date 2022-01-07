; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_b3_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_b3_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"disconnect_b3_req\00", align 1
@_WRONG_IDENTIFIER = common dso_local global i64 0, align 8
@_WRONG_STATE = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i64 0, align 8
@OUTG_CON_PENDING = common dso_local global i64 0, align 8
@INC_CON_PENDING = common dso_local global i64 0, align 8
@INC_ACT_PENDING = common dso_local global i64 0, align 8
@OUTG_DIS_PENDING = common dso_local global i64 0, align 8
@B3_TRANSPARENT = common dso_local global i32 0, align 4
@B3_T30 = common dso_local global i32 0, align 4
@B3_T30_WITH_EXTENSIONS = common dso_local global i32 0, align 4
@N_DISC = common dso_local global i32 0, align 4
@_DISCONNECT_B3_R = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*, %struct.TYPE_16__*)* @disconnect_b3_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect_b3_req(i32 %0, i64 %1, %struct.TYPE_15__* %2, %struct.TYPE_14__* %3, i32* %4, %struct.TYPE_16__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %13, align 8
  %17 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @dbug(i32 1, i32 %17)
  %19 = load i64, i64* @_WRONG_IDENTIFIER, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 16
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %15, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %156

25:                                               ; preds = %6
  %26 = load i64, i64* %15, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %156

28:                                               ; preds = %25
  %29 = load i64, i64* @_WRONG_STATE, align 8
  store i64 %29, i64* %14, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %15, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CONNECTED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %65, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OUTG_CON_PENDING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INC_CON_PENDING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @INC_ACT_PENDING, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %155

65:                                               ; preds = %56, %47, %38, %28
  %66 = load i64, i64* @OUTG_DIS_PENDING, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %15, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %66, i64* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @channel_request_xon(%struct.TYPE_14__* %72, i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = call i32 @channel_xmit_xon(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %65
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @B3_TRANSPARENT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @B3_T30, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @B3_T30_WITH_EXTENSIONS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102, %96, %90
  %109 = load i64, i64* %15, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  store i32 0, i32* %7, align 4
  br label %165

115:                                              ; preds = %102, %65
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @cleanup_ncci_data(%struct.TYPE_14__* %116, i64 %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %148

128:                                              ; preds = %123, %115
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 0
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %16, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 3
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = call i32 @add_d(%struct.TYPE_14__* %136, i64 %141, i32* %145)
  br label %147

147:                                              ; preds = %135, %128
  br label %148

148:                                              ; preds = %147, %123
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %150 = load i32, i32* @N_DISC, align 4
  %151 = load i64, i64* %15, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @nl_req_ncci(%struct.TYPE_14__* %149, i32 %150, i32 %152)
  br label %154

154:                                              ; preds = %148
  store i32 1, i32* %7, align 4
  br label %165

155:                                              ; preds = %56
  br label %156

156:                                              ; preds = %155, %25, %6
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* @_DISCONNECT_B3_R, align 4
  %159 = load i32, i32* @CONFIRM, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %8, align 4
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i32 @sendf(i32* %157, i32 %160, i32 %161, i64 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %163)
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %156, %154, %108
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @channel_request_xon(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @channel_xmit_xon(%struct.TYPE_14__*) #1

declare dso_local i32 @cleanup_ncci_data(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @add_d(%struct.TYPE_14__*, i64, i32*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sendf(i32*, i32, i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
