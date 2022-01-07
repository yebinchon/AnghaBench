; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_os-area.c__dump_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_os-area.c__dump_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_area_db = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s:%d: db.magic_num:      '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s:%d: db.version:         %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s:%d: db.index_64:        %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s:%d: db.count_64:        %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s:%d: db.index_32:        %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s:%d: db.count_32:        %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s:%d: db.index_16:        %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s:%d: db.count_16:        %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.os_area_db*, i8*, i32)* @_dump_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dump_db(%struct.os_area_db* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.os_area_db*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8], align 1
  store %struct.os_area_db* %0, %struct.os_area_db** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %9 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %10 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dump_field(i8* %8, i32 %11, i32 4)
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %20 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %18, i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %26 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %23, i32 %24, i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %32 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %29, i32 %30, i8* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %38 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %35, i32 %36, i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %44 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %41, i32 %42, i8* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %50 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %47, i32 %48, i8* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.os_area_db*, %struct.os_area_db** %4, align 8
  %56 = getelementptr inbounds %struct.os_area_db, %struct.os_area_db* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %53, i32 %54, i8* %57)
  ret void
}

declare dso_local i32 @dump_field(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
