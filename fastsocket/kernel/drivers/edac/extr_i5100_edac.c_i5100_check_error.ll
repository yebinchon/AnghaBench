; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_check_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32 }

@I5100_FERR_NF_MEM = common dso_local global i32 0, align 4
@I5100_NERR_NF_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5100_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_check_error(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5100_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  store %struct.i5100_priv* %8, %struct.i5100_priv** %3, align 8
  %9 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %10 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I5100_FERR_NF_MEM, align 4
  %13 = call i32 @pci_read_config_dword(i32 %11, i32 %12, i64* %4)
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @i5100_ferr_nf_mem_any(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %1
  %18 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %19 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I5100_NERR_NF_MEM, align 4
  %22 = call i32 @pci_read_config_dword(i32 %20, i32 %21, i64* %5)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %27 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I5100_NERR_NF_MEM, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @pci_write_config_dword(i32 %28, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %25, %17
  %33 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %34 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I5100_FERR_NF_MEM, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @pci_write_config_dword(i32 %35, i32 %36, i64 %37)
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @i5100_ferr_nf_mem_chan_indx(i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @i5100_ferr_nf_mem_any(i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @i5100_nerr_nf_mem_any(i64 %44)
  %46 = call i32 @i5100_read_log(%struct.mem_ctl_info* %39, i32 %41, i64 %43, i32 %45)
  br label %47

47:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i64*) #1

declare dso_local i64 @i5100_ferr_nf_mem_any(i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

declare dso_local i32 @i5100_read_log(%struct.mem_ctl_info*, i32, i64, i32) #1

declare dso_local i32 @i5100_ferr_nf_mem_chan_indx(i64) #1

declare dso_local i32 @i5100_nerr_nf_mem_any(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
