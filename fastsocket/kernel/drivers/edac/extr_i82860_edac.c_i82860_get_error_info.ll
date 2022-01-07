; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82860_edac.c_i82860_get_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82860_edac.c_i82860_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i82860_error_info = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@I82860_ERRSTS = common dso_local global i32 0, align 4
@I82860_EAP = common dso_local global i32 0, align 4
@I82860_DERRCTL_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i82860_error_info*)* @i82860_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82860_get_error_info(%struct.mem_ctl_info* %0, %struct.i82860_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i82860_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.i82860_error_info* %1, %struct.i82860_error_info** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @I82860_ERRSTS, align 4
  %12 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %13 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %12, i32 0, i32 0
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 %11, i32* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = load i32, i32* @I82860_EAP, align 4
  %17 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %18 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %17, i32 0, i32 3
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %15, i32 %16, i32* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* @I82860_DERRCTL_STS, align 4
  %22 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %23 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %22, i32 0, i32 1
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %20, i32 %21, i32* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* @I82860_ERRSTS, align 4
  %27 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %28 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %27, i32 0, i32 2
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i32 %26, i32* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* @I82860_ERRSTS, align 4
  %32 = call i32 @pci_write_bits16(%struct.pci_dev* %30, i32 %31, i32 3, i32 3)
  %33 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %34 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  br label %60

39:                                               ; preds = %2
  %40 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %41 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %44 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %42, %45
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = load i32, i32* @I82860_EAP, align 4
  %52 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %53 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %52, i32 0, i32 3
  %54 = call i32 @pci_read_config_dword(%struct.pci_dev* %50, i32 %51, i32* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = load i32, i32* @I82860_DERRCTL_STS, align 4
  %57 = load %struct.i82860_error_info*, %struct.i82860_error_info** %4, align 8
  %58 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %57, i32 0, i32 1
  %59 = call i32 @pci_read_config_word(%struct.pci_dev* %55, i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %38, %49, %39
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_bits16(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
