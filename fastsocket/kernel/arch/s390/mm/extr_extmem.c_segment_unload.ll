; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_segment_unload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c_segment_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i32, i32, i64, i64, %struct.dcss_segment*, i32 }

@MACHINE_IS_VM = common dso_local global i32 0, align 4
@dcss_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unloading unknown DCSS %s failed\0A\00", align 1
@purgeseg_scode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @segment_unload(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dcss_segment*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @MACHINE_IS_VM, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %55

8:                                                ; preds = %1
  %9 = call i32 @mutex_lock(i32* @dcss_lock)
  %10 = load i8*, i8** %2, align 8
  %11 = call %struct.dcss_segment* @segment_by_name(i8* %10)
  store %struct.dcss_segment* %11, %struct.dcss_segment** %4, align 8
  %12 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %13 = icmp eq %struct.dcss_segment* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %53

17:                                               ; preds = %8
  %18 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %19 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %18, i32 0, i32 5
  %20 = call i64 @atomic_dec_return(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %53

23:                                               ; preds = %17
  %24 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %25 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %24, i32 0, i32 4
  %26 = load %struct.dcss_segment*, %struct.dcss_segment** %25, align 8
  %27 = call i32 @release_resource(%struct.dcss_segment* %26)
  %28 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %29 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %28, i32 0, i32 4
  %30 = load %struct.dcss_segment*, %struct.dcss_segment** %29, align 8
  %31 = call i32 @kfree(%struct.dcss_segment* %30)
  %32 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %33 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %36 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %39 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = add nsw i64 %41, 1
  %43 = call i32 @vmem_remove_mapping(i64 %34, i64 %42)
  %44 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %45 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %44, i32 0, i32 1
  %46 = call i32 @list_del(i32* %45)
  %47 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %48 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dcss_diag(i32* @purgeseg_scode, i32 %49, i64* %3, i64* %3)
  %51 = load %struct.dcss_segment*, %struct.dcss_segment** %4, align 8
  %52 = call i32 @kfree(%struct.dcss_segment* %51)
  br label %53

53:                                               ; preds = %23, %22, %14
  %54 = call i32 @mutex_unlock(i32* @dcss_lock)
  br label %55

55:                                               ; preds = %53, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dcss_segment* @segment_by_name(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @release_resource(%struct.dcss_segment*) #1

declare dso_local i32 @kfree(%struct.dcss_segment*) #1

declare dso_local i32 @vmem_remove_mapping(i64, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dcss_diag(i32*, i32, i64*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
