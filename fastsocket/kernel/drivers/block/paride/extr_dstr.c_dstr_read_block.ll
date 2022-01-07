; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_dstr.c_dstr_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_dstr.c_dstr_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@P1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@P3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @dstr_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstr_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @w0(i32 129)
  %11 = load i32, i32* @P1, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @w0(i32 25)
  br label %20

18:                                               ; preds = %3
  %19 = call i32 @w0(i32 9)
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* @P2, align 4
  %22 = call i32 @w0(i32 130)
  %23 = load i32, i32* @P1, align 4
  %24 = load i32, i32* @P3, align 4
  %25 = call i32 @w0(i32 32)
  %26 = load i32, i32* @P1, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %127 [
    i32 0, label %30
    i32 1, label %53
    i32 2, label %72
    i32 3, label %89
    i32 4, label %108
  ]

30:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = call i32 @w2(i32 6)
  %37 = call i32 (...) @r1()
  store i32 %37, i32* %8, align 4
  %38 = call i32 @w2(i32 4)
  %39 = call i32 @w2(i32 6)
  %40 = call i32 (...) @r1()
  store i32 %40, i32* %9, align 4
  %41 = call i32 @w2(i32 4)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call signext i8 @j44(i32 %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %31

52:                                               ; preds = %31
  br label %127

53:                                               ; preds = %20
  %54 = call i32 @w0(i32 0)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %67, %53
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = call i32 @w2(i32 38)
  %61 = call signext i8 (...) @r0()
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 %61, i8* %65, align 1
  %66 = call i32 @w2(i32 36)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %55

70:                                               ; preds = %55
  %71 = call i32 @w2(i32 4)
  br label %127

72:                                               ; preds = %20
  %73 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %84, %72
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = call signext i8 (...) @r4()
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 %79, i8* %83, align 1
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %74

87:                                               ; preds = %74
  %88 = call i32 @w2(i32 4)
  br label %127

89:                                               ; preds = %20
  %90 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %103, %89
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sdiv i32 %93, 2
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = call i32 (...) @r4w()
  %98 = load i8*, i8** %5, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %91

106:                                              ; preds = %91
  %107 = call i32 @w2(i32 4)
  br label %127

108:                                              ; preds = %20
  %109 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %122, %108
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = sdiv i32 %112, 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = call i32 (...) @r4l()
  %117 = load i8*, i8** %5, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %116, i32* %121, align 4
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %110

125:                                              ; preds = %110
  %126 = call i32 @w2(i32 4)
  br label %127

127:                                              ; preds = %20, %125, %106, %87, %70, %52
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local signext i8 @r0(...) #1

declare dso_local signext i8 @r4(...) #1

declare dso_local i32 @r4w(...) #1

declare dso_local i32 @r4l(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
