; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_rx_sense_carrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_rx_sense_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ene_device = type { i32, i64 }

@ev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENE_CIRCAR_PRD = common dso_local global i32 0, align 4
@ENE_CIRCAR_HPRD = common dso_local global i32 0, align 4
@ENE_CIRCAR_PRD_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RX: hardware carrier period = %02x\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"RX: hardware carrier pulse period = %02x\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"RX: sensed carrier = %d Hz, duty cycle %d%%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ene_rx_sense_carrier(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca { i64, i32 }, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %8 = bitcast { i64, i32 }* %3 to i8*
  %9 = bitcast %struct.TYPE_4__* @ev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DEFINE_IR_RAW_EVENT(i64 %11, i32 %13)
  %15 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %16 = load i32, i32* @ENE_CIRCAR_PRD, align 4
  %17 = call i32 @ene_read_reg(%struct.ene_device* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %19 = load i32, i32* @ENE_CIRCAR_HPRD, align 4
  %20 = call i32 @ene_read_reg(%struct.ene_device* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ENE_CIRCAR_PRD_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %59

26:                                               ; preds = %1
  %27 = load i32, i32* @ENE_CIRCAR_PRD_VALID, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %59

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 2000000, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 100
  %43 = load i32, i32* %6, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %49 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %34
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ev, i32 0, i32 0), align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ev, i32 0, i32 1), align 4
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ev, i32 0, i32 2), align 4
  %55 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %56 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ir_raw_event_store(i32 %57, %struct.TYPE_4__* @ev)
  br label %59

59:                                               ; preds = %25, %33, %52, %34
  ret void
}

declare dso_local i32 @DEFINE_IR_RAW_EVENT(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @ir_raw_event_store(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
