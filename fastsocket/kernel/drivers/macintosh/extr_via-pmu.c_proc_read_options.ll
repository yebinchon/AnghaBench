; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_proc_read_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_proc_read_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmu_kind = common dso_local global i64 0, align 8
@PMU_KEYLARGO_BASED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"server_mode=%d\0A\00", align 1
@option_server_mode = common dso_local global i32 0, align 4
@PMAC_FTR_SLEEP_STATE = common dso_local global i32 0, align 4
@option_lid_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_read_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read_options(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i64, i64* @pmu_kind, align 8
  %16 = load i64, i64* @PMU_KEYLARGO_BASED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load i8*, i8** %13, align 8
  %20 = load i32, i32* @option_server_mode, align 4
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %13, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %13, align 8
  br label %25

25:                                               ; preds = %18, %6
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
