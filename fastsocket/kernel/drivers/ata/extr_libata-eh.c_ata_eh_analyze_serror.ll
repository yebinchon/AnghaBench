; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_analyze_serror.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_analyze_serror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SERR_PERSISTENT = common dso_local global i32 0, align 4
@SERR_DATA = common dso_local global i32 0, align 4
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@SERR_PROTOCOL = common dso_local global i32 0, align 4
@AC_ERR_HSM = common dso_local global i32 0, align 4
@SERR_INTERNAL = common dso_local global i32 0, align 4
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4
@ATA_LFLAG_DISABLED = common dso_local global i32 0, align 4
@SERR_PHYRDY_CHG = common dso_local global i32 0, align 4
@SERR_DEV_XCHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*)* @ata_eh_analyze_serror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_eh_analyze_serror(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca %struct.ata_eh_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  %8 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %9 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %8, i32 0, i32 1
  store %struct.ata_eh_context* %9, %struct.ata_eh_context** %3, align 8
  %10 = load %struct.ata_eh_context*, %struct.ata_eh_context** %3, align 8
  %11 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SERR_PERSISTENT, align 4
  %16 = load i32, i32* @SERR_DATA, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @ATA_EH_RESET, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SERR_PROTOCOL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @AC_ERR_HSM, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @ATA_EH_RESET, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SERR_INTERNAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @AC_ERR_SYSTEM, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @ATA_EH_RESET, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %44, %39
  store i32 0, i32* %7, align 4
  %52 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %53 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATA_LFLAG_DISABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %60 = call i64 @ata_is_host_link(%struct.ata_link* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %51
  %63 = load i32, i32* @SERR_PHYRDY_CHG, align 4
  %64 = load i32, i32* @SERR_DEV_XCHG, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @SERR_PHYRDY_CHG, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.ata_eh_context*, %struct.ata_eh_context** %3, align 8
  %75 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %74, i32 0, i32 0
  %76 = call i32 @ata_ehi_hotplugged(%struct.TYPE_2__* %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ata_eh_context*, %struct.ata_eh_context** %3, align 8
  %80 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.ata_eh_context*, %struct.ata_eh_context** %3, align 8
  %86 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  ret void
}

declare dso_local i64 @ata_is_host_link(%struct.ata_link*) #1

declare dso_local i32 @ata_ehi_hotplugged(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
