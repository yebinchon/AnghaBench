; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_update_idc_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_update_idc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@AF_INIT_DONE = common dso_local global i32 0, align 4
@QLA8XXX_CRB_DRV_ACTIVE = common dso_local global i32 0, align 4
@ql4xdontresethba = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_update_idc_reg(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %5 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @AF_INIT_DONE, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = bitcast {}** %16 to i32 (%struct.scsi_qla_host*)**
  %18 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %17, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = call i32 %18(%struct.scsi_qla_host* %19)
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %22 = call i32 @qla4_8xxx_set_drv_active(%struct.scsi_qla_host* %21)
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = call i64 @is_qla8032(%struct.scsi_qla_host* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %12
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = load i32, i32* @QLA8XXX_CRB_DRV_ACTIVE, align 4
  %29 = call i32 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @ql4xdontresethba, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %41 = call i32 @qla4_83xx_clear_idc_dontreset(%struct.scsi_qla_host* %40)
  br label %42

42:                                               ; preds = %39, %36, %26
  br label %43

43:                                               ; preds = %42, %12
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %45 = call i64 @is_qla8022(%struct.scsi_qla_host* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %49 = call i32 @qla4_82xx_set_idc_ver(%struct.scsi_qla_host* %48)
  br label %65

50:                                               ; preds = %43
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %52 = call i64 @is_qla8032(%struct.scsi_qla_host* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %56 = call i32 @qla4_83xx_set_idc_ver(%struct.scsi_qla_host* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @QLA_ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %62 = call i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host* %61)
  br label %63

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %47
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %67 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = bitcast {}** %69 to i32 (%struct.scsi_qla_host*)**
  %71 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %70, align 8
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %73 = call i32 %71(%struct.scsi_qla_host* %72)
  br label %74

74:                                               ; preds = %65, %11
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qla4_8xxx_set_drv_active(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4_83xx_clear_idc_dontreset(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_82xx_set_idc_ver(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_set_idc_ver(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
