; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { i32, %struct.stliport* }
%struct.stliport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@A_GETSIGNALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @stli_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stliport*, align 8
  %7 = alloca %struct.stlibrd*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.stliport*, %struct.stliport** %10, align 8
  store %struct.stliport* %11, %struct.stliport** %6, align 8
  %12 = load %struct.stliport*, %struct.stliport** %6, align 8
  %13 = icmp eq %struct.stliport* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.stliport*, %struct.stliport** %6, align 8
  %19 = getelementptr inbounds %struct.stliport, %struct.stliport* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @stli_nrbrds, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %61

24:                                               ; preds = %17
  %25 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %26 = load %struct.stliport*, %struct.stliport** %6, align 8
  %27 = getelementptr inbounds %struct.stliport, %struct.stliport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %25, i64 %28
  %30 = load %struct.stlibrd*, %struct.stlibrd** %29, align 8
  store %struct.stlibrd* %30, %struct.stlibrd** %7, align 8
  %31 = load %struct.stlibrd*, %struct.stlibrd** %7, align 8
  %32 = icmp eq %struct.stlibrd* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %61

34:                                               ; preds = %24
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TTY_IO_ERROR, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %34
  %46 = load %struct.stlibrd*, %struct.stlibrd** %7, align 8
  %47 = load %struct.stliport*, %struct.stliport** %6, align 8
  %48 = load i32, i32* @A_GETSIGNALS, align 4
  %49 = load %struct.stliport*, %struct.stliport** %6, align 8
  %50 = getelementptr inbounds %struct.stliport, %struct.stliport* %49, i32 0, i32 1
  %51 = call i32 @stli_cmdwait(%struct.stlibrd* %46, %struct.stliport* %47, i32 %48, %struct.TYPE_2__* %50, i32 4, i32 1)
  store i32 %51, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %45
  %56 = load %struct.stliport*, %struct.stliport** %6, align 8
  %57 = getelementptr inbounds %struct.stliport, %struct.stliport* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @stli_mktiocm(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %53, %42, %33, %23, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @stli_cmdwait(%struct.stlibrd*, %struct.stliport*, i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @stli_mktiocm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
