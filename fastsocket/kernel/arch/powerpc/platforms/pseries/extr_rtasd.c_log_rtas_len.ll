; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_rtasd.c_log_rtas_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_rtasd.c_log_rtas_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_error_log = type { i64 }

@rtas_error_log_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @log_rtas_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_rtas_len(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtas_error_log*, align 8
  store i8* %0, i8** %2, align 8
  store i32 8, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rtas_error_log*
  store %struct.rtas_error_log* %6, %struct.rtas_error_log** %4, align 8
  %7 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %8 = getelementptr inbounds %struct.rtas_error_log, %struct.rtas_error_log* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %13 = getelementptr inbounds %struct.rtas_error_log, %struct.rtas_error_log* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @rtas_error_log_max, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @rtas_get_error_log_max()
  store i32 %23, i32* @rtas_error_log_max, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @rtas_error_log_max, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @rtas_error_log_max, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @rtas_get_error_log_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
