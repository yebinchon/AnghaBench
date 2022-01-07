; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_pio_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_pio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_2__*, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Spurious PIO IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"count: %08x offset: %08x flags %08x\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@CTL_SD_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @tmio_mmc_pio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_pio_irq(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %7, i32 0, i32 2
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %3, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %11 = icmp ne %struct.mmc_data* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %16 = call i32 @tmio_mmc_kmap_atomic(%struct.tmio_mmc_host* %15, i64* %6)
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %16, %19
  %21 = zext i32 %20 to i64
  %22 = inttoptr i64 %21 to i16*
  store i16* %22, i16** %4, align 8
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %14
  %38 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %14
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %44 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MMC_DATA_READ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %58 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %59 = load i16*, i16** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = lshr i32 %60, 1
  %62 = call i32 @sd_ctrl_read16_rep(%struct.tmio_mmc_host* %57, i32 %58, i16* %59, i32 %61)
  br label %70

63:                                               ; preds = %41
  %64 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %65 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %66 = load i16*, i16** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = lshr i32 %67, 1
  %69 = call i32 @sd_ctrl_write16_rep(%struct.tmio_mmc_host* %64, i32 %65, i16* %66, i32 %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %73 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %77 = call i32 @tmio_mmc_kunmap_atomic(%struct.tmio_mmc_host* %76, i64* %6)
  %78 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %79 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %82 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %70
  %88 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %89 = call i32 @tmio_mmc_next_sg(%struct.tmio_mmc_host* %88)
  br label %90

90:                                               ; preds = %87, %70
  br label %91

91:                                               ; preds = %90, %12
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @tmio_mmc_kmap_atomic(%struct.tmio_mmc_host*, i64*) #1

declare dso_local i32 @sd_ctrl_read16_rep(%struct.tmio_mmc_host*, i32, i16*, i32) #1

declare dso_local i32 @sd_ctrl_write16_rep(%struct.tmio_mmc_host*, i32, i16*, i32) #1

declare dso_local i32 @tmio_mmc_kunmap_atomic(%struct.tmio_mmc_host*, i64*) #1

declare dso_local i32 @tmio_mmc_next_sg(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
