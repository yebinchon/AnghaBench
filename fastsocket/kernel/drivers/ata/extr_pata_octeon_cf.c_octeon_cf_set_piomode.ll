; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.octeon_cf_data* }
%struct.octeon_cf_data = type { i32, i64 }
%struct.ata_device = type { i32 }
%union.cvmx_mio_boot_reg_timx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64, i64, i64 }
%struct.ata_timing = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @octeon_cf_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_cf_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.octeon_cf_data*, align 8
  %6 = alloca %union.cvmx_mio_boot_reg_timx, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_timing, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %19, align 8
  store %struct.octeon_cf_data* %20, %struct.octeon_cf_data** %5, align 8
  %21 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %5, align 8
  %22 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = call i64 (...) @octeon_get_clock_rate()
  %25 = sdiv i64 2000000000000, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @ata_timing_compute(%struct.ata_device* %27, i32 %30, %struct.ata_timing* %9, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 (...) @BUG()
  br label %37

37:                                               ; preds = %35, %2
  %38 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = call i8* @ns_to_tim_reg(i32 2, i32 20)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %71, %73
  %75 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %74, %76
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %69
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @octeon_cf_set_boot_reg_cfg(i32 %86)
  %88 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %5, align 8
  %89 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @octeon_cf_set_boot_reg_cfg(i32 %94)
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %98 = call i32 @ata_pio_need_iordy(%struct.ata_device* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %99)
  %101 = call i32 @cvmx_read_csr(i32 %100)
  %102 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to i32*
  store i32 %101, i32* %102, align 8
  %103 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 12
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 11
  store i64 0, i64* %109, align 8
  %110 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 10
  store i64 0, i64* %111, align 8
  %112 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 9
  store i64 0, i64* %113, align 8
  %114 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 8
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %11, align 4
  %123 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %14, align 4
  %126 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %14, align 4
  %129 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = call i8* @ns_to_tim_reg(i32 2, i32 5)
  %132 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  %134 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_4__*
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %136)
  %138 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to i32*
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @cvmx_write_csr(i32 %137, i32 %139)
  %141 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %5, align 8
  %142 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %96
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  %148 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %147)
  %149 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to i32*
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @cvmx_write_csr(i32 %148, i32 %150)
  br label %152

152:                                              ; preds = %145, %96
  ret void
}

declare dso_local i64 @octeon_get_clock_rate(...) #1

declare dso_local i64 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i8* @ns_to_tim_reg(i32, i32) #1

declare dso_local i32 @octeon_cf_set_boot_reg_cfg(i32) #1

declare dso_local i32 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_REG_TIMX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
