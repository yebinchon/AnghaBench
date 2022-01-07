; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.ds_tracer = type { i64, %struct.ds_context*, i8* }
%struct.ds_context = type { i32 }
%struct.ds_trace = type { i32 }
%struct.task_struct = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ds_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@DS_ALIGNMENT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_tracer*, %struct.ds_trace*, i32, %struct.task_struct*, i32, i8*, i64, i64)* @ds_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_request(%struct.ds_tracer* %0, %struct.ds_trace* %1, i32 %2, %struct.task_struct* %3, i32 %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.ds_tracer*, align 8
  %10 = alloca %struct.ds_trace*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ds_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.ds_tracer* %0, %struct.ds_tracer** %9, align 8
  store %struct.ds_trace* %1, %struct.ds_trace** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.task_struct* %3, %struct.task_struct** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %18, align 4
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %8
  br label %94

29:                                               ; preds = %8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %18, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %94

35:                                               ; preds = %29
  %36 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %19, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load i64, i64* @DS_ALIGNMENT, align 8
  %44 = call i32 @IS_ALIGNED(i64 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load i64, i64* @DS_ALIGNMENT, align 8
  %48 = load i64, i64* %19, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %19, align 8
  br label %50

50:                                               ; preds = %46, %35
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %18, align 4
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %19, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %94

57:                                               ; preds = %50
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, -1
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %16, align 8
  %67 = mul i64 %66, %65
  store i64 %67, i64* %16, align 8
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %18, align 4
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %16, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %94

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.ds_tracer*, %struct.ds_tracer** %9, align 8
  %78 = getelementptr inbounds %struct.ds_tracer, %struct.ds_tracer* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load %struct.ds_tracer*, %struct.ds_tracer** %9, align 8
  %81 = getelementptr inbounds %struct.ds_tracer, %struct.ds_tracer* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %18, align 4
  %84 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call %struct.ds_context* @ds_get_context(%struct.task_struct* %84, i32 %85)
  store %struct.ds_context* %86, %struct.ds_context** %17, align 8
  %87 = load %struct.ds_context*, %struct.ds_context** %17, align 8
  %88 = icmp ne %struct.ds_context* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %75
  br label %94

90:                                               ; preds = %75
  %91 = load %struct.ds_context*, %struct.ds_context** %17, align 8
  %92 = load %struct.ds_tracer*, %struct.ds_tracer** %9, align 8
  %93 = getelementptr inbounds %struct.ds_tracer, %struct.ds_tracer* %92, i32 0, i32 1
  store %struct.ds_context* %91, %struct.ds_context** %93, align 8
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %90, %89, %73, %56, %34, %28
  %95 = load i32, i32* %18, align 4
  ret i32 %95
}

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local %struct.ds_context* @ds_get_context(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
