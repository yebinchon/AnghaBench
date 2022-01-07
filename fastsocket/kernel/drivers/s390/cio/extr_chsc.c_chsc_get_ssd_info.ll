; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_get_ssd_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_get_ssd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_ssd_info = type { i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel_id = type { i32, i32 }
%struct.chsc_ssd_area = type { i64, i32, i32, i32*, i32*, i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"chsc: ssd failed for 0.%x.%04x (rc=%04x)\0A\00", align 1
@SUBCHANNEL_TYPE_IO = common dso_local global i64 0, align 8
@SUBCHANNEL_TYPE_MSG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_get_ssd_info(i64 %0, %struct.chsc_ssd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca %struct.chsc_ssd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.chsc_ssd_area*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.subchannel_id* %4 to i64*
  store i64 %0, i64* %12, align 4
  store %struct.chsc_ssd_info* %1, %struct.chsc_ssd_info** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @GFP_DMA, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @get_zeroed_page(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %174

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = inttoptr i64 %23 to %struct.chsc_ssd_area*
  store %struct.chsc_ssd_area* %24, %struct.chsc_ssd_area** %7, align 8
  %25 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %26 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %25, i32 0, i32 10
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 16, i32* %27, align 4
  %28 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %29 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 4, i32* %30, align 4
  %31 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %34 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %38 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %42 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %44 = call i32 @chsc(%struct.chsc_ssd_area* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %22
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  store i32 %57, i32* %9, align 4
  br label %170

58:                                               ; preds = %22
  %59 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %60 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @chsc_error_from_response(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %72 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %70, i32 %74)
  br label %170

76:                                               ; preds = %58
  %77 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %78 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %170

84:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  %85 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %5, align 8
  %86 = call i32 @memset(%struct.chsc_ssd_info* %85, i32 0, i32 24)
  %87 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %88 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SUBCHANNEL_TYPE_IO, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %94 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SUBCHANNEL_TYPE_MSG, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %170

99:                                               ; preds = %92, %84
  %100 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %101 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %5, align 8
  %104 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %106 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %5, align 8
  %109 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %166, %99
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %169

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = ashr i32 128, %114
  store i32 %115, i32* %11, align 4
  %116 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %117 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %113
  %123 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %5, align 8
  %124 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = call i32 @chp_id_init(%struct.TYPE_6__* %128)
  %130 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %131 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %5, align 8
  %138 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 4
  br label %144

144:                                              ; preds = %122, %113
  %145 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %146 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load %struct.chsc_ssd_area*, %struct.chsc_ssd_area** %7, align 8
  %153 = getelementptr inbounds %struct.chsc_ssd_area, %struct.chsc_ssd_area* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %5, align 8
  %160 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %165

165:                                              ; preds = %151, %144
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %110

169:                                              ; preds = %110
  br label %170

170:                                              ; preds = %169, %98, %81, %66, %56
  %171 = load i64, i64* %6, align 8
  %172 = call i32 @free_page(i64 %171)
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %19
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @chsc(%struct.chsc_ssd_area*) #1

declare dso_local i32 @chsc_error_from_response(i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.chsc_ssd_info*, i32, i32) #1

declare dso_local i32 @chp_id_init(%struct.TYPE_6__*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
