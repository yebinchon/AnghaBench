; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptspi.c_mptspi_getRP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptspi.c_mptspi_getRP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32 }

@MPI_SCSIDEVPAGE1_RP_IU = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_DT = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_QAS = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_HOLD_MCS = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_WR_FLOW = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_RD_STRM = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_RTI = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_PCOMP_EN = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_SHIFT_MIN_SYNC_PERIOD = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_MIN_SYNC_PERIOD_MASK = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_SHIFT_MAX_SYNC_OFFSET = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_MAX_SYNC_OFFSET_MASK = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_WIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @mptspi_getRP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptspi_getRP(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %5 = call i64 @spi_iu(%struct.scsi_target* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_IU, align 4
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %15 = call i64 @spi_dt(%struct.scsi_target* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_DT, align 4
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %25 = call i64 @spi_qas(%struct.scsi_target* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_QAS, align 4
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %35 = call i64 @spi_hold_mcs(%struct.scsi_target* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_HOLD_MCS, align 4
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %45 = call i64 @spi_wr_flow(%struct.scsi_target* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_WR_FLOW, align 4
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %55 = call i64 @spi_rd_strm(%struct.scsi_target* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_RD_STRM, align 4
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %65 = call i64 @spi_rti(%struct.scsi_target* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_RTI, align 4
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %75 = call i64 @spi_pcomp_en(%struct.scsi_target* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_PCOMP_EN, align 4
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %85 = call i32 @spi_period(%struct.scsi_target* %84)
  %86 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_SHIFT_MIN_SYNC_PERIOD, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_MIN_SYNC_PERIOD_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %93 = call i32 @spi_offset(%struct.scsi_target* %92)
  %94 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_SHIFT_MAX_SYNC_OFFSET, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_MAX_SYNC_OFFSET_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %101 = call i64 @spi_width(%struct.scsi_target* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %80
  %104 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_WIDE, align 4
  br label %106

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  %108 = load i32, i32* %3, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @spi_iu(%struct.scsi_target*) #1

declare dso_local i64 @spi_dt(%struct.scsi_target*) #1

declare dso_local i64 @spi_qas(%struct.scsi_target*) #1

declare dso_local i64 @spi_hold_mcs(%struct.scsi_target*) #1

declare dso_local i64 @spi_wr_flow(%struct.scsi_target*) #1

declare dso_local i64 @spi_rd_strm(%struct.scsi_target*) #1

declare dso_local i64 @spi_rti(%struct.scsi_target*) #1

declare dso_local i64 @spi_pcomp_en(%struct.scsi_target*) #1

declare dso_local i32 @spi_period(%struct.scsi_target*) #1

declare dso_local i32 @spi_offset(%struct.scsi_target*) #1

declare dso_local i64 @spi_width(%struct.scsi_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
