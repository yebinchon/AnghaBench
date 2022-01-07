; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_add_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_add_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mm_struct = type { i32 }
%struct.op_sample = type { i32, i32 }

@oprofile_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INVALID_COOKIE = common dso_local global i64 0, align 8
@last_cookie = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.op_sample*, i32)* @add_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sample(%struct.mm_struct* %0, %struct.op_sample* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.op_sample*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.op_sample* %1, %struct.op_sample** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.op_sample*, %struct.op_sample** %6, align 8
  %14 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.op_sample*, %struct.op_sample** %6, align 8
  %17 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @add_sample_entry(i32 %15, i32 %18)
  store i32 1, i32* %4, align 4
  br label %50

20:                                               ; preds = %3
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = icmp ne %struct.mm_struct* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oprofile_stats, i32 0, i32 1))
  store i32 0, i32* %4, align 4
  br label %50

25:                                               ; preds = %20
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = load %struct.op_sample*, %struct.op_sample** %6, align 8
  %28 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @lookup_dcookie(%struct.mm_struct* %26, i32 %29, i32* %9)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @INVALID_COOKIE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oprofile_stats, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %50

36:                                               ; preds = %25
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @last_cookie, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @add_cookie_switch(i64 %41)
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* @last_cookie, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.op_sample*, %struct.op_sample** %6, align 8
  %47 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @add_sample_entry(i32 %45, i32 %48)
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %34, %23, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @add_sample_entry(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @lookup_dcookie(%struct.mm_struct*, i32, i32*) #1

declare dso_local i32 @add_cookie_switch(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
