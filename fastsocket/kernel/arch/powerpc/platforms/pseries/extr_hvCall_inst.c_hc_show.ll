; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hvCall_inst.c_hc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hvCall_inst.c_hc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.hcall_stats = type { i32, i64, i32 }

@CPU_FTR_PURR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%lu %lu %lu %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%lu %lu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hcall_stats*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hcall_stats*
  store %struct.hcall_stats* %12, %struct.hcall_stats** %6, align 8
  %13 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %13, i64 %14
  %16 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load i32, i32* @CPU_FTR_PURR, align 4
  %21 = call i64 @cpu_has_feature(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = shl i64 %25, 2
  %27 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %27, i64 %28
  %30 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %32, i64 %33
  %35 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %37, i64 %38
  %40 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.seq_file*, i8*, i64, i64, i32, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %31, i32 %36, i32 %41)
  br label %58

43:                                               ; preds = %19
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = shl i64 %45, 2
  %47 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %47, i64 %48
  %50 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %52, i64 %53
  %55 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, i64, i64, i32, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %51, i32 %56)
  br label %58

58:                                               ; preds = %43, %23
  br label %59

59:                                               ; preds = %58, %2
  ret i32 0
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
