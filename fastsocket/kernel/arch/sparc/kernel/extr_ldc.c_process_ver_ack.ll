; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_ver_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_ver_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, %struct.ldc_version }
%struct.ldc_version = type { i64, i64 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GOT VERSION ACK major[%x] minor[%x]\0A\00", align 1
@LDC_HS_GOTVERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_version*)* @process_ver_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ver_ack(%struct.ldc_channel* %0, %struct.ldc_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_version*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_version* %1, %struct.ldc_version** %5, align 8
  %6 = load i32, i32* @HS, align 4
  %7 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %8 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %11 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @ldcdbg(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %12)
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LDC_HS_GOTVERS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %25 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %30 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %34 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28, %19
  %38 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %39 = call i32 @ldc_abort(%struct.ldc_channel* %38)
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %28
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %43 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %42, i32 0, i32 1
  %44 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %45 = bitcast %struct.ldc_version* %43 to i8*
  %46 = bitcast %struct.ldc_version* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load i64, i64* @LDC_HS_GOTVERS, align 8
  %48 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %49 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %40
  %51 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %52 = call i64 @send_rts(%struct.ldc_channel* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %56 = call i32 @ldc_abort(%struct.ldc_channel* %55)
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %37
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ldcdbg(i32, i8*, i64, i64) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @send_rts(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
