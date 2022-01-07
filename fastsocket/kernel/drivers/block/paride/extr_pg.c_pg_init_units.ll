; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_init_units.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_init_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i32, i32*, i64, i64, i32, i32, i32* }

@pg_drive_count = common dso_local global i64 0, align 8
@PG_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i32*** null, align 8
@devices = common dso_local global %struct.pg* null, align 8
@D_SLV = common dso_local global i64 0, align 8
@PG_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@name = common dso_local global i8* null, align 8
@D_PRT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pg_init_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_init_units() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.pg*, align 8
  store i64 0, i64* @pg_drive_count, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %56, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @PG_UNITS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %59

8:                                                ; preds = %4
  %9 = load i32***, i32**** @drives, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32**, i32*** %9, i64 %11
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %2, align 8
  %15 = load %struct.pg*, %struct.pg** @devices, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pg, %struct.pg* %15, i64 %17
  store %struct.pg* %18, %struct.pg** %3, align 8
  %19 = load %struct.pg*, %struct.pg** %3, align 8
  %20 = getelementptr inbounds %struct.pg, %struct.pg* %19, i32 0, i32 6
  %21 = load %struct.pg*, %struct.pg** %3, align 8
  %22 = getelementptr inbounds %struct.pg, %struct.pg* %21, i32 0, i32 7
  store i32* %20, i32** %22, align 8
  %23 = load %struct.pg*, %struct.pg** %3, align 8
  %24 = getelementptr inbounds %struct.pg, %struct.pg* %23, i32 0, i32 5
  %25 = call i32 @clear_bit(i32 0, i32* %24)
  %26 = load %struct.pg*, %struct.pg** %3, align 8
  %27 = getelementptr inbounds %struct.pg, %struct.pg* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.pg*, %struct.pg** %3, align 8
  %29 = getelementptr inbounds %struct.pg, %struct.pg* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.pg*, %struct.pg** %3, align 8
  %31 = getelementptr inbounds %struct.pg, %struct.pg* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i64, i64* @D_SLV, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pg*, %struct.pg** %3, align 8
  %37 = getelementptr inbounds %struct.pg, %struct.pg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pg*, %struct.pg** %3, align 8
  %39 = getelementptr inbounds %struct.pg, %struct.pg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PG_NAMELEN, align 4
  %42 = load i8*, i8** @name, align 8
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 97, %43
  %45 = trunc i32 %44 to i8
  %46 = call i32 @snprintf(i32 %40, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %42, i8 signext %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i64, i64* @D_PRT, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %8
  %53 = load i64, i64* @pg_drive_count, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* @pg_drive_count, align 8
  br label %55

55:                                               ; preds = %52, %8
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %4

59:                                               ; preds = %4
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
