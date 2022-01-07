; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_io.c_crisv32_io_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_io.c_crisv32_io_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.crisv32_iopin = type { i32, %struct.TYPE_2__* }

@EINVAL = common dso_local global i32 0, align 4
@crisv32_ioports = common dso_local global %struct.TYPE_2__* null, align 8
@pinmux_gpio = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_io_get_name(%struct.crisv32_iopin* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crisv32_iopin*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crisv32_iopin* %0, %struct.crisv32_iopin** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = call signext i8 @toupper(i8 signext %9)
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 80
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call signext i8 @toupper(i8 signext %18)
  %20 = sext i8 %19 to i32
  %21 = icmp slt i32 %20, 65
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call signext i8 @toupper(i8 signext %24)
  %26 = sext i8 %25 to i32
  %27 = icmp sgt i32 %26, 69
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %76

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call signext i8 @toupper(i8 signext %33)
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 65
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @simple_strtoul(i8* %39, i32* null, i32 10)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @crisv32_ioports, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %44, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43, %31
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.crisv32_iopin*, %struct.crisv32_iopin** %4, align 8
  %59 = getelementptr inbounds %struct.crisv32_iopin, %struct.crisv32_iopin* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @crisv32_ioports, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = load %struct.crisv32_iopin*, %struct.crisv32_iopin** %4, align 8
  %65 = getelementptr inbounds %struct.crisv32_iopin, %struct.crisv32_iopin* %64, i32 0, i32 1
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @pinmux_gpio, align 4
  %70 = call i64 @crisv32_pinmux_alloc(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72, %52, %28
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @crisv32_pinmux_alloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
