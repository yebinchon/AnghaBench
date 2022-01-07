; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_print_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"link lost (missed beacons)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"link lost (max retries)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"link lost (local choice)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"link lost (TSF sync lost)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"deauthenticated (reason: %d)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"disassociated (reason: %d)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"association failed (reason: %d)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"authentication failed (reason: %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @airo_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_print_status(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 255
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %37 [
    i32 129, label %9
    i32 130, label %12
    i32 131, label %12
    i32 132, label %15
    i32 128, label %18
    i32 134, label %21
    i32 133, label %25
    i32 136, label %29
    i32 135, label %33
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

12:                                               ; preds = %2, %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %38

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %38

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %38

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  br label %38

25:                                               ; preds = %2
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  br label %38

29:                                               ; preds = %2
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  br label %38

33:                                               ; preds = %2
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i8*, i8*, ...) @airo_print_dbg(i8* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %33, %29, %25, %21, %18, %15, %12, %9
  ret void
}

declare dso_local i32 @airo_print_dbg(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
