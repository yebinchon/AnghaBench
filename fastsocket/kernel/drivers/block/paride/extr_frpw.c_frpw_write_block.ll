; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_frpw.c_frpw_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_frpw.c_frpw_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cec4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @frpw_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frpw_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %102 [
    i32 0, label %11
    i32 1, label %11
    i32 2, label %11
    i32 3, label %35
    i32 4, label %56
    i32 5, label %79
  ]

11:                                               ; preds = %3, %3, %3
  %12 = call i32 @w2(i32 4)
  %13 = call i32 @w0(i32 8)
  %14 = load i32, i32* @cec4, align 4
  %15 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %30, %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 @w0(i32 %26)
  %28 = call i32 @w2(i32 7)
  %29 = call i32 @w2(i32 5)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %16

33:                                               ; preds = %16
  %34 = call i32 @w2(i32 4)
  br label %102

35:                                               ; preds = %3
  %36 = call i32 @w2(i32 4)
  %37 = call i32 @w0(i32 200)
  %38 = load i32, i32* @cec4, align 4
  %39 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %51, %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @w4(i8 signext %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %40

54:                                               ; preds = %40
  %55 = call i32 @w2(i32 4)
  br label %102

56:                                               ; preds = %3
  %57 = call i32 @w2(i32 4)
  %58 = call i32 @w0(i32 200)
  %59 = load i32, i32* @cec4, align 4
  %60 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %74, %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sdiv i32 %63, 2
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @w4w(i32 %72)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %61

77:                                               ; preds = %61
  %78 = call i32 @w2(i32 4)
  br label %102

79:                                               ; preds = %3
  %80 = call i32 @w2(i32 4)
  %81 = call i32 @w0(i32 200)
  %82 = load i32, i32* @cec4, align 4
  %83 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %97, %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sdiv i32 %86, 4
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @w4l(i32 %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %84

100:                                              ; preds = %84
  %101 = call i32 @w2(i32 4)
  br label %102

102:                                              ; preds = %3, %100, %77, %54, %33
  ret void
}

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w4(i8 signext) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @w4l(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
