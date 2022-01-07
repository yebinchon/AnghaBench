; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_read_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@I5100_VALIDLOG = common dso_local global i32 0, align 4
@I5100_REDMEMA = common dso_local global i32 0, align 4
@I5100_REDMEMB = common dso_local global i32 0, align 4
@I5100_RECMEMA = common dso_local global i32 0, align 4
@I5100_RECMEMB = common dso_local global i32 0, align 4
@I5100_NRECMEMA = common dso_local global i32 0, align 4
@I5100_NRECMEMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32, i32)* @i5100_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_read_log(%struct.mem_ctl_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i5100_priv*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %23 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %22, i32 0, i32 0
  %24 = load %struct.i5100_priv*, %struct.i5100_priv** %23, align 8
  store %struct.i5100_priv* %24, %struct.i5100_priv** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.i5100_priv*, %struct.i5100_priv** %9, align 8
  %29 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %28, i32 0, i32 1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %29, align 8
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.i5100_priv*, %struct.i5100_priv** %9, align 8
  %33 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %32, i32 0, i32 0
  %34 = load %struct.pci_dev*, %struct.pci_dev** %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi %struct.pci_dev* [ %30, %27 ], [ %34, %31 ]
  store %struct.pci_dev* %36, %struct.pci_dev** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %38 = load i32, i32* @I5100_VALIDLOG, align 4
  %39 = call i32 @pci_read_config_dword(%struct.pci_dev* %37, i32 %38, i32* %11)
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @i5100_validlog_redmemvalid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %45 = load i32, i32* @I5100_REDMEMA, align 4
  %46 = call i32 @pci_read_config_dword(%struct.pci_dev* %44, i32 %45, i32* %12)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %49 = load i32, i32* @I5100_REDMEMB, align 4
  %50 = call i32 @pci_read_config_dword(%struct.pci_dev* %48, i32 %49, i32* %12)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @i5100_redmemb_ecc_locator(i32 %51)
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %43, %35
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @i5100_validlog_recmemvalid(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %53
  %58 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %59 = load i32, i32* @I5100_RECMEMA, align 4
  %60 = call i32 @pci_read_config_dword(%struct.pci_dev* %58, i32 %59, i32* %12)
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @i5100_recmema_merr(i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @i5100_recmema_bank(i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @i5100_recmema_rank(i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %68 = load i32, i32* @I5100_RECMEMB, align 4
  %69 = call i32 @pci_read_config_dword(%struct.pci_dev* %67, i32 %68, i32* %12)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @i5100_recmemb_cas(i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @i5100_recmemb_ras(i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %7, align 4
  %78 = call i8* @i5100_err_msg(i32 %77)
  store i8* %78, i8** %20, align 8
  br label %82

79:                                               ; preds = %57
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @i5100_err_msg(i32 %80)
  store i8* %81, i8** %20, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i8*, i8** %20, align 8
  %91 = call i32 @i5100_handle_ce(%struct.mem_ctl_info* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i8* %90)
  br label %92

92:                                               ; preds = %82, %53
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @i5100_validlog_nrecmemvalid(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %92
  %97 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %98 = load i32, i32* @I5100_NRECMEMA, align 4
  %99 = call i32 @pci_read_config_dword(%struct.pci_dev* %97, i32 %98, i32* %12)
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @i5100_nrecmema_merr(i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @i5100_nrecmema_bank(i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @i5100_nrecmema_rank(i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %107 = load i32, i32* @I5100_NRECMEMB, align 4
  %108 = call i32 @pci_read_config_dword(%struct.pci_dev* %106, i32 %107, i32* %12)
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @i5100_nrecmemb_cas(i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @i5100_nrecmemb_ras(i32 %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %96
  %116 = load i32, i32* %7, align 4
  %117 = call i8* @i5100_err_msg(i32 %116)
  store i8* %117, i8** %21, align 8
  br label %121

118:                                              ; preds = %96
  %119 = load i32, i32* %8, align 4
  %120 = call i8* @i5100_err_msg(i32 %119)
  store i8* %120, i8** %21, align 8
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i8*, i8** %21, align 8
  %130 = call i32 @i5100_handle_ue(%struct.mem_ctl_info* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %121, %92
  %132 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %133 = load i32, i32* @I5100_VALIDLOG, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @pci_write_config_dword(%struct.pci_dev* %132, i32 %133, i32 %134)
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @i5100_validlog_redmemvalid(i32) #1

declare dso_local i32 @i5100_redmemb_ecc_locator(i32) #1

declare dso_local i64 @i5100_validlog_recmemvalid(i32) #1

declare dso_local i32 @i5100_recmema_merr(i32) #1

declare dso_local i32 @i5100_recmema_bank(i32) #1

declare dso_local i32 @i5100_recmema_rank(i32) #1

declare dso_local i32 @i5100_recmemb_cas(i32) #1

declare dso_local i32 @i5100_recmemb_ras(i32) #1

declare dso_local i8* @i5100_err_msg(i32) #1

declare dso_local i32 @i5100_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @i5100_validlog_nrecmemvalid(i32) #1

declare dso_local i32 @i5100_nrecmema_merr(i32) #1

declare dso_local i32 @i5100_nrecmema_bank(i32) #1

declare dso_local i32 @i5100_nrecmema_rank(i32) #1

declare dso_local i32 @i5100_nrecmemb_cas(i32) #1

declare dso_local i32 @i5100_nrecmemb_ras(i32) #1

declare dso_local i32 @i5100_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
