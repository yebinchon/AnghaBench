; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_breakctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_breakctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { %struct.stliport* }
%struct.stliport = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@BREAKON = common dso_local global i64 0, align 8
@BREAKOFF = common dso_local global i64 0, align 8
@A_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @stli_breakctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_breakctl(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stlibrd*, align 8
  %7 = alloca %struct.stliport*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.stliport*, %struct.stliport** %10, align 8
  store %struct.stliport* %11, %struct.stliport** %7, align 8
  %12 = load %struct.stliport*, %struct.stliport** %7, align 8
  %13 = icmp eq %struct.stliport* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.stliport*, %struct.stliport** %7, align 8
  %19 = getelementptr inbounds %struct.stliport, %struct.stliport* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @stli_nrbrds, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %17
  %27 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %28 = load %struct.stliport*, %struct.stliport** %7, align 8
  %29 = getelementptr inbounds %struct.stliport, %struct.stliport* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %27, i64 %30
  %32 = load %struct.stlibrd*, %struct.stlibrd** %31, align 8
  store %struct.stlibrd* %32, %struct.stlibrd** %6, align 8
  %33 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %34 = icmp eq %struct.stlibrd* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @BREAKON, align 8
  br label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @BREAKOFF, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  store i64 %46, i64* %8, align 8
  %47 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %48 = load %struct.stliport*, %struct.stliport** %7, align 8
  %49 = load i32, i32* @A_BREAK, align 4
  %50 = call i32 @stli_cmdwait(%struct.stlibrd* %47, %struct.stliport* %48, i32 %49, i64* %8, i32 8, i32 0)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %35, %23, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @stli_cmdwait(%struct.stlibrd*, %struct.stliport*, i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
