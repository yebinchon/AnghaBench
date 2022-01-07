; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }
%struct.chan_opts = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Can't configure all devices from mconsole\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to allocate memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_config(%struct.line* %0, i32 %1, i8* %2, %struct.chan_opts* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.chan_opts*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.line*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.chan_opts* %3, %struct.chan_opts** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 61
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %56

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kstrdup(i8* %24, i32 %25)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %56

33:                                               ; preds = %23
  %34 = load %struct.line*, %struct.line** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i8**, i8*** %11, align 8
  %38 = call i32 @line_setup(%struct.line* %34, i32 %35, i8* %36, i8** %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %56

43:                                               ; preds = %33
  %44 = load %struct.line*, %struct.line** %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.line, %struct.line* %44, i64 %46
  store %struct.line* %47, %struct.line** %12, align 8
  %48 = load %struct.line*, %struct.line** %12, align 8
  %49 = getelementptr inbounds %struct.line, %struct.line* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.line*, %struct.line** %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %54 = load i8**, i8*** %11, align 8
  %55 = call i32 @parse_chan_pair(i32 %50, %struct.line* %51, i32 %52, %struct.chan_opts* %53, i8** %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %43, %41, %29, %19
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @line_setup(%struct.line*, i32, i8*, i8**) #1

declare dso_local i32 @parse_chan_pair(i32, %struct.line*, i32, %struct.chan_opts*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
