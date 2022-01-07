; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_devtree.c_dt_fixup_cpu_clocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_devtree.c_dt_fixup_cpu_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"CPU clock-frequency <- 0x%x (%dMHz)\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"CPU timebase-frequency <- 0x%x (%dMHz)\0A\0D\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"CPU bus-frequency <- 0x%x (%dMHz)\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"timebase-frequency\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@timebase_period_ns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_fixup_cpu_clocks(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MHZ(i32 %9)
  %11 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @MHZ(i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @MHZ(i32 %20)
  %22 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %3
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @find_node_by_devtype(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @setprop_val(i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @setprop_val(i8* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @setprop_val(i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %28
  br label %24

42:                                               ; preds = %24
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 1000000000, %43
  store i32 %44, i32* @timebase_period_ns, align 4
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @MHZ(i32) #1

declare dso_local i8* @find_node_by_devtype(i8*, i8*) #1

declare dso_local i32 @setprop_val(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
