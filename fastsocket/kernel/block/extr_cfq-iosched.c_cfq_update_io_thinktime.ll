; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_io_thinktime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_io_thinktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64 }
%struct.cfq_io_context = type { i64, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_io_context*)* @cfq_update_io_thinktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_update_io_thinktime(%struct.cfq_data* %0, %struct.cfq_io_context* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_io_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_io_context* %1, %struct.cfq_io_context** %4, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %9 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %7, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %14 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = mul i64 2, %15
  %17 = call i64 @min(i64 %12, i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %19 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 7, %20
  %22 = add nsw i32 %21, 256
  %23 = sdiv i32 %22, 8
  %24 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %25 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %27 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 7, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = mul i64 256, %31
  %33 = add i64 %30, %32
  %34 = udiv i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %37 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %39 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 128
  %42 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %43 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %41, %44
  %46 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %47 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  ret void
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
