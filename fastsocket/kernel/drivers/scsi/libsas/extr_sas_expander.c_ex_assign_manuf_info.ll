; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_ex_assign_manuf_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_ex_assign_manuf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.sas_rphy* }
%struct.sas_rphy = type { i32 }
%struct.sas_expander_device = type { i32, i32, i32, i32, i32, i32 }

@SAS_EXPANDER_VENDOR_ID_LEN = common dso_local global i32 0, align 4
@SAS_EXPANDER_PRODUCT_ID_LEN = common dso_local global i32 0, align 4
@SAS_EXPANDER_PRODUCT_REV_LEN = common dso_local global i32 0, align 4
@SAS_EXPANDER_COMPONENT_VENDOR_ID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, i8*)* @ex_assign_manuf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ex_assign_manuf_info(%struct.domain_device* %0, i8* %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sas_rphy*, align 8
  %7 = alloca %struct.sas_expander_device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 0
  %12 = load %struct.sas_rphy*, %struct.sas_rphy** %11, align 8
  store %struct.sas_rphy* %12, %struct.sas_rphy** %6, align 8
  %13 = load %struct.sas_rphy*, %struct.sas_rphy** %6, align 8
  %14 = call %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy* %13)
  store %struct.sas_expander_device* %14, %struct.sas_expander_device** %7, align 8
  %15 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %16 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 12
  %20 = load i32, i32* @SAS_EXPANDER_VENDOR_ID_LEN, align 4
  %21 = call i32 @memcpy(i32 %17, i32* %19, i32 %20)
  %22 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %23 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 20
  %27 = load i32, i32* @SAS_EXPANDER_PRODUCT_ID_LEN, align 4
  %28 = call i32 @memcpy(i32 %24, i32* %26, i32 %27)
  %29 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %30 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 36
  %34 = load i32, i32* @SAS_EXPANDER_PRODUCT_REV_LEN, align 4
  %35 = call i32 @memcpy(i32 %31, i32* %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %2
  %42 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %43 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 40
  %47 = load i32, i32* @SAS_EXPANDER_COMPONENT_VENDOR_ID_LEN, align 4
  %48 = call i32 @memcpy(i32 %44, i32* %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 48
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 49
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %58 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 50
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %63 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %41, %2
  ret void
}

declare dso_local %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
