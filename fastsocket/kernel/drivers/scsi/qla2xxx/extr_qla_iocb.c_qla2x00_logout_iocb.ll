; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_logout_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_logout_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.mbx_entry = type { i8*, i8*, i8*, i8*, i8*, i32, i32 }

@MBX_IOCB_TYPE = common dso_local global i32 0, align 4
@MBC_LOGOUT_FABRIC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.mbx_entry*)* @qla2x00_logout_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_logout_iocb(%struct.TYPE_11__* %0, %struct.mbx_entry* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.mbx_entry*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.mbx_entry* %1, %struct.mbx_entry** %4, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %5, align 8
  %13 = load i32, i32* @MBX_IOCB_TYPE, align 4
  %14 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %15 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %18 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SET_TARGET_ID(%struct.qla_hw_data* %16, i32 %19, i32 %24)
  %26 = load i32, i32* @MBC_LOGOUT_FABRIC_PORT, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %29 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %31 = call i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @cpu_to_le16(i32 %38)
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 8
  %47 = call i8* @cpu_to_le16(i32 %46)
  br label %48

48:                                               ; preds = %40, %33
  %49 = phi i8* [ %39, %33 ], [ %47, %40 ]
  %50 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %51 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %61 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %69, %76
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %80 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %90 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  ret void
}

declare dso_local i32 @SET_TARGET_ID(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
