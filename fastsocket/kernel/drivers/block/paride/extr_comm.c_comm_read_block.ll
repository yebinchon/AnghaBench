; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_comm.c_comm_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_comm.c_comm_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@P1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @comm_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comm_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %120 [
    i32 0, label %13
    i32 1, label %38
    i32 2, label %59
    i32 3, label %78
    i32 4, label %99
  ]

13:                                               ; preds = %3
  %14 = call i32 @w0(i32 72)
  %15 = load i32, i32* @P1, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %34, %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = call i32 @w0(i32 0)
  %22 = call i32 @w2(i32 6)
  %23 = call i32 (...) @r1()
  store i32 %23, i32* %8, align 4
  %24 = call i32 @w0(i32 128)
  %25 = call i32 (...) @r1()
  store i32 %25, i32* %9, align 4
  %26 = call i32 @w2(i32 4)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call signext i8 @j44(i32 %27, i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %16

37:                                               ; preds = %16
  br label %120

38:                                               ; preds = %3
  %39 = call i32 @w0(i32 104)
  %40 = load i32, i32* @P1, align 4
  %41 = call i32 @w0(i32 0)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %54, %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = call i32 @w2(i32 38)
  %48 = call signext i8 (...) @r0()
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = call i32 @w2(i32 36)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %42

57:                                               ; preds = %42
  %58 = call i32 @w2(i32 4)
  br label %120

59:                                               ; preds = %3
  %60 = call i32 @w3(i32 104)
  %61 = call i32 (...) @r1()
  %62 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %73, %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = call signext i8 (...) @r4()
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %68, i8* %72, align 1
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %63

76:                                               ; preds = %63
  %77 = call i32 @w2(i32 4)
  br label %120

78:                                               ; preds = %3
  %79 = call i32 @w3(i32 104)
  %80 = call i32 (...) @r1()
  %81 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %94, %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sdiv i32 %84, 2
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = call i32 (...) @r4w()
  %89 = load i8*, i8** %5, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %82

97:                                               ; preds = %82
  %98 = call i32 @w2(i32 4)
  br label %120

99:                                               ; preds = %3
  %100 = call i32 @w3(i32 104)
  %101 = call i32 (...) @r1()
  %102 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %115, %99
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sdiv i32 %105, 4
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = call i32 (...) @r4l()
  %110 = load i8*, i8** %5, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %109, i32* %114, align 4
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %103

118:                                              ; preds = %103
  %119 = call i32 @w2(i32 4)
  br label %120

120:                                              ; preds = %3, %118, %97, %76, %57, %37
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local signext i8 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local signext i8 @r4(...) #1

declare dso_local i32 @r4w(...) #1

declare dso_local i32 @r4l(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
