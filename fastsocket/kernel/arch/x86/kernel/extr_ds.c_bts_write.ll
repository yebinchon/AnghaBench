; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_bts_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_bts_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.bts_tracer = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bts_struct = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_SIZEOF_BTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ds_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ds_bts = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@bts_from = common dso_local global i32 0, align 4
@bts_to = common dso_local global i32 0, align 4
@bts_flags = common dso_local global i32 0, align 4
@bts_qual = common dso_local global i32 0, align 4
@bts_escape = common dso_local global i32 0, align 4
@bts_clock = common dso_local global i32 0, align 4
@bts_pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bts_tracer*, %struct.bts_struct*)* @bts_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bts_write(%struct.bts_tracer* %0, %struct.bts_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bts_tracer*, align 8
  %5 = alloca %struct.bts_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bts_tracer* %0, %struct.bts_tracer** %4, align 8
  store %struct.bts_struct* %1, %struct.bts_struct** %5, align 8
  %9 = load i32, i32* @MAX_SIZEOF_BTS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.bts_tracer*, %struct.bts_tracer** %4, align 8
  %14 = icmp ne %struct.bts_tracer* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_SIZEOF_BTS, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ds_cfg, i32 0, i32 0), align 8
  %21 = load i64, i64* @ds_bts, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EOVERFLOW, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %92

28:                                               ; preds = %18
  %29 = load %struct.bts_struct*, %struct.bts_struct** %5, align 8
  %30 = getelementptr inbounds %struct.bts_struct, %struct.bts_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %78 [
    i32 130, label %32
    i32 131, label %39
    i32 129, label %56
    i32 128, label %56
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @bts_from, align 4
  %34 = call i32 @bts_set(i8* %12, i32 %33, i32 0)
  %35 = load i32, i32* @bts_to, align 4
  %36 = call i32 @bts_set(i8* %12, i32 %35, i32 0)
  %37 = load i32, i32* @bts_flags, align 4
  %38 = call i32 @bts_set(i8* %12, i32 %37, i32 0)
  br label %81

39:                                               ; preds = %28
  %40 = load i32, i32* @bts_from, align 4
  %41 = load %struct.bts_struct*, %struct.bts_struct** %5, align 8
  %42 = getelementptr inbounds %struct.bts_struct, %struct.bts_struct* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bts_set(i8* %12, i32 %40, i32 %45)
  %47 = load i32, i32* @bts_to, align 4
  %48 = load %struct.bts_struct*, %struct.bts_struct** %5, align 8
  %49 = getelementptr inbounds %struct.bts_struct, %struct.bts_struct* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bts_set(i8* %12, i32 %47, i32 %52)
  %54 = load i32, i32* @bts_flags, align 4
  %55 = call i32 @bts_set(i8* %12, i32 %54, i32 0)
  br label %81

56:                                               ; preds = %28, %28
  %57 = load i32, i32* @bts_qual, align 4
  %58 = load i32, i32* @bts_escape, align 4
  %59 = load %struct.bts_struct*, %struct.bts_struct** %5, align 8
  %60 = getelementptr inbounds %struct.bts_struct, %struct.bts_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = call i32 @bts_set(i8* %12, i32 %57, i32 %62)
  %64 = load i32, i32* @bts_clock, align 4
  %65 = load %struct.bts_struct*, %struct.bts_struct** %5, align 8
  %66 = getelementptr inbounds %struct.bts_struct, %struct.bts_struct* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bts_set(i8* %12, i32 %64, i32 %69)
  %71 = load i32, i32* @bts_pid, align 4
  %72 = load %struct.bts_struct*, %struct.bts_struct** %5, align 8
  %73 = getelementptr inbounds %struct.bts_struct, %struct.bts_struct* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bts_set(i8* %12, i32 %71, i32 %76)
  br label %81

78:                                               ; preds = %28
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %92

81:                                               ; preds = %56, %39, %32
  %82 = load %struct.bts_tracer*, %struct.bts_tracer** %4, align 8
  %83 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @ds_bts, align 8
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ds_cfg, i32 0, i32 0), align 8
  %88 = load i64, i64* @ds_bts, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ds_write(i32 %85, i64 %86, i8* %12, i32 %90)
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %81, %78, %25, %15
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bts_set(i8*, i32, i32) #2

declare dso_local i32 @ds_write(i32, i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
