; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_rediscover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_rediscover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"ex %016llx phy%d originated BROADCAST(CHANGE)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"phy%d part of wide port with phy%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32)* @sas_rediscover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_rediscover(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca %struct.ex_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 1
  store %struct.expander_device* %12, %struct.expander_device** %5, align 8
  %13 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %14 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %13, i32 0, i32 1
  %15 = load %struct.ex_phy*, %struct.ex_phy** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %15, i64 %17
  store %struct.ex_phy* %18, %struct.ex_phy** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %19 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @SAS_ADDR(i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %27 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @SAS_ADDR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %35 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %40 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %39, i32 0, i32 1
  %41 = load %struct.ex_phy*, %struct.ex_phy** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %41, i64 %43
  store %struct.ex_phy* %44, %struct.ex_phy** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %64

49:                                               ; preds = %38
  %50 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %51 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @SAS_ADDR(i32 %52)
  %54 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %55 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @SAS_ADDR(i32 %56)
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  store i32 0, i32* %9, align 4
  br label %67

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %32

67:                                               ; preds = %59, %32
  %68 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @sas_rediscover_dev(%struct.domain_device* %68, i32 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %76

72:                                               ; preds = %2
  %73 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @sas_discover_new(%struct.domain_device* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_rediscover_dev(%struct.domain_device*, i32, i32) #1

declare dso_local i32 @sas_discover_new(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
