; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_get_linkrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_get_linkrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i8*, i8*, i8*, i8*, i32, %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i8*, i32, i32, %struct.sas_port* }
%struct.sas_port = type { i32 }

@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, %struct.domain_device*, %struct.ex_phy*)* @sas_ex_get_linkrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_ex_get_linkrate(%struct.domain_device* %0, %struct.domain_device* %1, %struct.ex_phy* %2) #0 {
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca %struct.ex_phy*, align 8
  %7 = alloca %struct.expander_device*, align 8
  %8 = alloca %struct.sas_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store %struct.domain_device* %1, %struct.domain_device** %5, align 8
  store %struct.ex_phy* %2, %struct.ex_phy** %6, align 8
  %11 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 5
  store %struct.expander_device* %12, %struct.expander_device** %7, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 0
  store i8* null, i8** %14, align 8
  %15 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %16 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %15, i32 0, i32 4
  %17 = load %struct.sas_port*, %struct.sas_port** %16, align 8
  store %struct.sas_port* %17, %struct.sas_port** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %82, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.expander_device*, %struct.expander_device** %7, align 8
  %21 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %18
  %25 = load %struct.expander_device*, %struct.expander_device** %7, align 8
  %26 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %25, i32 0, i32 1
  %27 = load %struct.ex_phy*, %struct.ex_phy** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %27, i64 %29
  store %struct.ex_phy* %30, %struct.ex_phy** %10, align 8
  %31 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %32 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PHY_VACANT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %24
  %37 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %38 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %24
  br label %82

43:                                               ; preds = %36
  %44 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %45 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @SAS_ADDR(i32 %46)
  %48 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %49 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @SAS_ADDR(i32 %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %43
  %54 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %55 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %58 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @min(i8* %56, i8* %59)
  %61 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %62 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %64 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %67 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @max(i8* %65, i8* %68)
  %70 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %71 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %73 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  %76 = load %struct.sas_port*, %struct.sas_port** %8, align 8
  %77 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %78 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sas_port_add_phy(%struct.sas_port* %76, i32 %79)
  br label %81

81:                                               ; preds = %53, %43
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %18

85:                                               ; preds = %18
  %86 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %87 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %90 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @min(i8* %88, i8* %91)
  %93 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %94 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %96 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %99 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @min(i8* %97, i8* %100)
  %102 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %103 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  ret void
}

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i32 @sas_port_add_phy(%struct.sas_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
