; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_seekdist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_seekdist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i32, i32 }
%struct.as_io_context = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*, %struct.as_io_context*, i32)* @as_update_seekdist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_update_seekdist(%struct.as_data* %0, %struct.as_io_context* %1, i32 %2) #0 {
  %4 = alloca %struct.as_data*, align 8
  %5 = alloca %struct.as_io_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.as_data* %0, %struct.as_data** %4, align 8
  store %struct.as_io_context* %1, %struct.as_io_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %9 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.as_data*, %struct.as_data** %4, align 8
  %14 = getelementptr inbounds %struct.as_data, %struct.as_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 7, %15
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 256, %17
  %19 = add nsw i32 %16, %18
  %20 = sdiv i32 %19, 8
  %21 = load %struct.as_data*, %struct.as_data** %4, align 8
  %22 = getelementptr inbounds %struct.as_data, %struct.as_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.as_data*, %struct.as_data** %4, align 8
  %24 = getelementptr inbounds %struct.as_data, %struct.as_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 256
  %27 = load %struct.as_data*, %struct.as_data** %4, align 8
  %28 = getelementptr inbounds %struct.as_data, %struct.as_data* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %12, %3
  %30 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %31 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 60
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %37 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 4
  %40 = add nsw i32 %39, 2097152
  %41 = call i32 @min(i32 %35, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %50

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %45 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %47, 131072
  %49 = call i32 @min(i32 %43, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %52 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 7, %53
  %55 = add nsw i32 %54, 256
  %56 = sdiv i32 %55, 8
  %57 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %58 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %60 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 7, %61
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 256, %63
  %65 = add nsw i32 %62, %64
  %66 = sdiv i32 %65, 8
  %67 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %68 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %70 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %73 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 2
  %76 = add nsw i32 %71, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %79 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @do_div(i32 %77, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.as_io_context*, %struct.as_io_context** %5, align 8
  %84 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
