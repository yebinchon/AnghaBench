; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_thinktime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_thinktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i32, i32, i32 }
%struct.as_io_context = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*, %struct.as_io_context*, i64)* @as_update_thinktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_update_thinktime(%struct.as_data* %0, %struct.as_io_context* %1, i64 %2) #0 {
  %4 = alloca %struct.as_data*, align 8
  %5 = alloca %struct.as_io_context*, align 8
  %6 = alloca i64, align 8
  store %struct.as_data* %0, %struct.as_data** %4, align 8
  store %struct.as_io_context* %1, %struct.as_io_context** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %8 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = load %struct.as_data*, %struct.as_data** %4, align 8
  %13 = getelementptr inbounds %struct.as_data, %struct.as_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 7, %14
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %6, align 8
  %18 = mul i64 256, %17
  %19 = add i64 %16, %18
  %20 = udiv i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.as_data*, %struct.as_data** %4, align 8
  %23 = getelementptr inbounds %struct.as_data, %struct.as_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.as_data*, %struct.as_data** %4, align 8
  %25 = getelementptr inbounds %struct.as_data, %struct.as_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 256
  %28 = load %struct.as_data*, %struct.as_data** %4, align 8
  %29 = getelementptr inbounds %struct.as_data, %struct.as_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.as_data*, %struct.as_data** %4, align 8
  %31 = getelementptr inbounds %struct.as_data, %struct.as_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 7, %32
  %34 = sdiv i32 %33, 8
  %35 = load %struct.as_data*, %struct.as_data** %4, align 8
  %36 = getelementptr inbounds %struct.as_data, %struct.as_data* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %11, %3
  %38 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %39 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 7, %40
  %42 = add nsw i32 %41, 256
  %43 = sdiv i32 %42, 8
  %44 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %45 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %47 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 7, %48
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %6, align 8
  %52 = mul i64 256, %51
  %53 = add i64 %50, %52
  %54 = udiv i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %57 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %59 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 128
  %62 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %63 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %61, %64
  %66 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %67 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
