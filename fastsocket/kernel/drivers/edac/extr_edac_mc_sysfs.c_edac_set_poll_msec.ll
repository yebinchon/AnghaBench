; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_edac_set_poll_msec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_edac_set_poll_msec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @edac_set_poll_msec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_set_poll_msec(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strict_strtol(i8* %14, i32 0, i64* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %13
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %33 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32 %31, i32* %35, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @edac_mc_reset_delay_period(i64 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %26, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @edac_mc_reset_delay_period(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
