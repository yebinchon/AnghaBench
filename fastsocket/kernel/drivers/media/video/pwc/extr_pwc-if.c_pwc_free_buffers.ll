; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [28 x i8] c"Entering free_buffers(%p).\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Freeing ISO buffer at %p.\0A\00", align 1
@default_fbufs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Freeing frame buffer %d at %p.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Freeing decompression buffer at %p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Freeing image buffer at %p.\0A\00", align 1
@pwc_mbufs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Leaving free_buffers().\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_device*)* @pwc_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwc_free_buffers(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  %3 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  %4 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %5 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.pwc_device* %4)
  %6 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %7 = icmp eq %struct.pwc_device* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %151

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %51, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_ISO_BUFS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %16 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %14
  %25 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %26 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %32)
  %34 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @kfree(%struct.TYPE_4__* %41)
  %43 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %44 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %49, align 8
  br label %50

50:                                               ; preds = %24, %14
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %56 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %112

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %102, %59
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @default_fbufs, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %66 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %64
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %77 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32* %83)
  %85 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %86 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @vfree(i32* %92)
  %94 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %95 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %74, %64
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %60

105:                                              ; preds = %60
  %106 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %107 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = call i32 @kfree(%struct.TYPE_4__* %108)
  %110 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %111 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %110, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %111, align 8
  br label %112

112:                                              ; preds = %105, %54
  %113 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %114 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %119 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %120)
  %122 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %123 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = call i32 @kfree(%struct.TYPE_4__* %124)
  %126 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %127 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %126, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %127, align 8
  br label %128

128:                                              ; preds = %117, %112
  %129 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %130 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %128
  %134 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %135 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* %136)
  %138 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %139 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @pwc_mbufs, align 4
  %142 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %143 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = call i32 @pwc_rvfree(i32* %140, i32 %145)
  br label %147

147:                                              ; preds = %133, %128
  %148 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %149 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %8
  ret void
}

declare dso_local i32 @PWC_DEBUG_MEMORY(i8*, ...) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @pwc_rvfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
