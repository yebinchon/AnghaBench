; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_write_then_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_write_then_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@spi_write_then_read.lock = internal global i32 0, align 4
@SPI_BUFSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_write_then_read(%struct.spi_device* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca [2 x %struct.spi_transfer], align 16
  %15 = alloca i32*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* @SPI_BUFSIZ, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %98

24:                                               ; preds = %5
  %25 = call i32 @spi_message_init(%struct.spi_message* %13)
  %26 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %27 = call i32 @memset(%struct.spi_transfer* %26, i32 0, i32 48)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 16
  %34 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %35 = call i32 @spi_message_add_tail(%struct.spi_transfer* %34, %struct.spi_message* %13)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %44 = call i32 @spi_message_add_tail(%struct.spi_transfer* %43, %struct.spi_message* %13)
  br label %45

45:                                               ; preds = %39, %36
  %46 = call i32 @mutex_trylock(i32* @spi_write_then_read.lock)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @SPI_BUFSIZ, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kmalloc(i32 %49, i32 %50)
  store i32* %51, i32** %15, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %98

57:                                               ; preds = %48
  br label %60

58:                                               ; preds = %45
  %59 = load i32*, i32** @buf, align 8
  store i32* %59, i32** %15, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32*, i32** %15, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memcpy(i32* %61, i32* %62, i32 %63)
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %73 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %75 = call i32 @spi_sync(%struct.spi_device* %74, %struct.spi_message* %13)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %60
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %81 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @memcpy(i32* %79, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %60
  %86 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %87 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** @buf, align 8
  %90 = icmp eq i32* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @mutex_unlock(i32* @spi_write_then_read.lock)
  br label %96

93:                                               ; preds = %85
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @kfree(i32* %94)
  br label %96

96:                                               ; preds = %93, %91
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %54, %21
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
