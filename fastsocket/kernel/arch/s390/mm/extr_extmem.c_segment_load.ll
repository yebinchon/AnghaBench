; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_segment_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_segment_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i32, i64, i64, i32, i32 }

@MACHINE_IS_VM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@dcss_lock = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @segment_load(i8* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.dcss_segment*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* @MACHINE_IS_VM, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %59

17:                                               ; preds = %4
  %18 = call i32 @mutex_lock(i32* @dcss_lock)
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.dcss_segment* @segment_by_name(i8* %19)
  store %struct.dcss_segment* %20, %struct.dcss_segment** %10, align 8
  %21 = load %struct.dcss_segment*, %struct.dcss_segment** %10, align 8
  %22 = icmp eq %struct.dcss_segment* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i64*, i64** %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = call i32 @__segment_load(i8* %24, i32 %25, i64* %26, i64* %27)
  store i32 %28, i32* %11, align 4
  br label %56

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.dcss_segment*, %struct.dcss_segment** %10, align 8
  %32 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.dcss_segment*, %struct.dcss_segment** %10, align 8
  %37 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %36, i32 0, i32 4
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.dcss_segment*, %struct.dcss_segment** %10, align 8
  %40 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.dcss_segment*, %struct.dcss_segment** %10, align 8
  %44 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.dcss_segment*, %struct.dcss_segment** %10, align 8
  %48 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  br label %55

50:                                               ; preds = %29
  %51 = load i64*, i64** %9, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64*, i64** %8, align 8
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %35
  br label %56

56:                                               ; preds = %55, %23
  %57 = call i32 @mutex_unlock(i32* @dcss_lock)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %14
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dcss_segment* @segment_by_name(i8*) #1

declare dso_local i32 @__segment_load(i8*, i32, i64*, i64*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
