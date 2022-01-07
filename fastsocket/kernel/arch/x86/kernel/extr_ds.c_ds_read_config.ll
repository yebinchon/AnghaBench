; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_context = type { i8* }
%struct.ds_trace = type { i8*, i8*, i8*, i8* }

@ds_buffer_base = common dso_local global i32 0, align 4
@ds_index = common dso_local global i32 0, align 4
@ds_absolute_maximum = common dso_local global i32 0, align 4
@ds_interrupt_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_context*, %struct.ds_trace*, i32)* @ds_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_read_config(%struct.ds_context* %0, %struct.ds_trace* %1, i32 %2) #0 {
  %4 = alloca %struct.ds_context*, align 8
  %5 = alloca %struct.ds_trace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ds_context* %0, %struct.ds_context** %4, align 8
  store %struct.ds_trace* %1, %struct.ds_trace** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ds_context*, %struct.ds_context** %4, align 8
  %9 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ds_buffer_base, align 4
  %14 = call i64 @ds_get(i8* %11, i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.ds_trace*, %struct.ds_trace** %5, align 8
  %17 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ds_index, align 4
  %21 = call i64 @ds_get(i8* %18, i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.ds_trace*, %struct.ds_trace** %5, align 8
  %24 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ds_absolute_maximum, align 4
  %28 = call i64 @ds_get(i8* %25, i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.ds_trace*, %struct.ds_trace** %5, align 8
  %31 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ds_interrupt_threshold, align 4
  %35 = call i64 @ds_get(i8* %32, i32 %33, i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.ds_trace*, %struct.ds_trace** %5, align 8
  %38 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  ret void
}

declare dso_local i64 @ds_get(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
