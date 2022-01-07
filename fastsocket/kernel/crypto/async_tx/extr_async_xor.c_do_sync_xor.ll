; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_xor.c_do_sync_xor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_xor.c_do_sync_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.async_submit_ctl = type { i8**, i32 }

@ASYNC_TX_XOR_ZERO_DST = common dso_local global i32 0, align 4
@MAX_XOR_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page**, i32, i32, i64, %struct.async_submit_ctl*)* @do_sync_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sync_xor(%struct.page* %0, %struct.page** %1, i32 %2, i32 %3, i64 %4, %struct.async_submit_ctl* %5) #0 {
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.async_submit_ctl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  store %struct.page* %0, %struct.page** %7, align 8
  store %struct.page** %1, %struct.page*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.async_submit_ctl* %5, %struct.async_submit_ctl** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %19 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %24 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  store i8** %25, i8*** %17, align 8
  br label %29

26:                                               ; preds = %6
  %27 = load %struct.page**, %struct.page*** %8, align 8
  %28 = bitcast %struct.page** %27 to i8**
  store i8** %28, i8*** %17, align 8
  br label %29

29:                                               ; preds = %26, %22
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %57, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load %struct.page**, %struct.page*** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 %37
  %39 = load %struct.page*, %struct.page** %38, align 8
  %40 = icmp ne %struct.page* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.page**, %struct.page*** %8, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %44
  %46 = load %struct.page*, %struct.page** %45, align 8
  %47 = call i8* @page_address(%struct.page* %46)
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = load i8**, i8*** %17, align 8
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  store i8* %50, i8** %55, align 8
  br label %56

56:                                               ; preds = %41, %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = call i8* @page_address(%struct.page* %62)
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  store i8* %66, i8** %16, align 8
  %67 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %68 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ASYNC_TX_XOR_ZERO_DST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load i8*, i8** %16, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @memset(i8* %74, i32 0, i64 %75)
  br label %77

77:                                               ; preds = %73, %60
  br label %78

78:                                               ; preds = %81, %77
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @MAX_XOR_BLOCKS, align 4
  %84 = call i32 @min(i32 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i64, i64* %11, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i8**, i8*** %17, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = call i32 @xor_blocks(i32 %85, i64 %86, i8* %87, i8** %91)
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %78

99:                                               ; preds = %78
  %100 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %101 = call i32 @async_tx_sync_epilog(%struct.async_submit_ctl* %100)
  ret void
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xor_blocks(i32, i64, i8*, i8**) #1

declare dso_local i32 @async_tx_sync_epilog(%struct.async_submit_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
