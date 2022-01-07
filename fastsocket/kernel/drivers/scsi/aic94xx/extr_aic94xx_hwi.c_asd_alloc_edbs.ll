; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_alloc_edbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_alloc_edbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ASD_EDB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"num_edbs:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32)* @asd_alloc_edbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_alloc_edbs(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_seq_data*, align 8
  %7 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 0
  store %struct.asd_seq_data* %9, %struct.asd_seq_data** %6, align 8
  %10 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %11 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_5__** @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %19 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %18, i32 0, i32 1
  store %struct.TYPE_5__** %17, %struct.TYPE_5__*** %19, align 8
  %20 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %21 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = icmp ne %struct.TYPE_5__** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %102

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %31 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %36 = load i32, i32* @ASD_EDB_SIZE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.TYPE_5__* @asd_alloc_coherent(%struct.asd_ha_struct* %35, i32 %36, i32 %37)
  %39 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %40 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %46 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %47, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  br label %74

54:                                               ; preds = %34
  %55 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %56 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %57, i64 %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ASD_EDB_SIZE, align 4
  %65 = call i32 @memset(i32 %63, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %28

69:                                               ; preds = %28
  %70 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %71 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %3, align 4
  br label %102

74:                                               ; preds = %53
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %90, %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %82 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %83 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %81, %struct.TYPE_5__* %88)
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %7, align 4
  br label %77

93:                                               ; preds = %77
  %94 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %95 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %95, align 8
  %97 = call i32 @kfree(%struct.TYPE_5__** %96)
  %98 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %99 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %98, i32 0, i32 1
  store %struct.TYPE_5__** null, %struct.TYPE_5__*** %99, align 8
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %93, %69, %24
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_5__** @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @asd_alloc_coherent(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

declare dso_local i32 @asd_free_coherent(%struct.asd_ha_struct*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
