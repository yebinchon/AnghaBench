; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-proc.c_rtc_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-proc.c_rtc_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.rtc_device* }
%struct.rtc_device = type { %struct.TYPE_4__, %struct.rtc_class_ops* }
%struct.TYPE_4__ = type { i32 }
%struct.rtc_class_ops = type { i32 (i32, %struct.seq_file*)* }
%struct.rtc_wkalrm = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }
%struct.rtc_time = type { i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"rtc_time\09: %02d:%02d:%02d\0Artc_date\09: %04d-%02d-%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"alrm_time\09: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"**:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"**\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"alrm_date\09: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%04d-\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"****-\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02d-\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"**-\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"alarm_IRQ\09: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"alrm_pending\09: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"24hr\09\09: yes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rtc_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca %struct.rtc_class_ops*, align 8
  %8 = alloca %struct.rtc_wkalrm, align 8
  %9 = alloca %struct.rtc_time, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.rtc_device*, %struct.rtc_device** %11, align 8
  store %struct.rtc_device* %12, %struct.rtc_device** %6, align 8
  %13 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %14 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %13, i32 0, i32 1
  %15 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %14, align 8
  store %struct.rtc_class_ops* %15, %struct.rtc_class_ops** %7, align 8
  %16 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %17 = call i32 @rtc_read_time(%struct.rtc_device* %16, %struct.rtc_time* %9)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1900
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %27, i64 %30, i64 %33, i32 %35)
  br label %37

37:                                               ; preds = %20, %2
  %38 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %39 = call i32 @rtc_read_alarm(%struct.rtc_device* %38, %struct.rtc_wkalrm* %8)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %158

42:                                               ; preds = %37
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp ule i32 %48, 24
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %59

56:                                               ; preds = %42
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp ule i32 %63, 59
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %74

71:                                               ; preds = %59
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %65
  %75 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = icmp ule i32 %78, 59
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %84)
  br label %89

86:                                               ; preds = %74
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %92 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = icmp ule i32 %95, 200
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1900
  %103 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %102)
  br label %107

104:                                              ; preds = %89
  %105 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %97
  %108 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp ule i32 %111, 11
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  %119 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %118)
  br label %123

120:                                              ; preds = %107
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %113
  %124 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = icmp ule i32 %132, 31
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %138)
  br label %143

140:                                              ; preds = %128, %123
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %134
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %150 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %157 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %143, %37
  %159 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %160 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %161 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %7, align 8
  %162 = getelementptr inbounds %struct.rtc_class_ops, %struct.rtc_class_ops* %161, i32 0, i32 0
  %163 = load i32 (i32, %struct.seq_file*)*, i32 (i32, %struct.seq_file*)** %162, align 8
  %164 = icmp ne i32 (i32, %struct.seq_file*)* %163, null
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %7, align 8
  %167 = getelementptr inbounds %struct.rtc_class_ops, %struct.rtc_class_ops* %166, i32 0, i32 0
  %168 = load i32 (i32, %struct.seq_file*)*, i32 (i32, %struct.seq_file*)** %167, align 8
  %169 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %170 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = call i32 %168(i32 %172, %struct.seq_file* %173)
  br label %175

175:                                              ; preds = %165, %158
  ret i32 0
}

declare dso_local i32 @rtc_read_time(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @rtc_read_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
