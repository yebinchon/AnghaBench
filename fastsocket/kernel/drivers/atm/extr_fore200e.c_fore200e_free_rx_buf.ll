; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_free_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_free_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.buffer* }
%struct.buffer = type { %struct.chunk }
%struct.chunk = type { i32* }

@BUFFER_SCHEME_NBR = common dso_local global i32 0, align 4
@BUFFER_MAGN_NBR = common dso_local global i32 0, align 4
@fore200e_rx_buf_nbr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fore200e*)* @fore200e_free_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fore200e_free_rx_buf(%struct.fore200e* %0) #0 {
  %2 = alloca %struct.fore200e*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.chunk*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %68, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BUFFER_SCHEME_NBR, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %71

12:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %64, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BUFFER_MAGN_NBR, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %19 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.buffer*, %struct.buffer** %28, align 8
  store %struct.buffer* %29, %struct.buffer** %6, align 8
  %30 = icmp ne %struct.buffer* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32**, i32*** @fore200e_rx_buf_nbr, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %33, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %32
  %45 = load %struct.buffer*, %struct.buffer** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i64 %47
  %49 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 0
  store %struct.chunk* %49, %struct.chunk** %7, align 8
  %50 = load %struct.chunk*, %struct.chunk** %7, align 8
  %51 = getelementptr inbounds %struct.chunk, %struct.chunk* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %56 = load %struct.chunk*, %struct.chunk** %7, align 8
  %57 = call i32 @fore200e_chunk_free(%struct.fore200e* %55, %struct.chunk* %56)
  br label %58

58:                                               ; preds = %54, %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %32

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62, %17
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %13

67:                                               ; preds = %13
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %8

71:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fore200e_chunk_free(%struct.fore200e*, %struct.chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
