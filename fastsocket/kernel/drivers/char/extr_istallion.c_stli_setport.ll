; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_setport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { i32, %struct.stliport* }
%struct.stliport = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@A_SETPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @stli_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_setport(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.stliport*, align 8
  %5 = alloca %struct.stlibrd*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.stliport*, %struct.stliport** %8, align 8
  store %struct.stliport* %9, %struct.stliport** %4, align 8
  %10 = load %struct.stliport*, %struct.stliport** %4, align 8
  %11 = icmp eq %struct.stliport* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.stliport*, %struct.stliport** %4, align 8
  %17 = getelementptr inbounds %struct.stliport, %struct.stliport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @stli_nrbrds, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %15
  %25 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %26 = load %struct.stliport*, %struct.stliport** %4, align 8
  %27 = getelementptr inbounds %struct.stliport, %struct.stliport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %25, i64 %28
  %30 = load %struct.stlibrd*, %struct.stlibrd** %29, align 8
  store %struct.stlibrd* %30, %struct.stlibrd** %5, align 8
  %31 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %32 = icmp eq %struct.stlibrd* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = load %struct.stliport*, %struct.stliport** %4, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @stli_mkasyport(%struct.tty_struct* %37, %struct.stliport* %38, i32* %6, i32 %41)
  %43 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %44 = load %struct.stliport*, %struct.stliport** %4, align 8
  %45 = load i32, i32* @A_SETPORT, align 4
  %46 = call i32 @stli_cmdwait(%struct.stlibrd* %43, %struct.stliport* %44, i32 %45, i32* %6, i32 4, i32 0)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %33, %21, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @stli_mkasyport(%struct.tty_struct*, %struct.stliport*, i32*, i32) #1

declare dso_local i32 @stli_cmdwait(%struct.stlibrd*, %struct.stliport*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
