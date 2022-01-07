; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_adisc_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_adisc_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.mbx_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@MBX_IOCB_TYPE = common dso_local global i32 0, align 4
@MBC_GET_PORT_DATABASE = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.mbx_entry*)* @qla2x00_adisc_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_adisc_iocb(%struct.TYPE_7__* %0, %struct.mbx_entry* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.mbx_entry*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.mbx_entry* %1, %struct.mbx_entry** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %5, align 8
  %13 = load i32, i32* @MBX_IOCB_TYPE, align 4
  %14 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %15 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %18 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SET_TARGET_ID(%struct.qla_hw_data* %16, i32 %19, i32 %24)
  %26 = load i32, i32* @MBC_GET_PORT_DATABASE, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %29 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %31 = call i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %41 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @BIT_0, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %45 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  br label %58

46:                                               ; preds = %2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 8
  %53 = load i32, i32* @BIT_0, align 4
  %54 = or i32 %52, %53
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %57 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %46, %33
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MSW(i32 %61)
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %65 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @LSW(i32 %68)
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %72 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %74 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MSD(i32 %75)
  %77 = call i32 @MSW(i32 %76)
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %80 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MSD(i32 %83)
  %85 = call i32 @LSW(i32 %84)
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %88 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %98 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  ret void
}

declare dso_local i32 @SET_TARGET_ID(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data*) #1

declare dso_local i32 @MSW(i32) #1

declare dso_local i32 @LSW(i32) #1

declare dso_local i32 @MSD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
