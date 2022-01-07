; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_setup.c_bcm47xx_get_invariants.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_setup.c_bcm47xx_get_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }
%struct.ssb_init_invariants = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"boardvendor\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"boardtype\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"boardrev\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"et0macaddr\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"et1macaddr\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"et0phyaddr\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"et1phyaddr\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"et0mdcport\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"et1mdcport\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, %struct.ssb_init_invariants*)* @bcm47xx_get_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xx_get_invariants(%struct.ssb_bus* %0, %struct.ssb_init_invariants* %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_init_invariants*, align 8
  %5 = alloca [100 x i8], align 16
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store %struct.ssb_init_invariants* %1, %struct.ssb_init_invariants** %4, align 8
  %6 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %7 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %6, i32 0, i32 1
  %8 = call i32 @memset(%struct.TYPE_2__* %7, i32 0, i32 4)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %10 = call i64 @cfe_getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %9, i32 100)
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %14 = call i8* @simple_strtoul(i8* %13, i32* null, i32 0)
  %15 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %16 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  store i8* %14, i8** %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %20 = call i64 @cfe_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 100)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %24 = call i8* @simple_strtoul(i8* %23, i32* null, i32 0)
  %25 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %26 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 8
  store i8* %24, i8** %27, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %30 = call i64 @cfe_getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 100)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %34 = call i8* @simple_strtoul(i8* %33, i32* null, i32 0)
  %35 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %36 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  store i8* %34, i8** %37, align 8
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %40 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %39, i32 0, i32 0
  %41 = call i32 @memset(%struct.TYPE_2__* %40, i32 0, i32 4)
  %42 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %43 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 3, i32* %44, align 8
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %46 = call i64 @cfe_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 100)
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %50 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %51 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @str2eaddr(i8* %49, i32 %53)
  br label %55

55:                                               ; preds = %48, %38
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %57 = call i64 @cfe_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %56, i32 100)
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %61 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %62 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @str2eaddr(i8* %60, i32 %64)
  br label %66

66:                                               ; preds = %59, %55
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %68 = call i64 @cfe_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %67, i32 100)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %72 = call i8* @simple_strtoul(i8* %71, i32* null, i32 10)
  %73 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %74 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  store i8* %72, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %66
  %77 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %78 = call i64 @cfe_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %77, i32 100)
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %82 = call i8* @simple_strtoul(i8* %81, i32* null, i32 10)
  %83 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %84 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %88 = call i64 @cfe_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %87, i32 100)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %92 = call i8* @simple_strtoul(i8* %91, i32* null, i32 10)
  %93 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %94 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i8* %92, i8** %95, align 8
  br label %96

96:                                               ; preds = %90, %86
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %98 = call i64 @cfe_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %97, i32 100)
  %99 = icmp sge i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %102 = call i8* @simple_strtoul(i8* %101, i32* null, i32 10)
  %103 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %104 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  br label %106

106:                                              ; preds = %100, %96
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @cfe_getenv(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @str2eaddr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
