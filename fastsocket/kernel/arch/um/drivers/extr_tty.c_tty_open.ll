; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_tty.c_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_tty.c_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_chan = type { i8*, i32, i64 }

@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8**)* @tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_open(i32 %0, i32 %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.tty_chan*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.tty_chan*
  store %struct.tty_chan* %17, %struct.tty_chan** %12, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @O_RDWR, align 4
  store i32 %24, i32* %15, align 4
  br label %37

25:                                               ; preds = %20, %5
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @O_RDONLY, align 4
  store i32 %29, i32* %15, align 4
  br label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @O_WRONLY, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %33, %30
  br label %36

36:                                               ; preds = %35, %28
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.tty_chan*, %struct.tty_chan** %12, align 8
  %39 = getelementptr inbounds %struct.tty_chan, %struct.tty_chan* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @open(i8* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @errno, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %77

48:                                               ; preds = %37
  %49 = load %struct.tty_chan*, %struct.tty_chan** %12, align 8
  %50 = getelementptr inbounds %struct.tty_chan, %struct.tty_chan* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.tty_chan*, %struct.tty_chan** %12, align 8
  %56 = getelementptr inbounds %struct.tty_chan, %struct.tty_chan* %55, i32 0, i32 1
  %57 = call i32 @tcgetattr(i32 %54, i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = call i32 @CATCH_EINTR(i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %77

63:                                               ; preds = %53
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @raw(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.tty_chan*, %struct.tty_chan** %12, align 8
  %73 = getelementptr inbounds %struct.tty_chan, %struct.tty_chan* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %11, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %68, %61, %45
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @CATCH_EINTR(i32) #1

declare dso_local i32 @tcgetattr(i32, i32*) #1

declare dso_local i32 @raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
