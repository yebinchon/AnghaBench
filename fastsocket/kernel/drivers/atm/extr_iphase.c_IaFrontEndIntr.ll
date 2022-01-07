; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_IaFrontEndIntr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_IaFrontEndIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FE_25MBIT_PHY = common dso_local global i32 0, align 4
@MB25_IS_GSB = common dso_local global i32 0, align 4
@FE_DS3_PHY = common dso_local global i32 0, align 4
@SUNI_DS3_LOSV = common dso_local global i32 0, align 4
@FE_E3_PHY = common dso_local global i32 0, align 4
@SUNI_E3_LOS = common dso_local global i32 0, align 4
@SUNI_LOSV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IA: SUNI carrier detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"IA: SUNI carrier lost signal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @IaFrontEndIntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IaFrontEndIntr(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FE_25MBIT_PHY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load volatile i32, i32* %20, align 4
  %22 = load i32, i32* @MB25_IS_GSB, align 4
  %23 = and i32 %21, %22
  %24 = call i8* @Boolean(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %101

27:                                               ; preds = %1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FE_DS3_PHY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load volatile i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load volatile i32, i32* %43, align 4
  %45 = load i32, i32* @SUNI_DS3_LOSV, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i8* @Boolean(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %100

53:                                               ; preds = %27
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FE_E3_PHY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load volatile i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load volatile i32, i32* %69, align 4
  %71 = load i32, i32* @SUNI_E3_LOS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i8* @Boolean(i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %99

79:                                               ; preds = %53
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %3, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load volatile i32, i32* %85, align 4
  %87 = and i32 %86, 255
  store i32 %87, i32* %6, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load volatile i32, i32* %89, align 4
  %91 = load i32, i32* @SUNI_LOSV, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i8* @Boolean(i32 %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %79, %60
  br label %100

100:                                              ; preds = %99, %34
  br label %101

101:                                              ; preds = %100, %14
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %110

108:                                              ; preds = %101
  %109 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  ret void
}

declare dso_local i8* @Boolean(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
