; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_read_fifo_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_read_fifo_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@R592_FIFO_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r592_device*, i8*, i32)* @r592_read_fifo_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_read_fifo_pio(%struct.r592_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.r592_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %10 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %9, i32 0, i32 0
  %11 = call i32 @kfifo_is_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %3
  %14 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %15 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %14, i32 0, i32 0
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @min(i32 4, i32 %17)
  %19 = call i32 @kfifo_out(i32* %15, i8* %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %28 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %27, i32 0, i32 0
  %29 = call i32 @kfifo_is_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %13
  br label %69

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %3
  br label %34

34:                                               ; preds = %37, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 4
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %39 = load i32, i32* @R592_FIFO_PIO, align 4
  %40 = call i32 @r592_read_reg_raw_be(%struct.r592_device* %38, i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 4
  store i32 %46, i32* %6, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %52 = load i32, i32* @R592_FIFO_PIO, align 4
  %53 = call i32 @r592_read_reg_raw_be(%struct.r592_device* %51, i32 %52)
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %53, i32* %54, align 16
  %55 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %56 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %58 = call i32 @kfifo_in(i32* %56, i32* %57, i32 4)
  %59 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %60 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %59, i32 0, i32 0
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @kfifo_out(i32* %60, i8* %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %50, %47
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @WARN_ON(i32 %67)
  br label %69

69:                                               ; preds = %66, %31
  ret void
}

declare dso_local i32 @kfifo_is_empty(i32*) #1

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @r592_read_reg_raw_be(%struct.r592_device*, i32) #1

declare dso_local i32 @kfifo_in(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
