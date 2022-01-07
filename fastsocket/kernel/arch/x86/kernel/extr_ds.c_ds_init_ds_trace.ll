; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_init_ds_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_init_ds_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.ds_trace = type { i64, i64, i32, i8*, i8*, i8*, i8* }

@DS_ALIGNMENT = common dso_local global i32 0, align 4
@ds_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_trace*, i32, i8*, i64, i64, i32)* @ds_init_ds_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_init_ds_trace(%struct.ds_trace* %0, i32 %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ds_trace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ds_trace* %0, %struct.ds_trace** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i32, i32* @DS_ALIGNMENT, align 4
  %19 = call i64 @ALIGN(i64 %17, i32 %18)
  %20 = load i64, i64* %13, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = udiv i64 %28, %33
  %35 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %36 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %43 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %45 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %48 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %46, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %13, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %54 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %56 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %59 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %60, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %65 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds_cfg, i32 0, i32 0), align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = mul i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 %75, %76
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %80 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ds_trace*, %struct.ds_trace** %7, align 8
  %83 = getelementptr inbounds %struct.ds_trace, %struct.ds_trace* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  ret void
}

declare dso_local i64 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
