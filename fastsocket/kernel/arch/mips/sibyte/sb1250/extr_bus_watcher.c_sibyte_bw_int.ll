; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/sb1250/extr_bus_watcher.c_sibyte_bw_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/sb1250/extr_bus_watcher.c_sibyte_bw_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_stats_struct = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@A_SCD_BUS_ERR_STATUS = common dso_local global i32 0, align 4
@A_BUS_L2_ERRORS = common dso_local global i32 0, align 4
@A_BUS_MEM_IO_ERRORS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@A_SCD_TRACE_CFG = common dso_local global i32 0, align 4
@A_SCD_TRACE_READ = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_FREEZE = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_RESET = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_START = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_START_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sibyte_bw_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sibyte_bw_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bw_stats_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1024 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bw_stats_struct*
  store %struct.bw_stats_struct* %9, %struct.bw_stats_struct** %5, align 8
  %10 = load i32, i32* @A_SCD_BUS_ERR_STATUS, align 4
  %11 = call i32 @IOADDR(i32 %10)
  %12 = call i8* @csr_in32(i32 %11)
  %13 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %14 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %13, i32 0, i32 10
  store i8* %12, i8** %14, align 8
  %15 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %16 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @A_BUS_L2_ERRORS, align 4
  %18 = call i32 @IOADDR(i32 %17)
  %19 = call i8* @csr_in32(i32 %18)
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %22 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @G_SCD_L2ECC_CORR_D(i64 %23)
  %25 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %26 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @G_SCD_L2ECC_BAD_D(i64 %31)
  %33 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %34 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @G_SCD_L2ECC_CORR_T(i64 %39)
  %41 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %42 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @G_SCD_L2ECC_BAD_T(i64 %47)
  %49 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %50 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i32, i32* @A_BUS_L2_ERRORS, align 4
  %56 = call i32 @IOADDR(i32 %55)
  %57 = call i32 @csr_out32(i32 0, i32 %56)
  %58 = load i32, i32* @A_BUS_MEM_IO_ERRORS, align 4
  %59 = call i32 @IOADDR(i32 %58)
  %60 = call i8* @csr_in32(i32 %59)
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %6, align 8
  %62 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %63 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @G_SCD_MEM_ECC_CORR(i64 %64)
  %66 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %67 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @G_SCD_MEM_ECC_BAD(i64 %72)
  %74 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %75 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @G_SCD_MEM_BUSERR(i64 %80)
  %82 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %83 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load i32, i32* @A_BUS_MEM_IO_ERRORS, align 4
  %89 = call i32 @IOADDR(i32 %88)
  %90 = call i32 @csr_out32(i32 0, i32 %89)
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %92 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %93 = call i32 @bw_print_buffer(i8* %91, %struct.bw_stats_struct* %92)
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %95 = call i32 (i8*, ...) @printk(i8* %94)
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %96
}

declare dso_local i8* @csr_in32(i32) #1

declare dso_local i32 @IOADDR(i32) #1

declare dso_local i64 @G_SCD_L2ECC_CORR_D(i64) #1

declare dso_local i64 @G_SCD_L2ECC_BAD_D(i64) #1

declare dso_local i64 @G_SCD_L2ECC_CORR_T(i64) #1

declare dso_local i64 @G_SCD_L2ECC_BAD_T(i64) #1

declare dso_local i32 @csr_out32(i32, i32) #1

declare dso_local i64 @G_SCD_MEM_ECC_CORR(i64) #1

declare dso_local i64 @G_SCD_MEM_ECC_BAD(i64) #1

declare dso_local i64 @G_SCD_MEM_BUSERR(i64) #1

declare dso_local i32 @bw_print_buffer(i8*, %struct.bw_stats_struct*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
