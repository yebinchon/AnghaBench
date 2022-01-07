; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READ_TIMEOUT = common dso_local global i32 0, align 4
@sym53c416_lock = common dso_local global i32 0, align 4
@PIO_FIFO_CNT = common dso_local global i64 0, align 8
@fastpio = common dso_local global i64 0, align 8
@PIO_FIFO_1 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@PIO_INT_REG = common dso_local global i64 0, align 8
@EMPTY = common dso_local global i32 0, align 4
@SCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @sym53c416_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c416_read(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %13 = load i32, i32* @READ_TIMEOUT, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @sym53c416_lock, i64 %14)
  br label %16

16:                                               ; preds = %127, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %128

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @PIO_FIFO_CNT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* @fastpio, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = icmp ugt i32 %33, 3
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @PIO_FIFO_1, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = lshr i32 %41, 2
  %43 = call i32 @insl(i64 %39, i8* %40, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 252
  %46 = load i8*, i8** %5, align 8
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 252
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %127

53:                                               ; preds = %32, %24
  %54 = load i32, i32* %9, align 4
  %55 = icmp ugt i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %72, %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp ugt i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @PIO_FIFO_1, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @inb(i64 %67)
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8 %69, i8* %70, align 1
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %9, align 4
  br label %60

75:                                               ; preds = %60
  br label %126

76:                                               ; preds = %53
  %77 = load i32, i32* @jiffies, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* @sym53c416_lock, i64 %81)
  br label %83

83:                                               ; preds = %112, %76
  %84 = load i32, i32* @jiffies, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @time_before(i32 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @PIO_INT_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @inb(i64 %92)
  %94 = load i32, i32* @EMPTY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %97, %88, %83
  %101 = phi i1 [ false, %88 ], [ false, %83 ], [ %99, %97 ]
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @PIO_INT_REG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @inb(i64 %106)
  %108 = load i32, i32* @SCI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %102
  br label %83

113:                                              ; preds = %100
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @spin_lock_irqsave(i32* @sym53c416_lock, i64 %114)
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @PIO_INT_REG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @inb(i64 %119)
  %121 = load i32, i32* @EMPTY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %124, %113
  br label %126

126:                                              ; preds = %125, %75
  br label %127

127:                                              ; preds = %126, %35
  br label %16

128:                                              ; preds = %22
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* @sym53c416_lock, i64 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sub i32 %131, %132
  ret i32 %133
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @insl(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
