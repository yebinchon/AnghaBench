; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_biosparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_biosparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.block_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ips_biosparam\00", align 1
@IPS_INTR_ON = common dso_local global i32 0, align 4
@IPS_NORM_HEADS = common dso_local global i32 0, align 4
@IPS_NORM_SECTORS = common dso_local global i32 0, align 4
@IPS_COMP_HEADS = common dso_local global i32 0, align 4
@IPS_COMP_SECTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Geometry: heads: %d, sectors: %d, cylinders: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* @ips_biosparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_biosparam(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %75

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = load i32, i32* @IPS_INTR_ON, align 4
  %33 = call i32 @ips_read_adapter_status(%struct.TYPE_7__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %75

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 4194304
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @IPS_NORM_HEADS, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @IPS_NORM_SECTORS, align 4
  store i32 %49, i32* %12, align 4
  br label %53

50:                                               ; preds = %39, %36
  %51 = load i32, i32* @IPS_COMP_HEADS, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @IPS_COMP_SECTORS, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %55, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @DEBUG_VAR(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %53, %35, %29, %23
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @ips_read_adapter_status(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
