; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_define_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_define_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.DE_eckd_data = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dasd_device = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@DASD_ECKD_CCW_DEFINE_EXTENT = common dso_local global i32 0, align 4
@DASD_BYPASS_CACHE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"0x%x is not a known command\0A\00", align 1
@DASD_SEQ_PRESTAGE = common dso_local global i64 0, align 8
@DASD_SEQ_ACCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw1*, %struct.DE_eckd_data*, i32, i32, i32, %struct.dasd_device*)* @define_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @define_extent(%struct.ccw1* %0, %struct.DE_eckd_data* %1, i32 %2, i32 %3, i32 %4, %struct.dasd_device* %5) #0 {
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca %struct.DE_eckd_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dasd_device*, align 8
  %13 = alloca %struct.dasd_eckd_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %7, align 8
  store %struct.DE_eckd_data* %1, %struct.DE_eckd_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.dasd_device* %5, %struct.dasd_device** %12, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.dasd_device*, %struct.dasd_device** %12, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %23, %struct.dasd_eckd_private** %13, align 8
  %24 = load i32, i32* @DASD_ECKD_CCW_DEFINE_EXTENT, align 4
  %25 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %26 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %28 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %32 = call i64 @__pa(%struct.DE_eckd_data* %31)
  %33 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %34 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %36 = call i32 @memset(%struct.DE_eckd_data* %35, i32 0, i32 40)
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %90 [
    i32 140, label %38
    i32 136, label %38
    i32 144, label %38
    i32 137, label %38
    i32 143, label %38
    i32 142, label %38
    i32 139, label %38
    i32 138, label %38
    i32 141, label %38
    i32 135, label %49
    i32 129, label %49
    i32 131, label %49
    i32 130, label %49
    i32 134, label %64
    i32 133, label %64
    i32 145, label %74
    i32 132, label %74
    i32 128, label %74
  ]

38:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6
  %39 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %40 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %43 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %47 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %97

49:                                               ; preds = %6, %6, %6, %6
  %50 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %51 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 2, i32* %52, align 8
  %53 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %54 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %58 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %61 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %62 = load %struct.dasd_device*, %struct.dasd_device** %12, align 8
  %63 = call i32 @check_XRC(%struct.ccw1* %60, %struct.DE_eckd_data* %61, %struct.dasd_device* %62)
  store i32 %63, i32* %19, align 4
  br label %97

64:                                               ; preds = %6, %6
  %65 = load i8*, i8** @DASD_BYPASS_CACHE, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %68 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %71 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %72 = load %struct.dasd_device*, %struct.dasd_device** %12, align 8
  %73 = call i32 @check_XRC(%struct.ccw1* %70, %struct.DE_eckd_data* %71, %struct.dasd_device* %72)
  store i32 %73, i32* %19, align 4
  br label %97

74:                                               ; preds = %6, %6, %6
  %75 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %76 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 3, i32* %77, align 8
  %78 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %79 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load i8*, i8** @DASD_BYPASS_CACHE, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %84 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %87 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %88 = load %struct.dasd_device*, %struct.dasd_device** %12, align 8
  %89 = call i32 @check_XRC(%struct.ccw1* %86, %struct.DE_eckd_data* %87, %struct.dasd_device* %88)
  store i32 %89, i32* %19, align 4
  br label %97

90:                                               ; preds = %6
  %91 = load %struct.dasd_device*, %struct.dasd_device** %12, align 8
  %92 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %90, %74, %64, %49, %38
  %98 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %99 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store i32 3, i32* %100, align 8
  %101 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %102 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 8453
  br i1 %105, label %118, label %106

106:                                              ; preds = %97
  %107 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %108 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 8455
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %114 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 5968
  br i1 %117, label %118, label %131

118:                                              ; preds = %112, %106, %97
  %119 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %120 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = icmp ult i32 %124, 2
  br i1 %125, label %131, label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %128 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, 64
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %126, %123, %112
  %132 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %133 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %16, align 4
  %138 = udiv i32 %136, %137
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %16, align 4
  %141 = urem i32 %139, %140
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %16, align 4
  %144 = udiv i32 %142, %143
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %16, align 4
  %147 = urem i32 %145, %146
  store i32 %147, i32* %18, align 4
  %148 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %149 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DASD_SEQ_PRESTAGE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %161, label %154

154:                                              ; preds = %131
  %155 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %156 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @DASD_SEQ_ACCESS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %154, %131
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %164 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %162, %166
  %168 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %169 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %161
  %173 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %174 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %15, align 4
  br label %184

179:                                              ; preds = %161
  %180 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %181 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %179, %172
  br label %185

185:                                              ; preds = %184, %154
  %186 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %187 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %186, i32 0, i32 2
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @set_ch_t(i32* %187, i32 %188, i32 %189)
  %191 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %8, align 8
  %192 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %191, i32 0, i32 1
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @set_ch_t(i32* %192, i32 %193, i32 %194)
  %196 = load i32, i32* %19, align 4
  ret i32 %196
}

declare dso_local i64 @__pa(%struct.DE_eckd_data*) #1

declare dso_local i32 @memset(%struct.DE_eckd_data*, i32, i32) #1

declare dso_local i32 @check_XRC(%struct.ccw1*, %struct.DE_eckd_data*, %struct.dasd_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @set_ch_t(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
