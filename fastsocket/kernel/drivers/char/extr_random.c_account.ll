; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_account.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"trying to extract %d bits from %s\0A\00", align 1
@random_write_wakeup_thresh = common dso_local global i32 0, align 4
@random_write_wait = common dso_local global i32 0, align 4
@fasync = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"debiting %d entropy credits from %s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" (unlimited)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.entropy_store*, i64, i32, i32)* @account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @account(%struct.entropy_store* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.entropy_store*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.entropy_store* %0, %struct.entropy_store** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %11 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %10, i32 0, i32 1
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %15 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %18 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %16, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = mul i64 %25, 8
  %27 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %28 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, i64, i32, ...) @DEBUG_ENT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29)
  %31 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %32 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  store i64 0, i64* %6, align 8
  br label %100

40:                                               ; preds = %4
  %41 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %42 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %51 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 8
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %49, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %58 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %56, %45, %40
  %65 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %66 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %67, 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = icmp uge i64 %69, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  %76 = load i64, i64* %6, align 8
  %77 = mul i64 %76, 8
  %78 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %79 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  br label %88

84:                                               ; preds = %64
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %87 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %75
  %89 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %90 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @random_write_wakeup_thresh, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = call i32 @wake_up_interruptible(i32* @random_write_wait)
  %96 = load i32, i32* @SIGIO, align 4
  %97 = load i32, i32* @POLL_OUT, align 4
  %98 = call i32 @kill_fasync(i32* @fasync, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %88
  br label %100

100:                                              ; preds = %99, %39
  %101 = load i64, i64* %6, align 8
  %102 = mul i64 %101, 8
  %103 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %104 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %107 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %112 = call i32 (i8*, i64, i32, ...) @DEBUG_ENT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %102, i32 %105, i8* %111)
  %113 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %114 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %113, i32 0, i32 1
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load i64, i64* %6, align 8
  ret i64 %117
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DEBUG_ENT(i8*, i64, i32, ...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
