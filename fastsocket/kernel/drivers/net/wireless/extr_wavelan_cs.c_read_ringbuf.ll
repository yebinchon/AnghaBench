; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_read_ringbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_read_ringbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@PIORH_MASK = common dso_local global i32 0, align 4
@RX_BASE = common dso_local global i32 0, align 4
@RX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*, i32)* @read_ringbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ringbuf(%struct.net_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  br label %18

18:                                               ; preds = %49, %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @PIORL(i32 %24)
  %26 = call i32 @outb(i32 %23, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 8
  %29 = load i32, i32* @PIORH_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @PIORH(i32 %31)
  %33 = call i32 @outb(i32 %30, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @RX_BASE, align 4
  %38 = load i32, i32* @RX_SIZE, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %11, align 4
  br label %49

43:                                               ; preds = %21
  %44 = load i32, i32* @RX_BASE, align 4
  %45 = load i32, i32* @RX_SIZE, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %43, %41
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @PIOP(i32 %50)
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @insb(i32 %51, i8* %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @RX_BASE, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @RX_SIZE, align 4
  %68 = srem i32 %66, %67
  %69 = load i32, i32* @RX_BASE, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %10, align 4
  br label %18

71:                                               ; preds = %18
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @PIORL(i32) #1

declare dso_local i32 @PIORH(i32) #1

declare dso_local i32 @insb(i32, i8*, i32) #1

declare dso_local i32 @PIOP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
