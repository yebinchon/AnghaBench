; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_write_ts_to_decoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_write_ts_to_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.ipack* }
%struct.ipack = type { i32 }

@TRANS_ERROR = common dso_local global i32 0, align 4
@PAYLOAD = common dso_local global i32 0, align 4
@PAY_START = common dso_local global i32 0, align 4
@ADAPT_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*, i32, i32*, i64)* @write_ts_to_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ts_to_decoder(%struct.av7110* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipack*, align 8
  store %struct.av7110* %0, %struct.av7110** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.av7110*, %struct.av7110** %6, align 8
  %12 = getelementptr inbounds %struct.av7110, %struct.av7110* %11, i32 0, i32 0
  %13 = load %struct.ipack*, %struct.ipack** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ipack, %struct.ipack* %13, i64 %15
  store %struct.ipack* %16, %struct.ipack** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TRANS_ERROR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.ipack*, %struct.ipack** %10, align 8
  %25 = call i32 @av7110_ipack_reset(%struct.ipack* %24)
  store i32 -1, i32* %5, align 4
  br label %77

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAYLOAD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %77

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PAY_START, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.ipack*, %struct.ipack** %10, align 8
  %43 = call i32 @av7110_ipack_flush(%struct.ipack* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ADAPT_FIELD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32*, i32** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %77

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %73, 4
  %75 = load %struct.ipack*, %struct.ipack** %10, align 8
  %76 = call i32 @av7110_ipack_instant_repack(i32* %72, i64 %74, %struct.ipack* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %70, %68, %33, %23
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @av7110_ipack_reset(%struct.ipack*) #1

declare dso_local i32 @av7110_ipack_flush(%struct.ipack*) #1

declare dso_local i32 @av7110_ipack_instant_repack(i32*, i64, %struct.ipack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
