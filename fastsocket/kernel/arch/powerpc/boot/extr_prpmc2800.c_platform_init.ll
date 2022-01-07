; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.elf_info = type { i64, i64 }

@_dtb_end = common dso_local global i32 0, align 4
@_dtb_start = common dso_local global i32 0, align 4
@_vmlinux_start = common dso_local global i8* null, align 8
@_vmlinux_end = common dso_local global i8* null, align 8
@gzstate = common dso_local global i32 0, align 4
@_end = common dso_local global i64 0, align 8
@HEAP_SIZE = common dso_local global i32 0, align 4
@KB = common dso_local global i32 0, align 4
@MB = common dso_local global i32 0, align 4
@bridge_base = common dso_local global i32 0, align 4
@prpmc2800_fixups = common dso_local global i32 0, align 4
@platform_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@prpmc2800_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.elf_info, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [256 x i8], align 16
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load i32, i32* @_dtb_end, align 4
  %19 = load i32, i32* @_dtb_start, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %14, align 4
  %21 = load i8*, i8** @_vmlinux_start, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i8*, i8** @_vmlinux_end, align 8
  %23 = load i8*, i8** @_vmlinux_start, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  store i64 %26, i64* %16, align 8
  %27 = load i32, i32* %14, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = call i32 (...) @exit() #3
  unreachable

31:                                               ; preds = %5
  %32 = load i8*, i8** %15, align 8
  %33 = load i64, i64* %16, align 8
  %34 = call i32 @gunzip_start(i32* @gzstate, i8* %32, i64 %33)
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %36 = call i32 @gunzip_exactly(i32* @gzstate, i8* %35, i32 256)
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %38 = call i32 @parse_elf32(i8* %37, %struct.elf_info* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = call i32 (...) @exit() #3
  unreachable

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %11, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %11, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %44, %46
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* @_end, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i8* @max(i8* %49, i8* %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* @HEAP_SIZE, align 4
  %55 = load i32, i32* @KB, align 4
  %56 = mul nsw i32 2, %55
  %57 = call i64 @simple_alloc_init(i8* %53, i32 %54, i32 %56, i32 16)
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @MB, align 4
  %60 = mul nsw i32 128, %59
  %61 = icmp ugt i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = call i32 (...) @exit() #3
  unreachable

64:                                               ; preds = %42
  %65 = load i32, i32* %14, align 4
  %66 = call i8* @malloc(i32 %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i32 (...) @exit() #3
  unreachable

71:                                               ; preds = %64
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* @_dtb_start, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @memmove(i8* %72, i32 %73, i32 %74)
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @fdt_init(i8* %76)
  %78 = call i32 (...) @mv64x60_get_bridge_base()
  store i32 %78, i32* @bridge_base, align 4
  %79 = load i32, i32* @prpmc2800_fixups, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 1), align 4
  %80 = load i32, i32* @prpmc2800_reset, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 0), align 4
  %81 = call i64 (...) @serial_console_init()
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = call i32 (...) @exit() #3
  unreachable

85:                                               ; preds = %71
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(...) #1

declare dso_local i32 @gunzip_start(i32*, i8*, i64) #2

declare dso_local i32 @gunzip_exactly(i32*, i8*, i32) #2

declare dso_local i32 @parse_elf32(i8*, %struct.elf_info*) #2

declare dso_local i8* @max(i8*, i8*) #2

declare dso_local i64 @simple_alloc_init(i8*, i32, i32, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memmove(i8*, i32, i32) #2

declare dso_local i32 @fdt_init(i8*) #2

declare dso_local i32 @mv64x60_get_bridge_base(...) #2

declare dso_local i64 @serial_console_init(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
