; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_ver_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_ver_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, %struct.ldc_version }
%struct.ldc_version = type { i64, i64 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"GOT VERSION INFO major[%x] minor[%x]\0A\00", align 1
@LDC_HS_GOTVERS = common dso_local global i64 0, align 8
@LDC_HS_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_version*)* @process_ver_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ver_info(%struct.ldc_channel* %0, %struct.ldc_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_version*, align 8
  %6 = alloca %struct.ldc_version*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ldc_version, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_version* %1, %struct.ldc_version** %5, align 8
  %9 = load i32, i32* @HS, align 4
  %10 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %11 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %14 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ldcdbg(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15)
  %17 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %18 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LDC_HS_GOTVERS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i64, i64* @LDC_HS_OPEN, align 8
  %24 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %25 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %26, i32 0, i32 1
  %28 = call i32 @memset(%struct.ldc_version* %27, i32 0, i32 16)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %31 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.ldc_version* @find_by_major(i64 %32)
  store %struct.ldc_version* %33, %struct.ldc_version** %6, align 8
  %34 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %35 = icmp ne %struct.ldc_version* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %38 = call i32 @send_version_nack(%struct.ldc_channel* %37, i64 0, i64 0)
  store i32 %38, i32* %7, align 4
  br label %86

39:                                               ; preds = %29
  %40 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %41 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %44 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %49 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %50 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %53 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @send_version_nack(%struct.ldc_channel* %48, i64 %51, i64 %54)
  store i32 %55, i32* %7, align 4
  br label %85

56:                                               ; preds = %39
  %57 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %58 = bitcast %struct.ldc_version* %8 to i8*
  %59 = bitcast %struct.ldc_version* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %8, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %63 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %68 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %8, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %73 = call i32 @send_version_ack(%struct.ldc_channel* %72, %struct.ldc_version* %8)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %78 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %77, i32 0, i32 1
  %79 = bitcast %struct.ldc_version* %78 to i8*
  %80 = bitcast %struct.ldc_version* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  %81 = load i64, i64* @LDC_HS_GOTVERS, align 8
  %82 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %83 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %76, %71
  br label %85

85:                                               ; preds = %84, %47
  br label %86

86:                                               ; preds = %85, %36
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %91 = call i32 @ldc_abort(%struct.ldc_channel* %90)
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ldcdbg(i32, i8*, i64, i64) #1

declare dso_local i32 @memset(%struct.ldc_version*, i32, i32) #1

declare dso_local %struct.ldc_version* @find_by_major(i64) #1

declare dso_local i32 @send_version_nack(%struct.ldc_channel*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @send_version_ack(%struct.ldc_channel*, %struct.ldc_version*) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
