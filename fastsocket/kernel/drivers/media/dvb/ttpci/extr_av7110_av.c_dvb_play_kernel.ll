; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_play_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_play_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@ENOBUFS = common dso_local global i64 0, align 8
@FREE_COND = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@IPACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.av7110*, i32*, i64, i32, i32)* @dvb_play_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dvb_play_kernel(%struct.av7110* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.av7110*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.av7110* %0, %struct.av7110** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %9, align 8
  store i64 %14, i64* %12, align 8
  %15 = load %struct.av7110*, %struct.av7110** %7, align 8
  %16 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %15)
  %17 = load %struct.av7110*, %struct.av7110** %7, align 8
  %18 = getelementptr inbounds %struct.av7110, %struct.av7110* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* @ENOBUFS, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %6, align 8
  br label %95

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @FREE_COND, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @EWOULDBLOCK, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %6, align 8
  br label %95

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %75, %37
  %39 = load i64, i64* %12, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = load i32, i32* @FREE_COND, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %6, align 8
  br label %95

51:                                               ; preds = %44
  %52 = load %struct.av7110*, %struct.av7110** %7, align 8
  %53 = getelementptr inbounds %struct.av7110, %struct.av7110* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FREE_COND, align 4
  %57 = call i64 @wait_event_interruptible(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %6, align 8
  br label %95

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @IPACKS, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @IPACKS, align 4
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32*, i32** %8, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.av7110*, %struct.av7110** %7, align 8
  %79 = getelementptr inbounds %struct.av7110, %struct.av7110* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @av7110_ipack_instant_repack(i32* %76, i64 %77, i32* %83)
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 %88
  store i32* %90, i32** %8, align 8
  br label %38

91:                                               ; preds = %38
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %91, %59, %47, %34, %25
  %96 = load i64, i64* %6, align 8
  ret i64 %96
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @av7110_ipack_instant_repack(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
