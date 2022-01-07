; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_do_vbi_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_do_vbi_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.cx231xx_dmaqueue = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_do_vbi_copy(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca %struct.cx231xx_dmaqueue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cx231xx_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %6, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 1
  store i32 %20, i32* %13, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %24, align 8
  store %struct.cx231xx_buffer* %25, %struct.cx231xx_buffer** %12, align 8
  %26 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %12, align 8
  %27 = icmp eq %struct.cx231xx_buffer* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %92

31:                                               ; preds = %4
  %32 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %12, align 8
  %33 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %32, i32 0, i32 0
  %34 = call i32* @videobuf_to_vmalloc(i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %36 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %43 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %48 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %55 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %69

58:                                               ; preds = %46
  %59 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 2
  %63 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %64 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %58, %46
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = bitcast i32* %73 to i8*
  store i8* %74, i8** %14, align 8
  %75 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %76 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  br label %86

82:                                               ; preds = %69
  %83 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %84 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ]
  store i32 %87, i32* %16, align 4
  %88 = load i8*, i8** %14, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @memcpy(i8* %88, i32* %89, i32 %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %28
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32* @videobuf_to_vmalloc(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
