; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_login_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_login_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mbx_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@MBX_IOCB_TYPE = common dso_local global i32 0, align 4
@MBC_LOGIN_FABRIC_PORT = common dso_local global i32 0, align 4
@SRB_LOGIN_COND_PLOGI = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@SRB_LOGIN_SKIP_PRLI = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.mbx_entry*)* @qla2x00_login_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_login_iocb(%struct.TYPE_17__* %0, %struct.mbx_entry* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.mbx_entry*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.srb_iocb*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.mbx_entry* %1, %struct.mbx_entry** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store %struct.srb_iocb* %17, %struct.srb_iocb** %6, align 8
  %18 = load i32, i32* @MBX_IOCB_TYPE, align 4
  %19 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %20 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %23 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SET_TARGET_ID(%struct.qla_hw_data* %21, i32 %24, i32 %29)
  %31 = load i32, i32* @MBC_LOGIN_FABRIC_PORT, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %34 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %36 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SRB_LOGIN_COND_PLOGI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @BIT_0, align 4
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  store i32 %47, i32* %7, align 4
  %48 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %49 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SRB_LOGIN_SKIP_PRLI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @BIT_1, align 4
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %64 = call i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %74 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %78 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %91

79:                                               ; preds = %59
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %90 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %79, %66
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %101 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %109, %116
  %118 = call i8* @cpu_to_le16(i32 %117)
  %119 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %120 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %130 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
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
