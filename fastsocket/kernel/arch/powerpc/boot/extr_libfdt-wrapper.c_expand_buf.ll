; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_libfdt-wrapper.c_expand_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_libfdt-wrapper.c_expand_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i32)* }

@fdt = common dso_local global i64 0, align 8
@EXPAND_GRANULARITY = common dso_local global i32 0, align 4
@platform_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@buf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Couldn't find %d bytes to expand device tree\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't expand fdt into new buffer: %s\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @expand_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_buf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @fdt, align 8
  %6 = call i32 @fdt_totalsize(i64 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %7, %8
  %10 = load i32, i32* @EXPAND_GRANULARITY, align 4
  %11 = call i32 @_ALIGN(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i64 (i64, i32)*, i64 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 0), align 8
  %13 = load i64, i64* @buf, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 %12(i64 %13, i32 %14)
  store i64 %15, i64* @buf, align 8
  %16 = load i64, i64* @buf, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i64, i64* @fdt, align 8
  %23 = load i64, i64* @buf, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @fdt_open_into(i64 %22, i64 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @fdt_strerror(i32 %29)
  %31 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i64, i64* @buf, align 8
  store i64 %33, i64* @fdt, align 8
  ret void
}

declare dso_local i32 @fdt_totalsize(i64) #1

declare dso_local i32 @_ALIGN(i32, i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @fdt_open_into(i64, i64, i32) #1

declare dso_local i32 @fdt_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
