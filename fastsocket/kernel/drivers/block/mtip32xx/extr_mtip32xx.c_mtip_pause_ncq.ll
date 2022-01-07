; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pause_ncq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pause_ncq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i8*, i32, %struct.TYPE_2__*, i64, %struct.host_to_dev_fis* }
%struct.TYPE_2__ = type { i32 }
%struct.host_to_dev_fis = type { i32, i32 }

@RX_FIS_D2H_REG = common dso_local global i32 0, align 4
@PORT_TFDATA = common dso_local global i64 0, align 8
@ATA_CMD_SEC_ERASE_UNIT = common dso_local global i32 0, align 4
@MTIP_DDF_SEC_LOCK_BIT = common dso_local global i32 0, align 4
@ATA_CMD_SEC_ERASE_PREP = common dso_local global i32 0, align 4
@MTIP_PF_SE_ACTIVE_BIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@ATA_CMD_DOWNLOAD_MICRO = common dso_local global i32 0, align 4
@MTIP_PF_DM_ACTIVE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*, %struct.host_to_dev_fis*)* @mtip_pause_ncq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_pause_ncq(%struct.mtip_port* %0, %struct.host_to_dev_fis* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtip_port*, align 8
  %5 = alloca %struct.host_to_dev_fis*, align 8
  %6 = alloca %struct.host_to_dev_fis*, align 8
  %7 = alloca i64, align 8
  store %struct.mtip_port* %0, %struct.mtip_port** %4, align 8
  store %struct.host_to_dev_fis* %1, %struct.host_to_dev_fis** %5, align 8
  %8 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %9 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %8, i32 0, i32 4
  %10 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %9, align 8
  %11 = load i32, i32* @RX_FIS_D2H_REG, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i64 %12
  store %struct.host_to_dev_fis* %13, %struct.host_to_dev_fis** %6, align 8
  %14 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %15 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PORT_TFDATA, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @readl(i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %21 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATA_CMD_SEC_ERASE_UNIT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @MTIP_DDF_SEC_LOCK_BIT, align 4
  %27 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %28 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @clear_bit(i32 %26, i32* %30)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, 1
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %113

37:                                               ; preds = %32
  %38 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %39 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATA_CMD_SEC_ERASE_PREP, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i32, i32* @MTIP_PF_SE_ACTIVE_BIT, align 4
  %45 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %46 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %45, i32 0, i32 1
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @MTIP_DDF_SEC_LOCK_BIT, align 4
  %49 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %50 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %48, i32* %52)
  %54 = load i8*, i8** @jiffies, align 8
  %55 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %56 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  store i32 1, i32* %3, align 4
  br label %113

57:                                               ; preds = %37
  %58 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %59 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATA_CMD_DOWNLOAD_MICRO, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %65 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* @MTIP_PF_DM_ACTIVE_BIT, align 4
  %70 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %71 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %70, i32 0, i32 1
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  %73 = load i8*, i8** @jiffies, align 8
  %74 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %75 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  store i32 1, i32* %3, align 4
  br label %113

76:                                               ; preds = %63, %57
  %77 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %78 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ATA_CMD_SEC_ERASE_UNIT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %107, label %82

82:                                               ; preds = %76
  %83 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %84 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 252
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %89 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 39
  br i1 %91, label %107, label %92

92:                                               ; preds = %87
  %93 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %94 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 114
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %99 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 98
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %104 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 38
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %97, %92, %87, %76
  %108 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %109 = call i32 @mtip_restart_port(%struct.mtip_port* %108)
  store i32 0, i32* %3, align 4
  br label %113

110:                                              ; preds = %102, %82
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %107, %68, %43, %36
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mtip_restart_port(%struct.mtip_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
