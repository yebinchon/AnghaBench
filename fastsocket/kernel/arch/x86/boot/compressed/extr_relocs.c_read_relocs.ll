; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_read_relocs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_read_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.section = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64, i32, i32 }

@ehdr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@secs = common dso_local global %struct.section* null, align 8
@SHT_REL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"malloc of %d bytes for relocs failed\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Seek to %d failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot read symbol table: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_relocs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %111, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ehdr, i32 0, i32 0), align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %114

11:                                               ; preds = %7
  %12 = load %struct.section*, %struct.section** @secs, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.section, %struct.section* %12, i64 %14
  store %struct.section* %15, %struct.section** %5, align 8
  %16 = load %struct.section*, %struct.section** %5, align 8
  %17 = getelementptr inbounds %struct.section, %struct.section* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SHT_REL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %111

23:                                               ; preds = %11
  %24 = load %struct.section*, %struct.section** %5, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_7__* @malloc(i32 %27)
  %29 = load %struct.section*, %struct.section** %5, align 8
  %30 = getelementptr inbounds %struct.section, %struct.section* %29, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.section*, %struct.section** %5, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load %struct.section*, %struct.section** %5, align 8
  %37 = getelementptr inbounds %struct.section, %struct.section* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %23
  %42 = load i32*, i32** %2, align 8
  %43 = load %struct.section*, %struct.section** %5, align 8
  %44 = getelementptr inbounds %struct.section, %struct.section* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i64 @fseek(i32* %42, i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.section*, %struct.section** %5, align 8
  %52 = getelementptr inbounds %struct.section, %struct.section* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %50, %41
  %59 = load %struct.section*, %struct.section** %5, align 8
  %60 = getelementptr inbounds %struct.section, %struct.section* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load %struct.section*, %struct.section** %5, align 8
  %63 = getelementptr inbounds %struct.section, %struct.section* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @fread(%struct.TYPE_7__* %61, i32 1, i32 %65, i32* %66)
  %68 = load %struct.section*, %struct.section** %5, align 8
  %69 = getelementptr inbounds %struct.section, %struct.section* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 @strerror(i32 %74)
  %76 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %58
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %107, %77
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.section*, %struct.section** %5, align 8
  %82 = getelementptr inbounds %struct.section, %struct.section* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 16
  %87 = icmp ult i64 %80, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %78
  %89 = load %struct.section*, %struct.section** %5, align 8
  %90 = getelementptr inbounds %struct.section, %struct.section* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @elf32_to_cpu(i8* %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @elf32_to_cpu(i8* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %78

110:                                              ; preds = %78
  br label %111

111:                                              ; preds = %110, %22
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %7

114:                                              ; preds = %7
  ret void
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fread(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i8* @elf32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
