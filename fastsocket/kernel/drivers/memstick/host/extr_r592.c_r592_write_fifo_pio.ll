; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_write_fifo_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_write_fifo_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@R592_FIFO_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r592_device*, i8*, i32)* @r592_write_fifo_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_write_fifo_pio(%struct.r592_device* %0, i8* %1, i32 %2) #0 {
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
  br i1 %12, label %46, label %13

13:                                               ; preds = %3
  %14 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %16 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %15, i32 0, i32 0
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @kfifo_in(i32* %16, i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %21 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %20, i32 0, i32 0
  %22 = call i32 @kfifo_is_full(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %77

25:                                               ; preds = %13
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %5, align 8
  %33 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %34 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %36 = call i32 @kfifo_out(i32* %34, i32* %35, i32 4)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %42 = load i32, i32* @R592_FIFO_PIO, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = call i32 @r592_write_reg_raw_be(%struct.r592_device* %41, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %25, %3
  %47 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %48 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %47, i32 0, i32 0
  %49 = call i32 @kfifo_is_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  br label %54

54:                                               ; preds = %57, %46
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %55, 4
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %59 = load i32, i32* @R592_FIFO_PIO, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @r592_write_reg_raw_be(%struct.r592_device* %58, i32 %59, i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  store i8* %65, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 4
  store i32 %67, i32* %6, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %73 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %72, i32 0, i32 0
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @kfifo_in(i32* %73, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %24, %71, %68
  ret void
}

declare dso_local i32 @kfifo_is_empty(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @kfifo_is_full(i32*) #1

declare dso_local i32 @kfifo_out(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @r592_write_reg_raw_be(%struct.r592_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
