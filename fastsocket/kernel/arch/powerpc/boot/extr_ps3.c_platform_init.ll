; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_ps3.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_ps3.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 (...)* }
%struct.TYPE_5__ = type { i64 (...)* }

@_end = common dso_local global i64 0, align 8
@ps3_console_write = common dso_local global i32 0, align 4
@console_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@platform_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0A-- PS3 bootwrapper --\0A\00", align 1
@_dtb_start = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@_initrd_end = common dso_local global i64 0, align 8
@_initrd_start = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@dt_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c" flat tree at 0x%lx\0A\0D\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"null check failed: %lx != %lx\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* @_end, align 8
  %9 = sub nsw i64 16777216, %8
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @ps3_console_write, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @console_ops, i32 0, i32 0), align 4
  store i32 (...)* @ps3_exit, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @platform_ops, i32 0, i32 0), align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @_end, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @simple_alloc_init(i64 %12, i64 %13, i32 32, i32 64)
  %15 = load i32, i32* @_dtb_start, align 4
  %16 = call i32 @fdt_init(i32 %15)
  %17 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  %18 = call i32 @ps3_repository_read_rm_size(i32* %6)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dt_fixup_memory(i32 0, i32 %19)
  %21 = load i64, i64* @_initrd_end, align 8
  %22 = load i64, i64* @_initrd_start, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* @_initrd_start, align 8
  %27 = call i32 @setprop_val(i8* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* @_initrd_end, align 8
  %30 = call i32 @setprop_val(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @prep_cmdline(i8* %32)
  %34 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dt_ops, i32 0, i32 0), align 8
  %35 = call i64 (...) %34()
  store i64 %35, i64* %5, align 8
  %36 = call i32 (...) @ps3_copy_vectors()
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* null, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %2, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %2, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %31
  %48 = load i64, i64* %5, align 8
  %49 = call i32 null(i64 %48, i32 0, i32* null)
  %50 = call i32 (...) @ps3_exit()
  ret void
}

declare dso_local i32 @ps3_exit(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @simple_alloc_init(i64, i64, i32, i32) #1

declare dso_local i32 @fdt_init(i32) #1

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i32 @ps3_repository_read_rm_size(i32*) #1

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @setprop_val(i8*, i8*, i64) #1

declare dso_local i32 @prep_cmdline(i8*) #1

declare dso_local i32 @ps3_copy_vectors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
