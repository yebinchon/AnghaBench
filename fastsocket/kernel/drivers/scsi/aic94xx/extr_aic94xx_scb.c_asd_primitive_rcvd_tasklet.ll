; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_primitive_rcvd_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_primitive_rcvd_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { %struct.asd_phy*, %struct.sas_ha_struct }
%struct.asd_phy = type { i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy*, i32)*, %struct.asd_sas_phy.0** }
%struct.asd_sas_phy = type opaque
%struct.asd_sas_phy.0 = type { i32, i32 }
%struct.done_list_struct = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"phy%d: BROADCAST change received:%d\0A\00", align 1
@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"phy%d: unknown BREAK\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"phy%d: primitive reg:0x%x, cont:0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"phy%d: HARD_RESET primitive rcvd\0A\00", align 1
@PORTE_HARD_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unknown primitive register:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ascb*, %struct.done_list_struct*, i32)* @asd_primitive_rcvd_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_primitive_rcvd_tasklet(%struct.asd_ascb* %0, %struct.done_list_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca %struct.done_list_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca %struct.asd_sas_phy.0*, align 8
  %10 = alloca %struct.asd_ha_struct*, align 8
  %11 = alloca %struct.asd_phy*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.asd_ascb* %0, %struct.asd_ascb** %4, align 8
  store %struct.done_list_struct* %1, %struct.done_list_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %15 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %14, i32 0, i32 0
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %15, align 8
  %17 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %16, i32 0, i32 1
  store %struct.sas_ha_struct* %17, %struct.sas_ha_struct** %8, align 8
  %18 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %19 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %18, i32 0, i32 1
  %20 = load %struct.asd_sas_phy.0**, %struct.asd_sas_phy.0*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %20, i64 %22
  %24 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %23, align 8
  store %struct.asd_sas_phy.0* %24, %struct.asd_sas_phy.0** %9, align 8
  %25 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %26 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %25, i32 0, i32 0
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %26, align 8
  store %struct.asd_ha_struct* %27, %struct.asd_ha_struct** %10, align 8
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %29 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %28, i32 0, i32 0
  %30 = load %struct.asd_phy*, %struct.asd_phy** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %30, i64 %32
  store %struct.asd_phy* %33, %struct.asd_phy** %11, align 8
  %34 = load %struct.done_list_struct*, %struct.done_list_struct** %5, align 8
  %35 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.done_list_struct*, %struct.done_list_struct** %5, align 8
  %40 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, 3
  %46 = mul nsw i32 %45, 8
  %47 = shl i32 %43, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, -4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %106 [
    i32 130, label %51
    i32 129, label %85
  ]

51:                                               ; preds = %3
  %52 = load i32, i32* %13, align 4
  switch i32 %52, label %79 [
    i32 135, label %53
    i32 134, label %53
    i32 133, label %53
    i32 132, label %53
    i32 128, label %76
  ]

53:                                               ; preds = %51, %51, %51, %51
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %9, align 8
  %58 = getelementptr inbounds %struct.asd_sas_phy.0, %struct.asd_sas_phy.0* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ffs(i32 %61)
  %63 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %9, align 8
  %64 = getelementptr inbounds %struct.asd_sas_phy.0, %struct.asd_sas_phy.0* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %9, align 8
  %66 = getelementptr inbounds %struct.asd_sas_phy.0, %struct.asd_sas_phy.0* %65, i32 0, i32 0
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %70 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %69, i32 0, i32 0
  %71 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %70, align 8
  %72 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %9, align 8
  %73 = bitcast %struct.asd_sas_phy.0* %72 to %struct.asd_sas_phy*
  %74 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %75 = call i32 %71(%struct.asd_sas_phy* %73, i32 %74)
  br label %84

76:                                               ; preds = %51
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %84

79:                                               ; preds = %51
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %76, %53
  br label %113

85:                                               ; preds = %3
  %86 = load i32, i32* %13, align 4
  switch i32 %86, label %100 [
    i32 131, label %87
  ]

87:                                               ; preds = %85
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %91 = load %struct.asd_phy*, %struct.asd_phy** %11, align 8
  %92 = call i32 @asd_deform_port(%struct.asd_ha_struct* %90, %struct.asd_phy* %91)
  %93 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %94 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %93, i32 0, i32 0
  %95 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %94, align 8
  %96 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %9, align 8
  %97 = bitcast %struct.asd_sas_phy.0* %96 to %struct.asd_sas_phy*
  %98 = load i32, i32* @PORTE_HARD_RESET, align 4
  %99 = call i32 %95(%struct.asd_sas_phy* %97, i32 %98)
  br label %105

100:                                              ; preds = %85
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %87
  br label %113

106:                                              ; preds = %3
  %107 = load %struct.done_list_struct*, %struct.done_list_struct** %5, align 8
  %108 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %106, %105, %84
  ret void
}

declare dso_local i32 @ASD_DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @asd_deform_port(%struct.asd_ha_struct*, %struct.asd_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
