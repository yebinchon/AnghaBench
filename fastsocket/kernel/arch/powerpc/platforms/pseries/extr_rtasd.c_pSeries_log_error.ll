; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_rtasd.c_pSeries_log_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_rtasd.c_pSeries_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"rtasd: logging event\0A\00", align 1
@rtasd_log_lock = common dso_local global i32 0, align 4
@ERR_TYPE_MASK = common dso_local global i32 0, align 4
@ERR_FLAG_BOOT = common dso_local global i32 0, align 4
@error_log_cnt = common dso_local global i32 0, align 4
@logging_enabled = common dso_local global i64 0, align 8
@rtas_error_log_buffer_max = common dso_local global i32 0, align 4
@rtas_log_start = common dso_local global i32 0, align 4
@rtas_log_size = common dso_local global i32 0, align 4
@LOG_NUMBER_MASK = common dso_local global i32 0, align 4
@rtas_log_buf = common dso_local global i32* null, align 8
@LOG_NUMBER = common dso_local global i32 0, align 4
@rtas_log_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pSeries_log_error(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %129

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @rtasd_log_lock, i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ERR_TYPE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %32 [
    i32 128, label %20
    i32 129, label %31
  ]

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @log_rtas_len(i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ERR_FLAG_BOOT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @error_log_cnt, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @error_log_cnt, align 4
  br label %30

30:                                               ; preds = %27, %20
  br label %40

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %14, %31
  %33 = call i32 (...) @irqs_disabled()
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %38)
  br label %129

40:                                               ; preds = %30
  %41 = load i64, i64* @logging_enabled, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ERR_FLAG_BOOT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @error_log_cnt, align 4
  %53 = call i32 @nvram_write_error_log(i8* %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %43, %40
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @ERR_TYPE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @printk_log_rtas(i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @logging_enabled, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66, %63
  store i64 0, i64* @logging_enabled, align 8
  %70 = call i32 (...) @irqs_disabled()
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON_ONCE(i32 %73)
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %75)
  br label %129

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @ERR_TYPE_MASK, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %121 [
    i32 128, label %81
    i32 129, label %120
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @rtas_error_log_buffer_max, align 4
  %83 = load i32, i32* @rtas_log_start, align 4
  %84 = load i32, i32* @rtas_log_size, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @LOG_NUMBER_MASK, align 4
  %87 = and i32 %85, %86
  %88 = mul nsw i32 %82, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %7, align 8
  %90 = load i32*, i32** @rtas_log_buf, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = call i32 @memcpy(i32* %92, i8* bitcast (i32* @error_log_cnt to i8*), i32 4)
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %7, align 8
  %96 = load i32*, i32** @rtas_log_buf, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @memcpy(i32* %98, i8* %99, i32 %100)
  %102 = load i32, i32* @rtas_log_size, align 4
  %103 = load i32, i32* @LOG_NUMBER, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load i32, i32* @rtas_log_size, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @rtas_log_size, align 4
  br label %111

108:                                              ; preds = %81
  %109 = load i32, i32* @rtas_log_start, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @rtas_log_start, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = call i32 (...) @irqs_disabled()
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @WARN_ON_ONCE(i32 %115)
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %117)
  %119 = call i32 @wake_up_interruptible(i32* @rtas_log_wait)
  br label %129

120:                                              ; preds = %77
  br label %121

121:                                              ; preds = %77, %120
  %122 = call i32 (...) @irqs_disabled()
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @WARN_ON_ONCE(i32 %125)
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %127)
  br label %129

129:                                              ; preds = %13, %32, %69, %121, %111
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @log_rtas_len(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvram_write_error_log(i8*, i32, i32, i32) #1

declare dso_local i32 @printk_log_rtas(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
