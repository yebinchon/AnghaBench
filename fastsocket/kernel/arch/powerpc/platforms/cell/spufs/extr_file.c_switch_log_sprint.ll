; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_switch_log_sprint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_switch_log_sprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.switch_log_entry* }
%struct.switch_log_entry = type { i32, i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@SWITCH_LOG_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%u.%09u %d %u %u %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i8*, i32)* @switch_log_sprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_log_sprint(%struct.spu_context* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_log_entry*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %9 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.switch_log_entry*, %struct.switch_log_entry** %11, align 8
  %13 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %14 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SWITCH_LOG_BUFSIZE, align 4
  %19 = srem i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %12, i64 %20
  store %struct.switch_log_entry* %21, %struct.switch_log_entry** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.switch_log_entry*, %struct.switch_log_entry** %7, align 8
  %25 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.switch_log_entry*, %struct.switch_log_entry** %7, align 8
  %30 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.switch_log_entry*, %struct.switch_log_entry** %7, align 8
  %35 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.switch_log_entry*, %struct.switch_log_entry** %7, align 8
  %38 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.switch_log_entry*, %struct.switch_log_entry** %7, align 8
  %42 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.switch_log_entry*, %struct.switch_log_entry** %7, align 8
  %46 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33, i32 %36, i32 %40, i32 %44, i64 %47)
  ret i32 %48
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
