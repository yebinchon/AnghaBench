; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_intr_copperhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_intr_copperhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__, %struct.TYPE_17__, i32 }
%struct.TYPE_15__ = type { {}*, {}* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ips_intr\00", align 1
@TRUE = common dso_local global i64 0, align 8
@IPS_MAX_CMDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_intr_copperhead(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %8 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2)
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = icmp ne %struct.TYPE_19__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %77

18:                                               ; preds = %12
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_19__*)**
  %23 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %22, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = call i32 %23(%struct.TYPE_19__* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %77

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %63, %62, %29
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %30
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %4, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.TYPE_19__*)**
  %40 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = call i32 %40(%struct.TYPE_19__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %76

46:                                               ; preds = %33
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = bitcast {}** %49 to i32 (%struct.TYPE_19__*)**
  %51 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %50, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = call i32 %51(%struct.TYPE_19__* %52)
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IPS_MAX_CMDS, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %30

63:                                               ; preds = %55
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = call i32 @ips_chkstatus(%struct.TYPE_19__* %64, %struct.TYPE_20__* %6)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %5, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = call i32 %72(%struct.TYPE_19__* %73, %struct.TYPE_18__* %74)
  br label %30

76:                                               ; preds = %45, %30
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %28, %17, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @ips_chkstatus(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
