; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_path_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_path_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.dasd_device*)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PE_PATH_GONE = common dso_local global i32 0, align 4
@PE_PATH_AVAILABLE = common dso_local global i32 0, align 4
@PE_PATHGROUP_ESTABLISHED = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Pathgroup re-established\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_path_event(%struct.ccw_device* %0, i32* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dasd_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = call %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %9)
  store %struct.dasd_device* %10, %struct.dasd_device** %8, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %12 = call i64 @IS_ERR(%struct.dasd_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %167

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %161, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %164

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 128, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PE_PATH_GONE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %19
  %31 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %45 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %30
  %59 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %60 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %66 = call i32 @dasd_generic_last_path_gone(%struct.dasd_device* %65)
  br label %67

67:                                               ; preds = %64, %58, %30
  br label %68

68:                                               ; preds = %67, %19
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PE_PATH_AVAILABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %81 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %79
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %7, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %88 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %7, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %95 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %93
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %101 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %106 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %105)
  br label %107

107:                                              ; preds = %77, %68
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PE_PATHGROUP_ESTABLISHED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %107
  %117 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %118 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %116
  %125 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %126 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %135 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 4
  %139 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %140 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %139)
  br label %141

141:                                              ; preds = %132, %124, %116
  %142 = load i32, i32* @DBF_WARNING, align 4
  %143 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %144 = call i32 @DBF_DEV_EVENT(i32 %142, %struct.dasd_device* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %146 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %148, align 8
  %150 = icmp ne i32 (%struct.dasd_device*)* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %141
  %152 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %153 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %155, align 8
  %157 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %158 = call i32 %156(%struct.dasd_device* %157)
  br label %159

159:                                              ; preds = %151, %141
  br label %160

160:                                              ; preds = %159, %107
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %16

164:                                              ; preds = %16
  %165 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %166 = call i32 @dasd_put_device(%struct.dasd_device* %165)
  br label %167

167:                                              ; preds = %164, %14
  ret void
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_generic_last_path_gone(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
