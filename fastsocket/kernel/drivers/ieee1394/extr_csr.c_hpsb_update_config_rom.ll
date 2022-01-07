; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_hpsb_update_config_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_hpsb_update_config_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i8, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32 (%struct.hpsb_host*, i32)* }

@.str = private unnamed_addr constant [39 x i8] c"hpsb_update_config_rom() is deprecated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_update_config_rom(%struct.hpsb_host* %0, i32* %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.hpsb_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %11 = call i32 @HPSB_NOTICE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %13 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %20 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  br label %103

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %29 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %27, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 -2, i32* %10, align 4
  br label %102

38:                                               ; preds = %26
  %39 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %40 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memcpy(i32 %46, i32* %47, i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %52 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i64 %50, i64* %57, align 8
  %58 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %59 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.hpsb_host*, i32)*, i32 (%struct.hpsb_host*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.hpsb_host*, i32)* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %38
  %65 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %66 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (%struct.hpsb_host*, i32)*, i32 (%struct.hpsb_host*, i32)** %68, align 8
  %70 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %71 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %72 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %69(%struct.hpsb_host* %70, i32 %76)
  br label %78

78:                                               ; preds = %64, %38
  %79 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %80 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 8
  %83 = add i8 %82, 1
  store i8 %83, i8* %81, align 8
  %84 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %85 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i8, i8* %86, align 8
  %88 = zext i8 %87 to i32
  %89 = icmp sgt i32 %88, 15
  br i1 %89, label %97, label %90

90:                                               ; preds = %78
  %91 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %92 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 8
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %101

97:                                               ; preds = %90, %78
  %98 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %99 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i8 2, i8* %100, align 8
  br label %101

101:                                              ; preds = %97, %90
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %37
  br label %103

103:                                              ; preds = %102, %25
  %104 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %105 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @HPSB_NOTICE(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
