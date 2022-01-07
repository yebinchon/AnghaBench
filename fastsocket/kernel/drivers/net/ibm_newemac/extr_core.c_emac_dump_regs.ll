; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, i32 }
%struct.emac_ethtool_regs_subhdr = type { i32, i32 }

@EMAC_FTR_EMAC4 = common dso_local global i32 0, align 4
@EMAC4_ETHTOOL_REGS_VER = common dso_local global i32 0, align 4
@EMAC_ETHTOOL_REGS_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.emac_instance*, i8*)* @emac_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emac_dump_regs(%struct.emac_instance* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.emac_instance*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.emac_ethtool_regs_subhdr*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.emac_ethtool_regs_subhdr*
  store %struct.emac_ethtool_regs_subhdr* %8, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %9 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %10 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %13 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %15 = load i32, i32* @EMAC_FTR_EMAC4, align 4
  %16 = call i64 @emac_has_feature(%struct.emac_instance* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @EMAC4_ETHTOOL_REGS_VER, align 4
  %20 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %21 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %23 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %22, i64 1
  %24 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %25 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %28 = call i32 @EMAC4_ETHTOOL_REGS_SIZE(%struct.emac_instance* %27)
  %29 = call i32 @memcpy_fromio(%struct.emac_ethtool_regs_subhdr* %23, i32 %26, i32 %28)
  %30 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %31 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %30, i64 1
  %32 = bitcast %struct.emac_ethtool_regs_subhdr* %31 to i8*
  %33 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %34 = call i32 @EMAC4_ETHTOOL_REGS_SIZE(%struct.emac_instance* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %32, i64 %35
  store i8* %36, i8** %3, align 8
  br label %56

37:                                               ; preds = %2
  %38 = load i32, i32* @EMAC_ETHTOOL_REGS_VER, align 4
  %39 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %40 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %42 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %41, i64 1
  %43 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %44 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %47 = call i32 @EMAC_ETHTOOL_REGS_SIZE(%struct.emac_instance* %46)
  %48 = call i32 @memcpy_fromio(%struct.emac_ethtool_regs_subhdr* %42, i32 %45, i32 %47)
  %49 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %6, align 8
  %50 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %49, i64 1
  %51 = bitcast %struct.emac_ethtool_regs_subhdr* %50 to i8*
  %52 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %53 = call i32 @EMAC_ETHTOOL_REGS_SIZE(%struct.emac_instance* %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %51, i64 %54
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %37, %18
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i64 @emac_has_feature(%struct.emac_instance*, i32) #1

declare dso_local i32 @memcpy_fromio(%struct.emac_ethtool_regs_subhdr*, i32, i32) #1

declare dso_local i32 @EMAC4_ETHTOOL_REGS_SIZE(%struct.emac_instance*) #1

declare dso_local i32 @EMAC_ETHTOOL_REGS_SIZE(%struct.emac_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
