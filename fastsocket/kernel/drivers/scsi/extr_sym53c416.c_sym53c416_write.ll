; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WRITE_TIMEOUT = common dso_local global i32 0, align 4
@sym53c416_lock = common dso_local global i32 0, align 4
@PIO_SIZE = common dso_local global i32 0, align 4
@PIO_FIFO_CNT = common dso_local global i64 0, align 8
@fastpio = common dso_local global i64 0, align 8
@PIO_FIFO_1 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@PIO_INT_REG = common dso_local global i64 0, align 8
@FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @sym53c416_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c416_write(i32 %0, i8* %1, i32 %2) #0 {
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
  %13 = load i32, i32* @WRITE_TIMEOUT, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @sym53c416_lock, i64 %14)
  br label %16

16:                                               ; preds = %126, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %127

24:                                               ; preds = %22
  %25 = load i32, i32* @PIO_SIZE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @PIO_FIFO_CNT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @inb(i64 %29)
  %31 = sub i32 %25, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i64, i64* @fastpio, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PIO_FIFO_1, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = lshr i32 %49, 2
  %51 = call i32 @outsl(i64 %47, i8* %48, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 252
  %54 = load i8*, i8** %5, align 8
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 252
  %59 = load i32, i32* %6, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %126

61:                                               ; preds = %40, %37
  %62 = load i32, i32* %9, align 4
  %63 = icmp ugt i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %81, %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp ugt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i32
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @PIO_FIFO_1, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 %75, i64 %79)
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %9, align 4
  br label %68

84:                                               ; preds = %68
  br label %125

85:                                               ; preds = %61
  %86 = load i32, i32* @jiffies, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %86, %87
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* @sym53c416_lock, i64 %90)
  br label %92

92:                                               ; preds = %111, %85
  %93 = load i32, i32* @jiffies, align 4
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @time_before(i32 %93, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @PIO_INT_REG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @inb(i64 %101)
  %103 = load i32, i32* @FULL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %97, %92
  %110 = phi i1 [ false, %97 ], [ false, %92 ], [ %108, %106 ]
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  br label %92

112:                                              ; preds = %109
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @spin_lock_irqsave(i32* @sym53c416_lock, i64 %113)
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @PIO_INT_REG, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @inb(i64 %118)
  %120 = load i32, i32* @FULL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %112
  br label %125

125:                                              ; preds = %124, %84
  br label %126

126:                                              ; preds = %125, %43
  br label %16

127:                                              ; preds = %22
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* @sym53c416_lock, i64 %128)
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub i32 %130, %131
  ret i32 %132
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outsl(i64, i8*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
