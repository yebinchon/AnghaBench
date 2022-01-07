; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_print_absolute_symbols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_print_absolute_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.section = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"Absolute symbols\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c" Num:    Value Size  Type       Bind        Visibility  Name\0A\00", align 1
@ehdr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@secs = common dso_local global %struct.section* null, align 8
@SHT_SYMTAB = common dso_local global i64 0, align 8
@SHN_ABS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%5d %08x %5d %10s %10s %12s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_absolute_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_absolute_symbols() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.section*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %90, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ehdr, i32 0, i32 0), align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %93

14:                                               ; preds = %10
  %15 = load %struct.section*, %struct.section** @secs, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.section, %struct.section* %15, i64 %17
  store %struct.section* %18, %struct.section** %2, align 8
  %19 = load %struct.section*, %struct.section** %2, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SHT_SYMTAB, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %90

26:                                               ; preds = %14
  %27 = load %struct.section*, %struct.section** %2, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.section*, %struct.section** %2, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %86, %26
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.section*, %struct.section** %2, align 8
  %39 = getelementptr inbounds %struct.section, %struct.section* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 24
  %44 = icmp ult i64 %37, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %35
  %46 = load %struct.section*, %struct.section** %2, align 8
  %47 = getelementptr inbounds %struct.section, %struct.section* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %6, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i8* @sym_name(i8* %52, %struct.TYPE_8__* %53)
  store i8* %54, i8** %7, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SHN_ABS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %86

61:                                               ; preds = %45
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ELF32_ST_TYPE(i32 %71)
  %73 = call i8* @sym_type(i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ELF32_ST_BIND(i32 %76)
  %78 = call i8* @sym_bind(i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ELF32_ST_VISIBILITY(i32 %81)
  %83 = call i8* @sym_visibility(i32 %82)
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i8* %73, i8* %78, i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %61, %60
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %35

89:                                               ; preds = %35
  br label %90

90:                                               ; preds = %89, %25
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  br label %10

93:                                               ; preds = %10
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(i8*, %struct.TYPE_8__*) #1

declare dso_local i8* @sym_type(i32) #1

declare dso_local i32 @ELF32_ST_TYPE(i32) #1

declare dso_local i8* @sym_bind(i32) #1

declare dso_local i32 @ELF32_ST_BIND(i32) #1

declare dso_local i8* @sym_visibility(i32) #1

declare dso_local i32 @ELF32_ST_VISIBILITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
