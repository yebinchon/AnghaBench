; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_copy_iso_headers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_copy_iso_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_context = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso_context*, i8*)* @copy_iso_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_iso_headers(%struct.iso_context* %0, i8* %1) #0 {
  %3 = alloca %struct.iso_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.iso_context* %0, %struct.iso_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %7 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %12 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %10, %14
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %91

19:                                               ; preds = %2
  %20 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %21 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr i8, i8* %26, i64 4
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__swab32(i32 %29)
  %31 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %32 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to i32*
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %25, %19
  %39 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %40 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 4
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__swab32(i32 %47)
  %49 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %50 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = add nsw i64 %54, 4
  %56 = inttoptr i64 %55 to i32*
  store i32 %48, i32* %56, align 4
  br label %57

57:                                               ; preds = %44, %38
  %58 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %59 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 8
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %65 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = add nsw i64 %69, 8
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr i8, i8* %71, i64 8
  %73 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %74 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i64 %70, i8* %72, i32 %78)
  br label %80

80:                                               ; preds = %63, %57
  %81 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %82 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.iso_context*, %struct.iso_context** %3, align 8
  %86 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  br label %91

91:                                               ; preds = %80, %18
  ret void
}

declare dso_local i32 @__swab32(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
