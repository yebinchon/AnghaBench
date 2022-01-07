; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_fill_xu_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_fill_xu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_control = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uvc_control_info = type { i32, i32, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_GET_LEN = common dso_local global i32 0, align 4
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"GET_LEN failed on control %pUl/%u (%d).\0A\00", align 1
@UVC_GET_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"GET_INFO failed on control %pUl/%u (%d).\0A\00", align 1
@UVC_CONTROL_GET_MIN = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_MAX = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_RES = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_DEF = common dso_local global i32 0, align 4
@UVC_CONTROL_CAP_GET = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_CUR = common dso_local global i32 0, align 4
@UVC_CONTROL_CAP_SET = common dso_local global i32 0, align 4
@UVC_CONTROL_SET_CUR = common dso_local global i32 0, align 4
@UVC_CONTROL_CAP_AUTOUPDATE = common dso_local global i32 0, align 4
@UVC_CONTROL_AUTO_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"XU control %pUl/%u queried: len %u, flags { get %u set %u auto %u }.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*)* @uvc_ctrl_fill_xu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_fill_xu_info(%struct.uvc_device* %0, %struct.uvc_control* %1, %struct.uvc_control_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %6, align 8
  store %struct.uvc_control_info* %2, %struct.uvc_control_info** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 2, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %187

17:                                               ; preds = %3
  %18 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %19 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %22 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %20, i32 %26, i32 4)
  %28 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %29 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %32 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %34 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %38 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %40 = load i32, i32* @UVC_GET_LEN, align 4
  %41 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %42 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %47 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %50 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @uvc_query_ctrl(%struct.uvc_device* %39, i32 %40, i32 %45, i32 %48, i64 %51, i32* %52, i32 2)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %17
  %57 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %58 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %59 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %62 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, i32, i64, i32, ...) @uvc_trace(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63, i32 %64)
  br label %183

66:                                               ; preds = %17
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @le16_to_cpup(i32* %67)
  %69 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %70 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %72 = load i32, i32* @UVC_GET_INFO, align 4
  %73 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %74 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %79 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %82 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @uvc_query_ctrl(%struct.uvc_device* %71, i32 %72, i32 %77, i32 %80, i64 %83, i32* %84, i32 1)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %66
  %89 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %90 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %91 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %94 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, i32, i64, i32, ...) @uvc_trace(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %92, i64 %95, i32 %96)
  br label %183

98:                                               ; preds = %66
  %99 = load i32, i32* @UVC_CONTROL_GET_MIN, align 4
  %100 = load i32, i32* @UVC_CONTROL_GET_MAX, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UVC_CONTROL_GET_RES, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @UVC_CONTROL_GET_DEF, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @UVC_CONTROL_CAP_GET, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %98
  %113 = load i32, i32* @UVC_CONTROL_GET_CUR, align 4
  br label %115

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  %117 = or i32 %105, %116
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UVC_CONTROL_CAP_SET, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* @UVC_CONTROL_SET_CUR, align 4
  br label %127

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = or i32 %117, %128
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UVC_CONTROL_CAP_AUTOUPDATE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @UVC_CONTROL_AUTO_UPDATE, align 4
  br label %139

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  %141 = or i32 %129, %140
  %142 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %143 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %145 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %146 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %147 = call i32 @uvc_ctrl_fixup_xu_info(%struct.uvc_device* %144, %struct.uvc_control* %145, %struct.uvc_control_info* %146)
  %148 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %149 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %150 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %153 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %156 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %159 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @UVC_CONTROL_GET_CUR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  %166 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %167 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @UVC_CONTROL_SET_CUR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  %174 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %175 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @UVC_CONTROL_AUTO_UPDATE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 1, i32 0
  %182 = call i32 (i32, i8*, i32, i64, i32, ...) @uvc_trace(i32 %148, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %151, i64 %154, i32 %157, i32 %165, i32 %173, i32 %181)
  br label %183

183:                                              ; preds = %139, %88, %56
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @kfree(i32* %184)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %14
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @uvc_query_ctrl(%struct.uvc_device*, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @uvc_ctrl_fixup_xu_info(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
