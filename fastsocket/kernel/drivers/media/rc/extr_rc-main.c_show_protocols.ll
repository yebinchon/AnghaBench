; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_show_protocols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_show_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rc_dev = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RC_DRIVER_SCANCODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"allowed - 0x%llx, enabled - 0x%llx\0A\00", align 1
@proto_names = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_protocols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_protocols(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rc_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.rc_dev* @to_rc_dev(%struct.device* %13)
  store %struct.rc_dev* %14, %struct.rc_dev** %8, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %11, align 8
  %16 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %17 = icmp ne %struct.rc_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %120

21:                                               ; preds = %3
  %22 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %23 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RC_DRIVER_SCANCODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %29 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %33 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  br label %42

35:                                               ; preds = %21
  %36 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %37 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = call i32 (...) @ir_raw_get_allowed_protocols()
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %35, %27
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %46)
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %101, %42
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @proto_names, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @proto_names, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %56, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %53
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @proto_names, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i8*, i8** %11, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %11, align 8
  br label %100

77:                                               ; preds = %53
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @proto_names, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %78, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %77
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @proto_names, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** %11, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %87, %77
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %48

104:                                              ; preds = %48
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = icmp ne i8* %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %110, i8** %11, align 8
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i8*, i8** %11, align 8
  store i8 10, i8* %112, align 1
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8*, i8** %7, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %111, %18
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

declare dso_local i32 @ir_raw_get_allowed_protocols(...) #1

declare dso_local i32 @IR_dprintk(i32, i8*, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
