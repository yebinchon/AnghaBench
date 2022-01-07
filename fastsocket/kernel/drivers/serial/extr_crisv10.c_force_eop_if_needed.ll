; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_force_eop_if_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_force_eop_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.e100_serial = type { i8*, i32, i32 }

@REG_STATUS = common dso_local global i64 0, align 8
@SER_ERROR_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"timeout err: rstat 0x%03X\0A\00", align 1
@SER_DATA_AVAIL_MASK = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"timeout: rstat 0x%03X\0A\00", align 1
@REG_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@ser_stat = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"timeout EOP %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e100_serial*)* @force_eop_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_eop_if_needed(%struct.e100_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e100_serial*, align 8
  %4 = alloca i8, align 1
  store %struct.e100_serial* %0, %struct.e100_serial** %3, align 8
  %5 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %6 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* @REG_STATUS, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %4, align 1
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @SER_ERROR_MASK, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %19 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %24 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  %28 = trunc i32 %27 to i8
  %29 = call i32 @DEBUG_LOG(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 zeroext %28)
  store i32 0, i32* %2, align 4
  br label %91

30:                                               ; preds = %1
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @SER_DATA_AVAIL_MASK, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %39 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %44 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 8
  %47 = or i32 %42, %46
  %48 = trunc i32 %47 to i8
  %49 = call i32 @DEBUG_LOG(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %48)
  %50 = call i32 @TIMERD(i32 %49)
  %51 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %52 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* @REG_DATA, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %58 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %60 = call i32 @START_FLUSH_FAST_TIMER(%struct.e100_serial* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

61:                                               ; preds = %30
  %62 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %63 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %61
  %67 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %68 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ser_stat, align 8
  %70 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %71 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = call i32 @PROCSTAT(i32 %76)
  %79 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %80 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %83 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = trunc i32 %84 to i8
  %86 = call i32 @DEBUG_LOG(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %85)
  %87 = call i32 @TIMERD(i32 %86)
  %88 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %89 = call i32 @FORCE_EOP(%struct.e100_serial* %88)
  br label %90

90:                                               ; preds = %66, %61
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %37, %17
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @DEBUG_LOG(i32, i8*, i8 zeroext) #1

declare dso_local i32 @TIMERD(i32) #1

declare dso_local i32 @START_FLUSH_FAST_TIMER(%struct.e100_serial*, i8*) #1

declare dso_local i32 @PROCSTAT(i32) #1

declare dso_local i32 @FORCE_EOP(%struct.e100_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
