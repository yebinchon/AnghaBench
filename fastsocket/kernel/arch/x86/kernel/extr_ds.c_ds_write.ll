; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.ds_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ds_buffer_base = common dso_local global i32 0, align 4
@ds_index = common dso_local global i32 0, align 4
@ds_absolute_maximum = common dso_local global i32 0, align 4
@ds_interrupt_threshold = common dso_local global i32 0, align 4
@ds_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_context*, i32, i8*, i64)* @ds_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_write(%struct.ds_context* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ds_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.ds_context* %0, %struct.ds_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %135

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %132, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %133

27:                                               ; preds = %24
  %28 = load %struct.ds_context*, %struct.ds_context** %6, align 8
  %29 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ds_buffer_base, align 4
  %33 = call i64 @ds_get(i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load %struct.ds_context*, %struct.ds_context** %6, align 8
  %35 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ds_index, align 4
  %39 = call i64 @ds_get(i32 %36, i32 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.ds_context*, %struct.ds_context** %6, align 8
  %41 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ds_absolute_maximum, align 4
  %45 = call i64 @ds_get(i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.ds_context*, %struct.ds_context** %6, align 8
  %47 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ds_interrupt_threshold, align 4
  %51 = call i64 @ds_get(i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %15, align 8
  %54 = call i64 @min(i64 %52, i64 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %27
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %14, align 8
  br label %60

60:                                               ; preds = %58, %27
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %133

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %67, %68
  %70 = call i64 @min(i64 %66, i64 %69)
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %12, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @memcpy(i8* %72, i8* %73, i64 %74)
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %8, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load i64, i64* %16, align 8
  %88 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = udiv i64 %87, %92
  store i64 %93, i64* %17, align 8
  %94 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %17, align 8
  %100 = mul i64 %99, %98
  store i64 %100, i64* %17, align 8
  %101 = load i64, i64* %12, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %16, align 8
  %107 = sub i64 %105, %106
  %108 = call i32 @memset(i8* %104, i32 0, i64 %107)
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = icmp uge i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %65
  %116 = load i64, i64* %11, align 8
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %115, %65
  %118 = load %struct.ds_context*, %struct.ds_context** %6, align 8
  %119 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @ds_index, align 4
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @ds_set(i32 %120, i32 %121, i32 %122, i64 %123)
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %15, align 8
  %127 = icmp uge i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load %struct.ds_context*, %struct.ds_context** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ds_overflow(%struct.ds_context* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %117
  br label %24

133:                                              ; preds = %64, %24
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %20
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i64 @ds_get(i32, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ds_set(i32, i32, i32, i64) #1

declare dso_local i32 @ds_overflow(%struct.ds_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
