; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_get_ib_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_get_ib_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, i32, %struct.radeon_cs_chunk* }
%struct.radeon_cs_chunk = type { i32*, i32** }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_cs_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 2
  %13 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %12, align 8
  %14 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %13, i64 %16
  store %struct.radeon_cs_chunk* %17, %struct.radeon_cs_chunk** %6, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %87

44:                                               ; preds = %2
  %45 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %46 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %54 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sdiv i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %87

63:                                               ; preds = %44
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @radeon_cs_update_pages(%struct.radeon_cs_parser* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %3, align 4
  br label %87

73:                                               ; preds = %63
  %74 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %75 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sdiv i32 %81, 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %73, %69, %52, %33
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @radeon_cs_update_pages(%struct.radeon_cs_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
