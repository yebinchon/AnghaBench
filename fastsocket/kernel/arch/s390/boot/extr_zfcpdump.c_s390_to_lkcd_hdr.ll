; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_s390_to_lkcd_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_s390_to_lkcd_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_hdr_s390 = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.dump_hdr_lkcd = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"zSeries-dump (CPUID = %16llx)\00", align 1
@DH_ARCH_ID_S390 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"s390\00", align 1
@DH_ARCH_ID_S390X = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"s390x\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@DUMP_MAGIC_NUMBER = common dso_local global i32 0, align 4
@DUMP_VERSION_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dump_hdr_s390*, %struct.dump_hdr_lkcd*)* @s390_to_lkcd_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_to_lkcd_hdr(%struct.dump_hdr_s390* %0, %struct.dump_hdr_lkcd* %1) #0 {
  %3 = alloca %struct.dump_hdr_s390*, align 8
  %4 = alloca %struct.dump_hdr_lkcd*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  store %struct.dump_hdr_s390* %0, %struct.dump_hdr_s390** %3, align 8
  store %struct.dump_hdr_lkcd* %1, %struct.dump_hdr_lkcd** %4, align 8
  %7 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %8 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 9048018124800000000
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 12
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, 1000000
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = srem i32 %19, 1000000
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %23 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %26 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %28 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %31 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %30, i32 0, i32 15
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %33 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %36 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %35, i32 0, i32 14
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %38 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %41 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %43 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %46 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 4
  %47 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %48 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %51 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %53 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %56 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @sprintf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %60 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DH_ARCH_ID_S390, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %2
  %65 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %66 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcpy(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %86

69:                                               ; preds = %2
  %70 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %71 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DH_ARCH_ID_S390X, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %77 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcpy(i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %85

80:                                               ; preds = %69
  %81 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %82 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @strcpy(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %88 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strcpy(i32 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %92 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strcpy(i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %96 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strcpy(i32 %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %100 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcpy(i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %104 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @strcpy(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @DUMP_MAGIC_NUMBER, align 4
  %108 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %109 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @DUMP_VERSION_NUMBER, align 4
  %111 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %112 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %114 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %113, i32 0, i32 0
  store i32 72, i32* %114, align 4
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %118 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dump_hdr_lkcd*, %struct.dump_hdr_lkcd** %4, align 8
  %123 = getelementptr inbounds %struct.dump_hdr_lkcd, %struct.dump_hdr_lkcd* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i64) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
